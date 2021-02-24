;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::EnuVelocityTagged)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'EnuVelocityTagged (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::ENUVELOCITYTAGGED")
  (make-package "ROS_SENSOR_MSGS::ENUVELOCITYTAGGED"))

(in-package "ROS")
;;//! \htmlinclude EnuVelocityTagged.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_sensor_msgs::EnuVelocityTagged
  :super ros::object
  :slots (_header _tags _enuVelocity ))

(defmethod ros_sensor_msgs::EnuVelocityTagged
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:tags __tags) (instance ros_sensor_msgs::Tags :init))
    ((:enuVelocity __enuVelocity) (instance ros_sensor_msgs::EnuVelocity :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _tags __tags)
   (setq _enuVelocity __enuVelocity)
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
  (:enuVelocity
   (&rest __enuVelocity)
   (if (keywordp (car __enuVelocity))
       (send* _enuVelocity __enuVelocity)
     (progn
       (if __enuVelocity (setq _enuVelocity (car __enuVelocity)))
       _enuVelocity)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; ros_sensor_msgs/Tags _tags
    (send _tags :serialization-length)
    ;; ros_sensor_msgs/EnuVelocity _enuVelocity
    (send _enuVelocity :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; ros_sensor_msgs/Tags _tags
       (send _tags :serialize s)
     ;; ros_sensor_msgs/EnuVelocity _enuVelocity
       (send _enuVelocity :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; ros_sensor_msgs/Tags _tags
     (send _tags :deserialize buf ptr-) (incf ptr- (send _tags :serialization-length))
   ;; ros_sensor_msgs/EnuVelocity _enuVelocity
     (send _enuVelocity :deserialize buf ptr-) (incf ptr- (send _enuVelocity :serialization-length))
   ;;
   self)
  )

(setf (get ros_sensor_msgs::EnuVelocityTagged :md5sum-) "dbc839fae8ba36a3a3721a35d2ea7099")
(setf (get ros_sensor_msgs::EnuVelocityTagged :datatype-) "ros_sensor_msgs/EnuVelocityTagged")
(setf (get ros_sensor_msgs::EnuVelocityTagged :definition-)
      "## EnuVelocityTagged

std_msgs/Header   header
Tags              tags
EnuVelocity       enuVelocity
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
MSG: ros_sensor_msgs/EnuVelocity
float64					 eastVelocity
float64                  northVelocity
float64                  upVelocity
float32                  horizontalAccuracy
float32                  verticalAccuracy    
")



(provide :ros_sensor_msgs/EnuVelocityTagged "dbc839fae8ba36a3a3721a35d2ea7099")


