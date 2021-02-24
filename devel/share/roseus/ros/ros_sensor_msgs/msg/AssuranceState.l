;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::AssuranceState)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'AssuranceState (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::ASSURANCESTATE")
  (make-package "ROS_SENSOR_MSGS::ASSURANCESTATE"))

(in-package "ROS")
;;//! \htmlinclude AssuranceState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_sensor_msgs::AssuranceState
  :super ros::object
  :slots (_header _localPosition _dualNodeData _singleNodeData _prnAssuranceValues _assuranceLevel _filteredLevel ))

(defmethod ros_sensor_msgs::AssuranceState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:localPosition __localPosition) (instance ros_sensor_msgs::LlhPositionTagged :init))
    ((:dualNodeData __dualNodeData) (let (r) (dotimes (i 0) (push (instance ros_sensor_msgs::DualNodeAssuranceData :init) r)) r))
    ((:singleNodeData __singleNodeData) (instance ros_sensor_msgs::SingleNodeAssuranceData :init))
    ((:prnAssuranceValues __prnAssuranceValues) (let (r) (dotimes (i 0) (push (instance ros_sensor_msgs::AssuranceCheckValue :init) r)) r))
    ((:assuranceLevel __assuranceLevel) (instance ros_sensor_msgs::AssuranceLevel :init))
    ((:filteredLevel __filteredLevel) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _localPosition __localPosition)
   (setq _dualNodeData __dualNodeData)
   (setq _singleNodeData __singleNodeData)
   (setq _prnAssuranceValues __prnAssuranceValues)
   (setq _assuranceLevel __assuranceLevel)
   (setq _filteredLevel (float __filteredLevel))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:localPosition
   (&rest __localPosition)
   (if (keywordp (car __localPosition))
       (send* _localPosition __localPosition)
     (progn
       (if __localPosition (setq _localPosition (car __localPosition)))
       _localPosition)))
  (:dualNodeData
   (&rest __dualNodeData)
   (if (keywordp (car __dualNodeData))
       (send* _dualNodeData __dualNodeData)
     (progn
       (if __dualNodeData (setq _dualNodeData (car __dualNodeData)))
       _dualNodeData)))
  (:singleNodeData
   (&rest __singleNodeData)
   (if (keywordp (car __singleNodeData))
       (send* _singleNodeData __singleNodeData)
     (progn
       (if __singleNodeData (setq _singleNodeData (car __singleNodeData)))
       _singleNodeData)))
  (:prnAssuranceValues
   (&rest __prnAssuranceValues)
   (if (keywordp (car __prnAssuranceValues))
       (send* _prnAssuranceValues __prnAssuranceValues)
     (progn
       (if __prnAssuranceValues (setq _prnAssuranceValues (car __prnAssuranceValues)))
       _prnAssuranceValues)))
  (:assuranceLevel
   (&rest __assuranceLevel)
   (if (keywordp (car __assuranceLevel))
       (send* _assuranceLevel __assuranceLevel)
     (progn
       (if __assuranceLevel (setq _assuranceLevel (car __assuranceLevel)))
       _assuranceLevel)))
  (:filteredLevel
   (&optional __filteredLevel)
   (if __filteredLevel (setq _filteredLevel __filteredLevel)) _filteredLevel)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; ros_sensor_msgs/LlhPositionTagged _localPosition
    (send _localPosition :serialization-length)
    ;; ros_sensor_msgs/DualNodeAssuranceData[] _dualNodeData
    (apply #'+ (send-all _dualNodeData :serialization-length)) 4
    ;; ros_sensor_msgs/SingleNodeAssuranceData _singleNodeData
    (send _singleNodeData :serialization-length)
    ;; ros_sensor_msgs/AssuranceCheckValue[] _prnAssuranceValues
    (apply #'+ (send-all _prnAssuranceValues :serialization-length)) 4
    ;; ros_sensor_msgs/AssuranceLevel _assuranceLevel
    (send _assuranceLevel :serialization-length)
    ;; float64 _filteredLevel
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; ros_sensor_msgs/LlhPositionTagged _localPosition
       (send _localPosition :serialize s)
     ;; ros_sensor_msgs/DualNodeAssuranceData[] _dualNodeData
     (write-long (length _dualNodeData) s)
     (dolist (elem _dualNodeData)
       (send elem :serialize s)
       )
     ;; ros_sensor_msgs/SingleNodeAssuranceData _singleNodeData
       (send _singleNodeData :serialize s)
     ;; ros_sensor_msgs/AssuranceCheckValue[] _prnAssuranceValues
     (write-long (length _prnAssuranceValues) s)
     (dolist (elem _prnAssuranceValues)
       (send elem :serialize s)
       )
     ;; ros_sensor_msgs/AssuranceLevel _assuranceLevel
       (send _assuranceLevel :serialize s)
     ;; float64 _filteredLevel
       (sys::poke _filteredLevel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; ros_sensor_msgs/LlhPositionTagged _localPosition
     (send _localPosition :deserialize buf ptr-) (incf ptr- (send _localPosition :serialization-length))
   ;; ros_sensor_msgs/DualNodeAssuranceData[] _dualNodeData
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _dualNodeData (let (r) (dotimes (i n) (push (instance ros_sensor_msgs::DualNodeAssuranceData :init) r)) r))
     (dolist (elem- _dualNodeData)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; ros_sensor_msgs/SingleNodeAssuranceData _singleNodeData
     (send _singleNodeData :deserialize buf ptr-) (incf ptr- (send _singleNodeData :serialization-length))
   ;; ros_sensor_msgs/AssuranceCheckValue[] _prnAssuranceValues
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _prnAssuranceValues (let (r) (dotimes (i n) (push (instance ros_sensor_msgs::AssuranceCheckValue :init) r)) r))
     (dolist (elem- _prnAssuranceValues)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; ros_sensor_msgs/AssuranceLevel _assuranceLevel
     (send _assuranceLevel :deserialize buf ptr-) (incf ptr- (send _assuranceLevel :serialization-length))
   ;; float64 _filteredLevel
     (setq _filteredLevel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ros_sensor_msgs::AssuranceState :md5sum-) "1b5a45d7bfb7095220320d230d9c3c4a")
(setf (get ros_sensor_msgs::AssuranceState :datatype-) "ros_sensor_msgs/AssuranceState")
(setf (get ros_sensor_msgs::AssuranceState :definition-)
      "  std_msgs/Header            header
  LlhPositionTagged          localPosition
  DualNodeAssuranceData[]    dualNodeData
  SingleNodeAssuranceData    singleNodeData
  AssuranceCheckValue[]      prnAssuranceValues
  AssuranceLevel             assuranceLevel
  float64                    filteredLevel
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
MSG: ros_sensor_msgs/LlhPositionTagged
## LlhPositionTagged

std_msgs/Header   header
Tags              tags
LlhPosition       llhPosition
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
MSG: ros_sensor_msgs/LlhPosition
# # LlhPosition

float64                  latitude   # [deg]
float64                  longitude  # [deg]
float64                  altitude   # [m]
uint16                   horizontalAccuracy
uint16                   verticalAccuracy
================================================================================
MSG: ros_sensor_msgs/DualNodeAssuranceData
  string             remoteNodeIp
  LlhPositionTagged  remotePosition
  RfRangeStamped     rfRange
  float64            nodeRange
  AssuranceLevel     rangeCheckAssuranceLevel
  PrnDifference[]    singleDifferences
  uint32             basePrn
  PrnDifference[]    doubleDifferences
  AssuranceLevel     diffCheckAssuranceLevel
================================================================================
MSG: ros_sensor_msgs/RfRangeStamped
# Range to specified object
std_msgs/Header   header
RfRange           range
================================================================================
MSG: ros_sensor_msgs/RfRange
# Range to specified object
float64 range
float64 rangeRate
float64 rangeVariance
float64 rangeRateVariance
uint32  timestamp
uint32  sourceId
uint32  destId
uint16  rssi
uint16  quality

================================================================================
MSG: ros_sensor_msgs/PrnDifference
uint32   prn
float64  difference
================================================================================
MSG: ros_sensor_msgs/SingleNodeAssuranceData
PrnDifference[]  pseudoDopplerDiffs
AssuranceLevel   pseudoDopplerDiffAssuranceLevel
PrnDifference[]  carrierToNoiseCheckData
AssuranceLevel   cnoCheckAssuranceLevel
================================================================================
MSG: ros_sensor_msgs/AssuranceCheckValue
## An assurance check value for a given prn

uint32    prn
uint32    checkVal
")



(provide :ros_sensor_msgs/AssuranceState "1b5a45d7bfb7095220320d230d9c3c4a")


