;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::NodeStatus)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'NodeStatus (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::NODESTATUS")
  (make-package "ROS_SENSOR_MSGS::NODESTATUS"))

(in-package "ROS")
;;//! \htmlinclude NodeStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_sensor_msgs::NodeStatus
  :super ros::object
  :slots (_header _tags _fix _numSatellitesAvailable _timeSinceLastFix _availableEphemeris _availableAlmanac _utcIonoAvailable _networkTimeOffset _computerTimeOffset _assurance _assuranceCheckVal _isStale ))

(defmethod ros_sensor_msgs::NodeStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:tags __tags) (instance ros_sensor_msgs::Tags :init))
    ((:fix __fix) (instance ros_sensor_msgs::FixType :init))
    ((:numSatellitesAvailable __numSatellitesAvailable) 0)
    ((:timeSinceLastFix __timeSinceLastFix) 0)
    ((:availableEphemeris __availableEphemeris) (instance ros_sensor_msgs::AvlSatelliteData :init))
    ((:availableAlmanac __availableAlmanac) (instance ros_sensor_msgs::AvlSatelliteData :init))
    ((:utcIonoAvailable __utcIonoAvailable) nil)
    ((:networkTimeOffset __networkTimeOffset) (instance ros_sensor_msgs::NetworkTimeOffset :init))
    ((:computerTimeOffset __computerTimeOffset) (instance ros_sensor_msgs::CpuTimeOffset :init))
    ((:assurance __assurance) (instance ros_sensor_msgs::AssuranceLevel :init))
    ((:assuranceCheckVal __assuranceCheckVal) (let (r) (dotimes (i 0) (push (instance ros_sensor_msgs::AssuranceCheckValue :init) r)) r))
    ((:isStale __isStale) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _tags __tags)
   (setq _fix __fix)
   (setq _numSatellitesAvailable (round __numSatellitesAvailable))
   (setq _timeSinceLastFix (round __timeSinceLastFix))
   (setq _availableEphemeris __availableEphemeris)
   (setq _availableAlmanac __availableAlmanac)
   (setq _utcIonoAvailable __utcIonoAvailable)
   (setq _networkTimeOffset __networkTimeOffset)
   (setq _computerTimeOffset __computerTimeOffset)
   (setq _assurance __assurance)
   (setq _assuranceCheckVal __assuranceCheckVal)
   (setq _isStale __isStale)
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
  (:fix
   (&rest __fix)
   (if (keywordp (car __fix))
       (send* _fix __fix)
     (progn
       (if __fix (setq _fix (car __fix)))
       _fix)))
  (:numSatellitesAvailable
   (&optional __numSatellitesAvailable)
   (if __numSatellitesAvailable (setq _numSatellitesAvailable __numSatellitesAvailable)) _numSatellitesAvailable)
  (:timeSinceLastFix
   (&optional __timeSinceLastFix)
   (if __timeSinceLastFix (setq _timeSinceLastFix __timeSinceLastFix)) _timeSinceLastFix)
  (:availableEphemeris
   (&rest __availableEphemeris)
   (if (keywordp (car __availableEphemeris))
       (send* _availableEphemeris __availableEphemeris)
     (progn
       (if __availableEphemeris (setq _availableEphemeris (car __availableEphemeris)))
       _availableEphemeris)))
  (:availableAlmanac
   (&rest __availableAlmanac)
   (if (keywordp (car __availableAlmanac))
       (send* _availableAlmanac __availableAlmanac)
     (progn
       (if __availableAlmanac (setq _availableAlmanac (car __availableAlmanac)))
       _availableAlmanac)))
  (:utcIonoAvailable
   (&optional __utcIonoAvailable)
   (if __utcIonoAvailable (setq _utcIonoAvailable __utcIonoAvailable)) _utcIonoAvailable)
  (:networkTimeOffset
   (&rest __networkTimeOffset)
   (if (keywordp (car __networkTimeOffset))
       (send* _networkTimeOffset __networkTimeOffset)
     (progn
       (if __networkTimeOffset (setq _networkTimeOffset (car __networkTimeOffset)))
       _networkTimeOffset)))
  (:computerTimeOffset
   (&rest __computerTimeOffset)
   (if (keywordp (car __computerTimeOffset))
       (send* _computerTimeOffset __computerTimeOffset)
     (progn
       (if __computerTimeOffset (setq _computerTimeOffset (car __computerTimeOffset)))
       _computerTimeOffset)))
  (:assurance
   (&rest __assurance)
   (if (keywordp (car __assurance))
       (send* _assurance __assurance)
     (progn
       (if __assurance (setq _assurance (car __assurance)))
       _assurance)))
  (:assuranceCheckVal
   (&rest __assuranceCheckVal)
   (if (keywordp (car __assuranceCheckVal))
       (send* _assuranceCheckVal __assuranceCheckVal)
     (progn
       (if __assuranceCheckVal (setq _assuranceCheckVal (car __assuranceCheckVal)))
       _assuranceCheckVal)))
  (:isStale
   (&optional __isStale)
   (if __isStale (setq _isStale __isStale)) _isStale)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; ros_sensor_msgs/Tags _tags
    (send _tags :serialization-length)
    ;; ros_sensor_msgs/FixType _fix
    (send _fix :serialization-length)
    ;; uint8 _numSatellitesAvailable
    1
    ;; uint16 _timeSinceLastFix
    2
    ;; ros_sensor_msgs/AvlSatelliteData _availableEphemeris
    (send _availableEphemeris :serialization-length)
    ;; ros_sensor_msgs/AvlSatelliteData _availableAlmanac
    (send _availableAlmanac :serialization-length)
    ;; bool _utcIonoAvailable
    1
    ;; ros_sensor_msgs/NetworkTimeOffset _networkTimeOffset
    (send _networkTimeOffset :serialization-length)
    ;; ros_sensor_msgs/CpuTimeOffset _computerTimeOffset
    (send _computerTimeOffset :serialization-length)
    ;; ros_sensor_msgs/AssuranceLevel _assurance
    (send _assurance :serialization-length)
    ;; ros_sensor_msgs/AssuranceCheckValue[] _assuranceCheckVal
    (apply #'+ (send-all _assuranceCheckVal :serialization-length)) 4
    ;; bool _isStale
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; ros_sensor_msgs/Tags _tags
       (send _tags :serialize s)
     ;; ros_sensor_msgs/FixType _fix
       (send _fix :serialize s)
     ;; uint8 _numSatellitesAvailable
       (write-byte _numSatellitesAvailable s)
     ;; uint16 _timeSinceLastFix
       (write-word _timeSinceLastFix s)
     ;; ros_sensor_msgs/AvlSatelliteData _availableEphemeris
       (send _availableEphemeris :serialize s)
     ;; ros_sensor_msgs/AvlSatelliteData _availableAlmanac
       (send _availableAlmanac :serialize s)
     ;; bool _utcIonoAvailable
       (if _utcIonoAvailable (write-byte -1 s) (write-byte 0 s))
     ;; ros_sensor_msgs/NetworkTimeOffset _networkTimeOffset
       (send _networkTimeOffset :serialize s)
     ;; ros_sensor_msgs/CpuTimeOffset _computerTimeOffset
       (send _computerTimeOffset :serialize s)
     ;; ros_sensor_msgs/AssuranceLevel _assurance
       (send _assurance :serialize s)
     ;; ros_sensor_msgs/AssuranceCheckValue[] _assuranceCheckVal
     (write-long (length _assuranceCheckVal) s)
     (dolist (elem _assuranceCheckVal)
       (send elem :serialize s)
       )
     ;; bool _isStale
       (if _isStale (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; ros_sensor_msgs/Tags _tags
     (send _tags :deserialize buf ptr-) (incf ptr- (send _tags :serialization-length))
   ;; ros_sensor_msgs/FixType _fix
     (send _fix :deserialize buf ptr-) (incf ptr- (send _fix :serialization-length))
   ;; uint8 _numSatellitesAvailable
     (setq _numSatellitesAvailable (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _timeSinceLastFix
     (setq _timeSinceLastFix (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; ros_sensor_msgs/AvlSatelliteData _availableEphemeris
     (send _availableEphemeris :deserialize buf ptr-) (incf ptr- (send _availableEphemeris :serialization-length))
   ;; ros_sensor_msgs/AvlSatelliteData _availableAlmanac
     (send _availableAlmanac :deserialize buf ptr-) (incf ptr- (send _availableAlmanac :serialization-length))
   ;; bool _utcIonoAvailable
     (setq _utcIonoAvailable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; ros_sensor_msgs/NetworkTimeOffset _networkTimeOffset
     (send _networkTimeOffset :deserialize buf ptr-) (incf ptr- (send _networkTimeOffset :serialization-length))
   ;; ros_sensor_msgs/CpuTimeOffset _computerTimeOffset
     (send _computerTimeOffset :deserialize buf ptr-) (incf ptr- (send _computerTimeOffset :serialization-length))
   ;; ros_sensor_msgs/AssuranceLevel _assurance
     (send _assurance :deserialize buf ptr-) (incf ptr- (send _assurance :serialization-length))
   ;; ros_sensor_msgs/AssuranceCheckValue[] _assuranceCheckVal
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _assuranceCheckVal (let (r) (dotimes (i n) (push (instance ros_sensor_msgs::AssuranceCheckValue :init) r)) r))
     (dolist (elem- _assuranceCheckVal)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _isStale
     (setq _isStale (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ros_sensor_msgs::NodeStatus :md5sum-) "278b370fcaf1e9224bd8b33acea7e9ca")
(setf (get ros_sensor_msgs::NodeStatus :datatype-) "ros_sensor_msgs/NodeStatus")
(setf (get ros_sensor_msgs::NodeStatus :definition-)
      "std_msgs/Header       header
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



(provide :ros_sensor_msgs/NodeStatus "278b370fcaf1e9224bd8b33acea7e9ca")


