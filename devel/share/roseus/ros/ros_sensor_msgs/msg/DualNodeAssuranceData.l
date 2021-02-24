;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::DualNodeAssuranceData)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'DualNodeAssuranceData (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::DUALNODEASSURANCEDATA")
  (make-package "ROS_SENSOR_MSGS::DUALNODEASSURANCEDATA"))

(in-package "ROS")
;;//! \htmlinclude DualNodeAssuranceData.msg.html


(defclass ros_sensor_msgs::DualNodeAssuranceData
  :super ros::object
  :slots (_remoteNodeIp _remotePosition _rfRange _nodeRange _rangeCheckAssuranceLevel _singleDifferences _basePrn _doubleDifferences _diffCheckAssuranceLevel ))

(defmethod ros_sensor_msgs::DualNodeAssuranceData
  (:init
   (&key
    ((:remoteNodeIp __remoteNodeIp) "")
    ((:remotePosition __remotePosition) (instance ros_sensor_msgs::LlhPositionTagged :init))
    ((:rfRange __rfRange) (instance ros_sensor_msgs::RfRangeStamped :init))
    ((:nodeRange __nodeRange) 0.0)
    ((:rangeCheckAssuranceLevel __rangeCheckAssuranceLevel) (instance ros_sensor_msgs::AssuranceLevel :init))
    ((:singleDifferences __singleDifferences) (let (r) (dotimes (i 0) (push (instance ros_sensor_msgs::PrnDifference :init) r)) r))
    ((:basePrn __basePrn) 0)
    ((:doubleDifferences __doubleDifferences) (let (r) (dotimes (i 0) (push (instance ros_sensor_msgs::PrnDifference :init) r)) r))
    ((:diffCheckAssuranceLevel __diffCheckAssuranceLevel) (instance ros_sensor_msgs::AssuranceLevel :init))
    )
   (send-super :init)
   (setq _remoteNodeIp (string __remoteNodeIp))
   (setq _remotePosition __remotePosition)
   (setq _rfRange __rfRange)
   (setq _nodeRange (float __nodeRange))
   (setq _rangeCheckAssuranceLevel __rangeCheckAssuranceLevel)
   (setq _singleDifferences __singleDifferences)
   (setq _basePrn (round __basePrn))
   (setq _doubleDifferences __doubleDifferences)
   (setq _diffCheckAssuranceLevel __diffCheckAssuranceLevel)
   self)
  (:remoteNodeIp
   (&optional __remoteNodeIp)
   (if __remoteNodeIp (setq _remoteNodeIp __remoteNodeIp)) _remoteNodeIp)
  (:remotePosition
   (&rest __remotePosition)
   (if (keywordp (car __remotePosition))
       (send* _remotePosition __remotePosition)
     (progn
       (if __remotePosition (setq _remotePosition (car __remotePosition)))
       _remotePosition)))
  (:rfRange
   (&rest __rfRange)
   (if (keywordp (car __rfRange))
       (send* _rfRange __rfRange)
     (progn
       (if __rfRange (setq _rfRange (car __rfRange)))
       _rfRange)))
  (:nodeRange
   (&optional __nodeRange)
   (if __nodeRange (setq _nodeRange __nodeRange)) _nodeRange)
  (:rangeCheckAssuranceLevel
   (&rest __rangeCheckAssuranceLevel)
   (if (keywordp (car __rangeCheckAssuranceLevel))
       (send* _rangeCheckAssuranceLevel __rangeCheckAssuranceLevel)
     (progn
       (if __rangeCheckAssuranceLevel (setq _rangeCheckAssuranceLevel (car __rangeCheckAssuranceLevel)))
       _rangeCheckAssuranceLevel)))
  (:singleDifferences
   (&rest __singleDifferences)
   (if (keywordp (car __singleDifferences))
       (send* _singleDifferences __singleDifferences)
     (progn
       (if __singleDifferences (setq _singleDifferences (car __singleDifferences)))
       _singleDifferences)))
  (:basePrn
   (&optional __basePrn)
   (if __basePrn (setq _basePrn __basePrn)) _basePrn)
  (:doubleDifferences
   (&rest __doubleDifferences)
   (if (keywordp (car __doubleDifferences))
       (send* _doubleDifferences __doubleDifferences)
     (progn
       (if __doubleDifferences (setq _doubleDifferences (car __doubleDifferences)))
       _doubleDifferences)))
  (:diffCheckAssuranceLevel
   (&rest __diffCheckAssuranceLevel)
   (if (keywordp (car __diffCheckAssuranceLevel))
       (send* _diffCheckAssuranceLevel __diffCheckAssuranceLevel)
     (progn
       (if __diffCheckAssuranceLevel (setq _diffCheckAssuranceLevel (car __diffCheckAssuranceLevel)))
       _diffCheckAssuranceLevel)))
  (:serialization-length
   ()
   (+
    ;; string _remoteNodeIp
    4 (length _remoteNodeIp)
    ;; ros_sensor_msgs/LlhPositionTagged _remotePosition
    (send _remotePosition :serialization-length)
    ;; ros_sensor_msgs/RfRangeStamped _rfRange
    (send _rfRange :serialization-length)
    ;; float64 _nodeRange
    8
    ;; ros_sensor_msgs/AssuranceLevel _rangeCheckAssuranceLevel
    (send _rangeCheckAssuranceLevel :serialization-length)
    ;; ros_sensor_msgs/PrnDifference[] _singleDifferences
    (apply #'+ (send-all _singleDifferences :serialization-length)) 4
    ;; uint32 _basePrn
    4
    ;; ros_sensor_msgs/PrnDifference[] _doubleDifferences
    (apply #'+ (send-all _doubleDifferences :serialization-length)) 4
    ;; ros_sensor_msgs/AssuranceLevel _diffCheckAssuranceLevel
    (send _diffCheckAssuranceLevel :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _remoteNodeIp
       (write-long (length _remoteNodeIp) s) (princ _remoteNodeIp s)
     ;; ros_sensor_msgs/LlhPositionTagged _remotePosition
       (send _remotePosition :serialize s)
     ;; ros_sensor_msgs/RfRangeStamped _rfRange
       (send _rfRange :serialize s)
     ;; float64 _nodeRange
       (sys::poke _nodeRange (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; ros_sensor_msgs/AssuranceLevel _rangeCheckAssuranceLevel
       (send _rangeCheckAssuranceLevel :serialize s)
     ;; ros_sensor_msgs/PrnDifference[] _singleDifferences
     (write-long (length _singleDifferences) s)
     (dolist (elem _singleDifferences)
       (send elem :serialize s)
       )
     ;; uint32 _basePrn
       (write-long _basePrn s)
     ;; ros_sensor_msgs/PrnDifference[] _doubleDifferences
     (write-long (length _doubleDifferences) s)
     (dolist (elem _doubleDifferences)
       (send elem :serialize s)
       )
     ;; ros_sensor_msgs/AssuranceLevel _diffCheckAssuranceLevel
       (send _diffCheckAssuranceLevel :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _remoteNodeIp
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _remoteNodeIp (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; ros_sensor_msgs/LlhPositionTagged _remotePosition
     (send _remotePosition :deserialize buf ptr-) (incf ptr- (send _remotePosition :serialization-length))
   ;; ros_sensor_msgs/RfRangeStamped _rfRange
     (send _rfRange :deserialize buf ptr-) (incf ptr- (send _rfRange :serialization-length))
   ;; float64 _nodeRange
     (setq _nodeRange (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; ros_sensor_msgs/AssuranceLevel _rangeCheckAssuranceLevel
     (send _rangeCheckAssuranceLevel :deserialize buf ptr-) (incf ptr- (send _rangeCheckAssuranceLevel :serialization-length))
   ;; ros_sensor_msgs/PrnDifference[] _singleDifferences
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _singleDifferences (let (r) (dotimes (i n) (push (instance ros_sensor_msgs::PrnDifference :init) r)) r))
     (dolist (elem- _singleDifferences)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint32 _basePrn
     (setq _basePrn (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; ros_sensor_msgs/PrnDifference[] _doubleDifferences
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _doubleDifferences (let (r) (dotimes (i n) (push (instance ros_sensor_msgs::PrnDifference :init) r)) r))
     (dolist (elem- _doubleDifferences)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; ros_sensor_msgs/AssuranceLevel _diffCheckAssuranceLevel
     (send _diffCheckAssuranceLevel :deserialize buf ptr-) (incf ptr- (send _diffCheckAssuranceLevel :serialization-length))
   ;;
   self)
  )

(setf (get ros_sensor_msgs::DualNodeAssuranceData :md5sum-) "ba2e6008c14c1601b60697a2dd872ffa")
(setf (get ros_sensor_msgs::DualNodeAssuranceData :datatype-) "ros_sensor_msgs/DualNodeAssuranceData")
(setf (get ros_sensor_msgs::DualNodeAssuranceData :definition-)
      "  string             remoteNodeIp
  LlhPositionTagged  remotePosition
  RfRangeStamped     rfRange
  float64            nodeRange
  AssuranceLevel     rangeCheckAssuranceLevel
  PrnDifference[]    singleDifferences
  uint32             basePrn
  PrnDifference[]    doubleDifferences
  AssuranceLevel     diffCheckAssuranceLevel
================================================================================
MSG: ros_sensor_msgs/LlhPositionTagged
## LlhPositionTagged

std_msgs/Header   header
Tags              tags
LlhPosition       llhPosition
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
MSG: ros_sensor_msgs/LlhPosition
# # LlhPosition

float64                  latitude   # [deg]
float64                  longitude  # [deg]
float64                  altitude   # [m]
uint16                   horizontalAccuracy
uint16                   verticalAccuracy
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
")



(provide :ros_sensor_msgs/DualNodeAssuranceData "ba2e6008c14c1601b60697a2dd872ffa")


