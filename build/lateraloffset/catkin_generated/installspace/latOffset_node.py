#!/usr/bin/env python

import numpy as np
from math import sin,cos,sqrt,atan2
from copy import deepcopy

# TF stuff
from tf.transformations import quaternion_from_euler as qfe
import tf2_ros
from tf2_geometry_msgs import PointStamped as Tf2PointStamped

# ROS stuff
import message_filters
import rospy

# ROS standard messages
from std_msgs.msg import Float32MultiArray,Float32
from nav_msgs.msg import Path
from geometry_msgs.msg import PoseStamped,TransformStamped,Quaternion,Vector3

# ROS custom messages
from drtk.msg import DrtkOutput
from tdcp.msg import TdcpOutput
from lateraloffset.msg import PathDiagnostics

# ROS services
from wgs_conversions.srv import WgsConversion

# path generator class
from relativePathGeneration.relativePathGeneration import PathGenerator

class relativePathGenerator():

    def __init__(self):
        self.drtkMsg = DrtkOutput()
        self.tdcpMsg = TdcpOutput()
        self.setupRosParams()
        self.setupRosServices()
        self.setupMessageInterface()
        self.setupPathGenClass()


    def setupRosServices(self):

        # WGS Conversion Services
        try:
            rospy.wait_for_service('xyz2enu_vel',timeout=5.0)
            rospy.wait_for_service('xyz2enu_cov',timeout=5.0)
        except rospy.ServiceException as exc:
            print("Timeout looking for wgs-conversions services" + str(exc))

    def setupPathGenClass(self):
        # Make this a user parameter!!!!!!!!!!
        # Node Class Parameters
        timeStep = rospy.get_param('~gps_time_step',0.5)
        minWaypointSpacing = rospy.get_param('~min_waypoint_spacing',1.0)
        maxPathLength = rospy.get_param('~max_path_length',100)
        # Class instance
        self.pg = PathGenerator(timeStep,minWaypointSpacing,maxPathLength)
            

    def setupRosParams(self):
        """ Save ROS parameters into class variables """

        # This will probably have to be changed by user
        # Global reference positions
        self.ref_lat = rospy.get_param('latitude_reference',32.5955)
        self.ref_lon = rospy.get_param('longitude_reference',-85.2954)

        # Leader tf prefix
        self.leaderTfPrefix = rospy.get_param('~leader_tf_prefix',"remote")

        # Node Class Booleans
        self.selfFollowing = rospy.get_param('~self_following',False)
        self.doBaseLinkTransform = rospy.get_param('~transform_path_to_base_link',True)
        self.doGpsTimeHeaderStamp = rospy.get_param('~stamp_with_gps_time',False)
        self.doLeadTfBroadcast = rospy.get_param('~broadcast_lead_tf',True)
        # self.useRemoteTdcp = rospy.get_param('~use_remote_tdcp',False)
        self.useRemoteTdcp = False

    def setupMessageInterface(self):
        """ Setup ROS publisher, subscriber, and message filters """

        self.__unlock()

        # Topic Names
        drtkTopic = rospy.get_param('~drtk_topic',"/drtk_node/drtk_output")
        tdcpLocalTopic = rospy.get_param('~tdcp_local_topic',"/tdcp_node/tdcp_output")

        # Message Interface Parameters
        queueSize = rospy.get_param('~queue_size',10)
        cacheSize = rospy.get_param('~cache_size',10)
        self.maxTimeOffset = rospy.get_param('~max_time_offset',0.25)

        # Publishers
        self.path_pub = rospy.Publisher("~path",PathDiagnostics,queue_size=queueSize)

        # ROS Message Filters
        drtk_sub = message_filters.Subscriber(drtkTopic,DrtkOutput)

        # Message Filter Caches
        self.drtk_cache = message_filters.Cache(drtk_sub,cache_size=cacheSize)
        
        # Sync Variables
        self.latestTdcpLocalMsg = TdcpOutput()
        self.newTdcpLocalFlag = 0

        # ROS Subscriber
        tdcp_local_sub = rospy.Subscriber(tdcpLocalTopic,TdcpOutput,self.tdcpLocalCallback,queue_size=queueSize)


        # ROS Timer    
        rospy.Timer(rospy.Duration(0.05), self.tick)

        self.stopwatch = 0.0

    def findMsgAtTime(self,cache,time):
        for msg in cache.cache_msgs:
            if msg.gpsTime.gps_seconds == time:
                return msg  

    def tdcpLocalCallback(self,msg):

        self.__lock()
        
        self.stopwatch = 0.0

        if self.newTdcpLocalFlag:
            rospy.logwarn('path generator is lagging')
            # still have a tdcp hanging around 
            gpst = self.latestTdcpLocalMsg.gpsTime.gps_seconds
            drtkMsg = self.findMsgAtTime(self.drtk_cache,gpst)
            if not drtkMsg:
                print(' DRTK cache did not work')
                drtkMsg = self.drtkNanMessage()
            self.syncCallback(self.latestTdcpLocalMsg,drtkMsg)

        self.latestTdcpLocalMsg = msg
        self.newTdcpLocalFlag = 1
        
        self.__unlock() 

        
    def syncCallback(self,tdcpLocalMsg,drtkMsg):

        self.newTdcpLocalFlag = 0

        gpsTime = tdcpLocalMsg.gpsTime.gps_seconds
        gpsWeek = tdcpLocalMsg.gpsTime.gps_week
        # Rotate inputs into ENU
        odomLocal,odomLocalCov = \
        self.getLocalLevelRpv(tdcpLocalMsg.rpvEcef,tdcpLocalMsg.rpvEcefCovariance) # Use this for future point calc
        
        rpv,rpvCov = \
        self.getLocalLevelRpv(drtkMsg.rpvEcef,drtkMsg.rpvFixedIntegerCov)
        
        # Use local TDCP to approximate yaw
        if np.linalg.norm(odomLocal) > 0.5:
            self.lockedCourse = atan2(odomLocal[1],odomLocal[0])

        # Path update
        self.pg.pathUpdate(odomLocal,odomLocalCov,
                        -rpv,rpvCov,
                        gpsTime)

        # Find 3 closest waypoints ( success )
        orderedRPVMatrix, pathBoolean, orderedCovarianceMatrix = self.pg.waypointFinder(self)      

        if pathBoolean:
            # Compute future point

            futurePoint = self.futurePointCalc(odomLocal) 

            # Fix the quadrant to use the correct waypoints for lateral error computation
            offset, offsetVariance, closestBodyFrameRPV, localOffset_Y = self.pg.quadrantCheck(futurePoint, orderedRPVMatrix, orderedCovarianceMatrix)                    
            curveInverse = self.pg.curvatureCalc(orderedRPVMatrix)       
            # print(curveInverse)     


        # Need to create a unique message containing various path parameters:
        # lateral offset, menger curvature rating, offset uncertainty
        # Header time
        if self.doGpsTimeHeaderStamp:
            now = rospy.Time(gpsTime)
        else:
            now = tdcpLocalMsg.header.stamp
        if now > rospy.Time.now():
            now = rospy.Time.now() 

        # Check to see if path has been established and is trusted
        if pathBoolean:
            self.publishPathVariables(now,offset,offsetVariance,closestBodyFrameRPV,curveInverse,localOffset_Y,gpsTime,gpsWeek)


    def futurePointCalc(self, odomLocal):
        futurePoint = np.zeros(2)
        lookAheadDist = 1
        slope = odomLocal[1]/odomLocal[0]
        futurePoint[0] = lookAheadDist*sqrt(lookAheadDist/(lookAheadDist + pow(slope,2)))
        futurePoint[1] = slope*lookAheadDist*sqrt(lookAheadDist/(lookAheadDist + pow(slope,2)))
        return futurePoint

    def getLocalLevelRpv(self,rpvEcef,rpvEcefCov):

        if np.isnan(rpvEcef.x):
            return np.matrix([rpvEcef.x]*3).T,np.matrix(np.ones((3,3)))

        # rotate rpv to ENU
        xyz2enu_vel = rospy.ServiceProxy('xyz2enu_vel', WgsConversion)

        rsp = xyz2enu_vel(xyz=(rpvEcef.x,rpvEcef.y,rpvEcef.z),ref_lla=(self.ref_lat,self.ref_lon,0.0))
        (de,dn,du)=rsp.enu

        rpvEnu = np.array([de,dn,du])

        # rotate rpv covariance to ENU
        xyz2enu_cov = rospy.ServiceProxy('xyz2enu_cov', WgsConversion)

        rsp = xyz2enu_cov(xyz_cov=rpvEcefCov,ref_lla=(self.ref_lat,self.ref_lon,0.0))

        rpvEnuCov = np.matrix([ [rsp.enu_cov[0],rsp.enu_cov[1],rsp.enu_cov[2]],
                                [rsp.enu_cov[3],rsp.enu_cov[4],rsp.enu_cov[5]],
                                [rsp.enu_cov[6],rsp.enu_cov[7],rsp.enu_cov[8]] ])

        return rpvEnu,rpvEnuCov  

    def tick(self,event):
        
        try:
            expected_dt = event.current_expected.to_sec() - event.last_expected.to_sec()
        except:
            return

        self.__lock()

        # All is based around local tdcp since it is the least likely to miss
        if not self.newTdcpLocalFlag:
            self.__unlock()
            return

        # Accumulate time since receiving local tdcp message
        self.stopwatch += event.current_expected.to_sec() - event.last_expected.to_sec()

        # Get remote messages
        gpst = self.latestTdcpLocalMsg.gpsTime.gps_seconds

        drtkMsg = self.findMsgAtTime(self.drtk_cache,gpst)

        # Check if we have sufficient remote messages
        if drtkMsg:
            self.syncCallback(self.latestTdcpLocalMsg,drtkMsg)
        
        # check if the alloted time has expired
            # elif self.stopwatch > self.maxTimeOffset:
            #     # rospy.logwarn('path node timeout waiting for remote messages - ' +
            #     #               'expect missing waypoint')
        if not drtkMsg:
            # rospy.logwarn('missing drtk at gps time = %f'%(gpst))
            drtkMsg = self.drtkNanMessage()        
            #self.syncCallback(self.latestTdcpLocalMsg,tdcpRemoteMsg,drtkMsg)

        self.__unlock()  

    def drtkNanMessage(self):
        nanMsg = DrtkOutput()
        nanMsg.rpvEcef                    = self.vectorNanMessage()
        nanMsg.rpvFixedInteger            = self.vectorNanMessage()
        nanMsg.rpvFloatInteger            = self.vectorNanMessage()
        nanMsg.rpvDifferentialPseudorange = self.vectorNanMessage()
        nanMsg.rpvPositionDifference      = self.vectorNanMessage()
        return nanMsg     

    def vectorNanMessage(self):
        nanMsg = Vector3()
        nanMsg.x = np.nan
        nanMsg.y = np.nan
        nanMsg.z = np.nan
        return nanMsg                     

    def __lock(self):
        # Hold until external processing is completed
        while self.isProcessing and not rospy.is_shutdown():
            pass
        self.isProcessing = True

    def __unlock(self):
     self.isProcessing = False

    def publishPathVariables(self,stamp,offset,offsetVariance,closestBodyFrameRPV,curveInverse,localOffset_Y,gpsTime,gpsWeek):

        pathDiagnosticsMsg = PathDiagnostics()

        pathDiagnosticsMsg.header.stamp = stamp
        pathDiagnosticsMsg.gpsTime.gps_seconds = gpsTime
        pathDiagnosticsMsg.gpsTime.gps_week = gpsWeek
        pathDiagnosticsMsg.curvatureRating = curveInverse
        pathDiagnosticsMsg.lateralOffset = localOffset_Y  # This should be normal offset but due to connection issue
        pathDiagnosticsMsg.localBodyFrameRPV = closestBodyFrameRPV
        pathDiagnosticsMsg.offsetVariance = offsetVariance
        # pathDiagnosticsMsg.localOffset = localOffset_Y
        self.path_pub.publish(pathDiagnosticsMsg)

    
       


def main():
  rospy.init_node('lateralOffset_Calculator_node', anonymous=True)
  
  node = relativePathGenerator() 
  rate = rospy.Rate(5)


  try:
    while not rospy.is_shutdown():
      rospy.spin()
  except KeyboardInterrupt:
    print("Shutting down")
    
if __name__ == '__main__':
  main()