;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::RepoStatus)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'RepoStatus (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::REPOSTATUS")
  (make-package "ROS_SENSOR_MSGS::REPOSTATUS"))

(in-package "ROS")
;;//! \htmlinclude RepoStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_sensor_msgs::RepoStatus
  :super ros::object
  :slots (_header _tags _localNode _remoteNodes ))

(defmethod ros_sensor_msgs::RepoStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:tags __tags) (instance ros_sensor_msgs::Tags :init))
    ((:localNode __localNode) (instance ros_sensor_msgs::NodeStatus :init))
    ((:remoteNodes __remoteNodes) (let (r) (dotimes (i 0) (push (instance ros_sensor_msgs::NodeStatus :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _tags __tags)
   (setq _localNode __localNode)
   (setq _remoteNodes __remoteNodes)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:tags
   (&rest __tags)
   (if (keywordp (car __tags))
       (send* _tags __tags)
     (progn
       (if __tags (setq _tags (car __tags)))
       _tags)))
  (:localNode
   (&rest __localNode)
   (if (keywordp (car __localNode))
       (send* _localNode __localNode)
     (progn
       (if __localNode (setq _localNode (car __localNode)))
       _localNode)))
  (:remoteNodes
   (&rest __remoteNodes)
   (if (keywordp (car __remoteNodes))
       (send* _remoteNodes __remoteNodes)
     (progn
       (if __remoteNodes (setq _remoteNodes (car __remoteNodes)))
       _remoteNodes)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; ros_sensor_msgs/Tags _tags
    (send _tags :serialization-length)
    ;; ros_sensor_msgs/NodeStatus _localNode
    (send _localNode :serialization-length)
    ;; ros_sensor_msgs/NodeStatus[] _remoteNodes
    (apply #'+ (send-all _remoteNodes :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; ros_sensor_msgs/Tags _tags
       (send _tags :serialize s)
     ;; ros_sensor_msgs/NodeStatus _localNode
       (send _localNode :serialize s)
     ;; ros_sensor_msgs/NodeStatus[] _remoteNodes
     (write-long (length _remoteNodes) s)
     (dolist (elem _remoteNodes)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; ros_sensor_msgs/Tags _tags
     (send _tags :deserialize buf ptr-) (incf ptr- (send _tags :serialization-length))
   ;; ros_sensor_msgs/NodeStatus _localNode
     (send _localNode :deserialize buf ptr-) (incf ptr- (send _localNode :serialization-length))
   ;; ros_sensor_msgs/NodeStatus[] _remoteNodes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _remoteNodes (let (r) (dotimes (i n) (push (instance ros_sensor_msgs::NodeStatus :init) r)) r))
     (dolist (elem- _remoteNodes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ros_sensor_msgs::RepoStatus :md5sum-) "73c189982339de9347415b23f31f460b")
(setf (get ros_sensor_msgs::RepoStatus :datatype-) "ros_sensor_msgs/RepoStatus")
(setf (get ros_sensor_msgs::RepoStatus :definition-)
      "std_msgs/Header   header
Tags              tags
NodeStatus        localNode
NodeStatus[]      remoteNodes
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: ros_sensor_msgs/Tags
## Header structure for user defined data messages

GpsTime        gpsTime
SensorType     sensor
ReceiverType   receiver   # String to specify GNSS receiver type
KeyStatus      key
string         sensorName
SourceType     source
bool           dataValid
AssuranceLevel assuranceLevel
================================================================================
MSG: ros_sensor_msgs/GpsTime
## GPS time structure
uint32          gps_week        # Full GPS week from (0:0:00 Jan 06, 1980)
float64         gps_seconds     # GPS seconds into week [sec]
================================================================================
MSG: ros_sensor_msgs/SensorType
## Sensor Type

uint8 SensorTypeUnknown = 0
uint8 SensorTypeGps     = 1
uint8 SensorTypeGlonass = 2
uint8 SensorTypeGalileo = 4
uint8 SensorTypeImu     = 8
uint8 SensorRfRange     = 16
uint8 SensorTypeVision  = 32

uint8 type
================================================================================
MSG: ros_sensor_msgs/ReceiverType
uint8 RECEIVER_TYPE_UBLOX = 0
uint8 RECEIVER_TYPE_NOVATEL = 1
uint8 RECEIVER_TYPE_DAGR = 2
uint8 RECEIVER_TYPE_MICROGRAM = 3
uint8 RECEIVER_TYPE_TRUTRAK = 4
uint8 RECEIVER_TYPE_GSSIP = 5
uint8 RECEIVER_TYPE_OTHER = 14
uint8 RECEIVER_TYPE_UNKNOWN = 15
uint8 type
================================================================================
MSG: ros_sensor_msgs/KeyStatus
## KeyStatus

uint8 UnauthorizedNotKeyed = 0
uint8 AuthorizedNotKeyed   = 1
uint8 Keyed                = 2

uint8 status
================================================================================
MSG: ros_sensor_msgs/SourceType
## Source of data

uint8 SourceTypeUnknown  = 0
uint8 SourceTypeReceiver = 1
uint8 SourceTypeNetwork  = 2
uint8 SourceTypeRinex    = 3
uint8 SourceTypeAny      = 99

uint8 type
================================================================================
MSG: ros_sensor_msgs/AssuranceLevel
uint8  Normal   = 0
uint8  Unknown  = 1
uint8  Warning  = 2
uint8  Attack   = 3

uint8 level
================================================================================
MSG: ros_sensor_msgs/NodeStatus
std_msgs/Header       header
Tags                  tags
FixType               fix
uint8                 numSatellitesAvailable
uint16                timeSinceLastFix     # in seconds [s]
AvlSatelliteData      availableEphemeris   # bit field
AvlSatelliteData      availableAlmanac     # bit field
bool                  utcIonoAvailable
NetworkTimeOffset     networkTimeOffset
CpuTimeOffset         computerTimeOffset
AssuranceLevel        assurance
AssuranceCheckValue[] assuranceCheckVal
bool                  isStale
================================================================================
MSG: ros_sensor_msgs/FixType
## Fix Type

uint8 FixTypeNone = 0
uint8 FixTypeDeadReckoning = 1
uint8 FixType2D = 2
uint8 FixType3D = 3
uint8 FixTypeDRand3D = 4 ## Dead reckoning and GPS fix
uint8 FixTypeTimeOnly = 5
uint8 FixTypeStatic = 9

uint8 type
================================================================================
MSG: ros_sensor_msgs/AvlSatelliteData
uint32    fromReceiver
uint32    fromNetwork
uint32    fromRinex
uint32    fromUnknown
================================================================================
MSG: ros_sensor_msgs/NetworkTimeOffset
  GpsTime timeOfValidity
  bool    dataValid
  int32   networkDifferenceCounts
  int32   networkDriftCounts
  int32   oscillatorFreqEst
  int32   networkDifferenceCmdCounts
  int32   networkDriftCmdCounts
  uint32  networkPpsCount
  uint32  gpsPpsCount
================================================================================
MSG: ros_sensor_msgs/CpuTimeOffset
bool    valid
float64 secondsOffset
================================================================================
MSG: ros_sensor_msgs/AssuranceCheckValue
## An assurance check value for a given prn

uint32    prn
uint32    checkVal
")



(provide :ros_sensor_msgs/RepoStatus "73c189982339de9347415b23f31f460b")


