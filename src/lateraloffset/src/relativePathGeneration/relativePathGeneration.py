#!/usr/bin/env python
"""
Created on Jan 29th, 2019
@author: Dan Pierce
revamped: Christian Campos-Vega
   Description:
    

    Note: assumes follower odom is always available

To do:
  - Fault rejection

"""

import sys
from math import acos,sin,cos,pi,atan2,sqrt
from copy import deepcopy

import numpy as np
from scipy.linalg import norm,inv

from scipy.linalg import block_diag as blkdiag

from copy import deepcopy


class PathElement:
  def __init__(self,rpv=np.zeros(3),rpvCov=np.matrix(np.eye(3)),time=0.0):
    self.relativePosition = deepcopy(rpv)
    self.relativePositionCovariance = deepcopy(rpvCov)
    self.time = time
    self.pathDistance = None
    self.curvature = 0.0
    self.tangentDirection = 0.0
    self.isStationary = False
    self.precedesDropout = False

class PathGenerator():
  def __init__(self,
               timeStep=0.5,
               minWaypointSpacing=1.0,
               maxPathLength=20,
               selfFollowing=0,
               normalizedInnovationThreshold=999.0):

    minPathLength = 0
    if selfFollowing:
      minPathLength = 100

    # --- Class parameters
    self.prm = {'timeStep': timeStep,
                'maxPathLength': maxPathLength,
                'minPathLength': minPathLength,
                'minWaypointSpacing': minWaypointSpacing,
                'minSpeedForCourse': 0.5,
                'normalizedInnovationThreshold': normalizedInnovationThreshold,
                'selfFollowing': selfFollowing}
    
    # --- Class variables
    self.__initClassVariables()

  " getPath "
  def getPath(self):
    return self.path

  " getPathSize "
  def getPathSize(self):
    return len(self.path)

  def getUpdateBooleans(self):
    return self.odomLocalUpdateBool,self.rpvUpdateBool

  " getNormalizedInnovation "
  def getNormalizedInnovation(self):
    return self.normalizedInnovation

  " getPathVariance "
  def getPathVariance(self):
    
    if len(self.path)==0:
      return np.nan
    
    return self.path[0].relativePositionCovariance.trace()
 
  def getLateralPathOffset(self):
    # Need to incorporate lat error function but first:
    #1) Mimic MATLAB functinoality: find three closest waypoints in path point vector
    #2) Find quadrant of the needed waypoints
    #3) Compute lat error real time
    print('Inside lat offset function')

    # TODO: move to more general path_utils library

    if len(self.path)<2:
      return 0.0

    # given a point, p0=[x0,y0], and a line segment, l=[[x1,y1],[x2,y2]], in 2d space, find a point, p,
    #     on the line that is closest to p0
    x0 = 0.0 # since the path points are relative 
    y0 = 0.0
    x1 = self.path[0].relativePosition[0]
    y1 = self.path[0].relativePosition[1]
    x2 = self.path[1].relativePosition[0]
    y2 = self.path[1].relativePosition[1]

    k = ((y2-y1) * (x0-x1) - (x2-x1) * (y0-y1)) / (pow(y2-y1,2) + pow(x2-x1,2))
    xp =  - k * (y2-y1) + x0
    yp =  k * (x2-x1) + y0

    projectedPoint = np.array([xp,yp])

    return np.sign(k)*norm(projectedPoint)

  " pathUpdate "
  def pathUpdate(self,odomLocal,odomLocalCov,rpv,rpvCov,time):

    # --- reset class variable
    self.normalizedInnovation = np.nan
    self.odomLocalUpdateBool = False
    self.rpvUpdateBool = False

    # --- prep inputs
    [odomLocal,odomLocalCov,time] = self.__prepInputs(odomLocal,odomLocalCov,time)
    [rpv,rpvCov,time] = self.__prepInputs(rpv,rpvCov,time)

    # --- check if local odom is valid
    if self.timeLast is not None and len(self.path) is not 0:
      dt = time - self.timeLast
      if dt != self.prm['timeStep']:
        self.__initClassVariables()
        print('missed local odom - clearing path')

    if np.isnan(odomLocal[0]):
      return

    self.timeLast = time

    self.odomLocalUpdateBool = True

    # --- calculate local vehicle's direction of travel for trimming path
    avgSpeed = norm(odomLocal)/self.prm['timeStep']
    if avgSpeed > self.prm['minSpeedForCourse']:
      self.psi = atan2(odomLocal[1],odomLocal[0])

    # --- check if path has been initialized
    if len(self.path) is 0:
      if np.isnan(rpv[0]):
        return
      else:
        self.path.append( PathElement(rpv,rpvCov,time) )
        # The first path point is the current drtk rpv
        self.rpvUpdateBool = True
        return

    # --- Update all positions and covariances
    for pe in self.path:
      # This dot notation picks out the individual 3-D rpv in order to update it with locl odom
      pe.relativePosition -= odomLocal
      pe.relativePositionCovariance += odomLocalCov

    # --- Initialize variables used for remote path updates
    leadRpv = None
    self.normalizedInnovation = 0.0

    # --- Get RPV to leader
    if not np.isnan(rpv[0]):
      if leadRpv is None:
        # If we can't make a prediction, but have rpv, then set new RPV
        leadRpv = rpv
        leadRpvCov = rpvCov

        self.rpvUpdateBool = True
      else:
        # If we can make a prediction and have rpv, then check the normalized 
        #   innovation. If it passes test, then set new RPV. 
        #
        #   NOTE: this assumes that remote odometry is reliable and does not 
        #     contain faults. Turns out this is a bad assumption for remote 
        #     TDCP. Spikes in remote odom will result in high normalized 
        #     innovation at which point the leadRpv from odomRemote is used 
        #     instead and the path will spike. Better approach would be to
        #     reject faulty measurements based on path curvature.
        innov = np.matrix(rpv - leadRpv).T
        S = rpvCov + leadRpvCov
        self.normalizedInnovation = pow(np.asscalar( innov.T*inv(S)*innov ),0.5)

        if self.normalizedInnovation < self.prm['normalizedInnovationThreshold']:
          leadRpv = rpv
          leadRpvCov = rpvCov

          self.rpvUpdateBool = True

    # --- Check if we got RPV to leader
    if leadRpv is None:
      self.path[-1].precedesDropout = True
      return

    lastPathRpv = self.path[-1].relativePosition

    # --- Check min waypoint spacing condition
    if norm(leadRpv-lastPathRpv) > self.prm['minWaypointSpacing']:
      # Sets new 1st path point with current DRTK rpv
      self.path.append( PathElement(leadRpv,leadRpvCov,time) )

      # --- Update Path Curvatures
      self.__trimPath(self.path)
      
    else:

      self.path[-1].isStationary = True  
    
    return

  def waypointFinder(self,path):
    pathBoolean = False
    indexArray = np.zeros(len(self.path))
    normArray = np.zeros(len(self.path))
    indexedRPV = np.zeros(3)
    orderedRPVMatrix = np.array([[0,0,0],[0,0,0],[0,0,0]], dtype=np.float64)
    orderedCovarianceMatrix = np.array([[0,0,0],[0,0,0],[0,0,0]], dtype=np.float64)
    if len(self.path) > 3:
      for i in range(len(self.path)):
        indexArray[i] = i
        indexedRPV = self.path[i].relativePosition
        normArray[i] = np.linalg.norm(indexedRPV)
      # Sorts the path index based on rpv norm
      pathBoolean = True
      Z = [x for _,x in sorted(zip(normArray,indexArray))]    
      # Waypoint Organization
      orderedRPVMatrix[0] = self.path[int(Z[0])].relativePosition
      orderedRPVMatrix[1] = self.path[int(Z[1])].relativePosition
      orderedRPVMatrix[2] = self.path[int(Z[2])].relativePosition
      # Covariance Organization
      orderedCovarianceMatrix[0] = np.diag(self.path[int(Z[0])].relativePositionCovariance)
      orderedCovarianceMatrix[1] = np.diag(self.path[int(Z[1])].relativePositionCovariance)
      orderedCovarianceMatrix[2] = np.diag(self.path[int(Z[2])].relativePositionCovariance)

    return orderedRPVMatrix, pathBoolean, orderedCovarianceMatrix

  def curvatureCalc(self, orderedRPVMatrix):
    pA = np.zeros(3)
    pB = np.zeros(3)
    pC = np.zeros(3)


    firstWP = orderedRPVMatrix[0]
    secondWP = orderedRPVMatrix[1]
    thirdWP = orderedRPVMatrix[2]

    pA = firstWP
    pA[2] = 0
    pB = secondWP
    pB[2] = 0
    pC = thirdWP
    pC[2] = 0

    AB = pB - pA
    AC = pC - pA

    areaTriangle = np.linalg.norm(np.cross(AB,AC)/2)
    side1 = np.linalg.norm(pB - pA)
    side2 = np.linalg.norm(pC - pB)
    side3 = np.linalg.norm(pA - pC)

    curveInverse = 4*areaTriangle/(side1*side2*side3)

    return curveInverse

    


  def quadrantCheck(self, futurePoint, orderedRPVMatrix, orderedCovarianceMatrix):
    vector_1 = futurePoint
    vector_2 = orderedRPVMatrix[1]
    vector_3 = orderedRPVMatrix[2]
    # vector_trial = np.array([orderedRPVMatrix[0,0:2]]).T

    closestWP = np.array([orderedRPVMatrix[0,0:2]]).T
    secondClosestWP = np.array([orderedRPVMatrix[1,0:2]]).T
    thirdClosestWP = np.array([orderedRPVMatrix[2,0:2]]).T


    print("Inside Quad check")

    futureQuadrant = self.quadLoop(vector_1)
    secondQuadrant = self.quadLoop(vector_2)
    thirdQuadrant = self.quadLoop(vector_3)

    Cnb = self.__rot2d(self.psi).T

    # closestBodyFrameRPV_ = np.dot(Cnb, vector_trial)
    closestBodyFrameRPV = np.dot(Cnb, closestWP)
    secondClosestBodyFrameRPV = np.dot(Cnb, secondClosestWP)
    thirdClosestBodyFrameRPV = np.dot(Cnb, thirdClosestWP)


    # print("Body Frame RPV:")
    # print("Closest WP:", str(closestBodyFrameRPV),".")
    # print("Second Closest WP:", str(secondClosestBodyFrameRPV),".")
    # print("Third Closest WP:", str(thirdClosestBodyFrameRPV),".")



    if futureQuadrant == secondQuadrant:
      offset = self.computeLateralOffset(vector_3, vector_2)
      localOffset_X, localOffset_Y = self.computeLateralOffset_Trial(closestBodyFrameRPV,secondClosestBodyFrameRPV,thirdClosestBodyFrameRPV)
      offsetVariance = orderedCovarianceMatrix[1] + orderedCovarianceMatrix[2]
      print("Lateral Error:")
      print(offset)
      

    elif futureQuadrant == thirdQuadrant:
      offset = self.computeLateralOffset(vector_2, vector_3)
      localOffset_X, localOffset_Y = self.computeLateralOffset_Trial(closestBodyFrameRPV,secondClosestBodyFrameRPV,thirdClosestBodyFrameRPV)
      offsetVariance = orderedCovarianceMatrix[1] + orderedCovarianceMatrix[2]
      # Add menger curvature rating later
      print("Lateral Error:")
      print(offset)
    
    return offset, offsetVariance, closestBodyFrameRPV, localOffset_Y

  def computeLateralOffset(self, vector1, vector2):
    # Leader Posiitons
    leadPositionNext = vector1
    leadPositionPrevious = vector2

    # Follower Position
    followerPosition = np.zeros(2)

    leadSlope = (leadPositionNext[1] - leadPositionPrevious[1])/(leadPositionNext[0] - leadPositionPrevious[0])
    leadIntercept = leadPositionNext[1] - leadSlope*leadPositionNext[0]

    followerSlope = -1/leadSlope
    followerIntercept = 0

    xIntercept = -leadIntercept/(leadSlope - followerSlope)
    yIntercept = leadSlope*xIntercept + leadIntercept

    offset = sqrt(pow(xIntercept,2) + pow(yIntercept,2))

    return offset

  def computeLateralOffset_Trial(self, vector1, vector2, vector3):
      # Leader Posiitons
      rpvAlpha = vector1
      rpvBeta = vector2
      rpvCharlie = vector3

      if np.sign(rpvAlpha[0]) > 0 and np.sign(rpvBeta[0]) < 0:
        leadPositionNext = vector1
        leadPositionPrevious = vector2

        # Follower Position
        followerPosition = np.zeros(2)

        leadSlope = (leadPositionNext[1] - leadPositionPrevious[1])/(leadPositionNext[0] - leadPositionPrevious[0])
        leadIntercept = leadPositionNext[1] - leadSlope*leadPositionNext[0]

        followerSlope = -1/leadSlope
        followerIntercept = 0

        xIntercept = -leadIntercept/(leadSlope - followerSlope)
        yIntercept = leadSlope*xIntercept + leadIntercept

        print("Alpha --> Beta:")
        print(xIntercept,yIntercept)                
      elif np.sign(rpvBeta[0]) > 0 and np.sign(rpvAlpha[0]) < 0:
        leadPositionNext = vector2
        leadPositionPrevious = vector1

        # Follower Position
        followerPosition = np.zeros(2)

        leadSlope = (leadPositionNext[1] - leadPositionPrevious[1])/(leadPositionNext[0] - leadPositionPrevious[0])
        leadIntercept = leadPositionNext[1] - leadSlope*leadPositionNext[0]

        followerSlope = -1/leadSlope
        followerIntercept = 0

        xIntercept = -leadIntercept/(leadSlope - followerSlope)
        yIntercept = leadSlope*xIntercept + leadIntercept 

        print("Beta --> Alpha:") 
        print(xIntercept,yIntercept)  
      else: # Case where third point must be used
        leadPositionNext = vector1
        leadPositionPrevious = vector3

        # Follower Position
        followerPosition = np.zeros(2)

        leadSlope = (leadPositionNext[1] - leadPositionPrevious[1])/(leadPositionNext[0] - leadPositionPrevious[0])
        leadIntercept = leadPositionNext[1] - leadSlope*leadPositionNext[0]

        followerSlope = -1/leadSlope
        followerIntercept = 0

        xIntercept = -leadIntercept/(leadSlope - followerSlope)
        yIntercept = leadSlope*xIntercept + leadIntercept 

        print("Alpha --> Charlie:") 
        print(xIntercept,yIntercept)        



      return xIntercept,yIntercept    



  def quadLoop(self, vector):

    if vector[0] > 0 and vector[1] > 0:
      quadrant = 1
    elif vector[0] > 0 and vector[1] < 0:
      quadrant = 3
    elif vector[0] < 0 and vector[1] > 0:
      quadrant = 2
    elif vector[0] < 0 and vector[1] < 0:
      quadrant = 4
    else:
      print('Error finding RPV quadrant')



  def __getitem__(self, i):
    p = self.path[i].relativePosition[0:2]
    return p


  def __initClassVariables(self):
    self.timeLast = None
    self.psi = None
    self.normalizedInnovation = np.nan
    self.odomLocalUpdateBool = False
    self.rpvUpdateBool = False
    self.path = []

  
  " trimPath "
  def __trimPath(self,path):

    if self.psi is None:
      return

    Cnb = self.__rot2d(self.psi).T

    while len(path) > 1:
      firstPt = Cnb.dot(path[1].relativePosition[0:2])
      if self.__pathTrimCondition(firstPt,len(path)):
        path.pop(0)
      else:
        return

  def __pathTrimCondition(self,firstPt,pathLen):
    
    if pathLen > self.prm['maxPathLength']:
      return True

    # --- Condition 1: have passed first waypoint

    C1 = firstPt[0] < 0.0

    # --- Condition 2: have enough waypoints
    C2 = pathLen > self.prm['minPathLength']

    # --- Condition 3: we're close enough to close the loop
    if self.prm['selfFollowing']:
      C3 = norm(firstPt) < 20.0
    else:
      C3 = True

    return C1 and C2 and C3

  " angleBetweenVectors "
  def __angleBetweenVectors(self,v1,v2):
    return acos( v1.T.dot(v2)/( norm(v1)*norm(v2) ) )
  
  # def __calculatePathDistances(self,path):
  #   return

  " prepInputs "
  def __prepInputs(self,y,R,time):
    # make sure y and R are both matrices of correct shape
    # if y.shape == (self.nx,):
    #   y = np.matrix(y).T
    R = np.matrix(R)

    # make sure time is of correct resolution
    time = self.prm['timeStep']*round(time/self.prm['timeStep'])

    return y,R,time

  " rot2d "
  def __rot2d(self,psi):
    Cbn = np.array([[cos(psi),-sin(psi)],
                     [sin(psi),cos(psi)]])
    return Cbn

  " find "
  def __find(self,listOfBools):
    return [idx for (idx, element) in enumerate(listOfBools) if element]

def main(args):
  path_generator = PathGenerator()
  
if __name__ == '__main__':
  main(sys.argv)