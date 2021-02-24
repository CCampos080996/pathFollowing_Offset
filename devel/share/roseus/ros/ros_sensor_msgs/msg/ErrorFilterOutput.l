;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::ErrorFilterOutput)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'ErrorFilterOutput (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::ERRORFILTEROUTPUT")
  (make-package "ROS_SENSOR_MSGS::ERRORFILTEROUTPUT"))

(in-package "ROS")
;;//! \htmlinclude ErrorFilterOutput.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_sensor_msgs::ErrorFilterOutput
  :super ros::object
  :slots (_header _tags _orientationErr _velocityErr _positionErr _accelBias _gyroBias _clock ))

(defmethod ros_sensor_msgs::ErrorFilterOutput
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:tags __tags) (instance ros_sensor_msgs::Tags :init))
    ((:orientationErr __orientationErr) (instance geometry_msgs::Vector3 :init))
    ((:velocityErr __velocityErr) (instance geometry_msgs::Vector3 :init))
    ((:positionErr __positionErr) (instance geometry_msgs::Vector3 :init))
    ((:accelBias __accelBias) (instance geometry_msgs::Vector3 :init))
    ((:gyroBias __gyroBias) (instance geometry_msgs::Vector3 :init))
    ((:clock __clock) (instance ros_sensor_msgs::ClockParameters :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _tags __tags)
   (setq _orientationErr __orientationErr)
   (setq _velocityErr __velocityErr)
   (setq _positionErr __positionErr)
   (setq _accelBias __accelBias)
   (setq _gyroBias __gyroBias)
   (setq _clock __clock)
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
  (:orientationErr
   (&rest __orientationErr)
   (if (keywordp (car __orientationErr))
       (send* _orientationErr __orientationErr)
     (progn
       (if __orientationErr (setq _orientationErr (car __orientationErr)))
       _orientationErr)))
  (:velocityErr
   (&rest __velocityErr)
   (if (keywordp (car __velocityErr))
       (send* _velocityErr __velocityErr)
     (progn
       (if __velocityErr (setq _velocityErr (car __velocityErr)))
       _velocityErr)))
  (:positionErr
   (&rest __positionErr)
   (if (keywordp (car __positionErr))
       (send* _positionErr __positionErr)
     (progn
       (if __positionErr (setq _positionErr (car __positionErr)))
       _positionErr)))
  (:accelBias
   (&rest __accelBias)
   (if (keywordp (car __accelBias))
       (send* _accelBias __accelBias)
     (progn
       (if __accelBias (setq _accelBias (car __accelBias)))
       _accelBias)))
  (:gyroBias
   (&rest __gyroBias)
   (if (keywordp (car __gyroBias))
       (send* _gyroBias __gyroBias)
     (progn
       (if __gyroBias (setq _gyroBias (car __gyroBias)))
       _gyroBias)))
  (:clock
   (&rest __clock)
   (if (keywordp (car __clock))
       (send* _clock __clock)
     (progn
       (if __clock (setq _clock (car __clock)))
       _clock)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; ros_sensor_msgs/Tags _tags
    (send _tags :serialization-length)
    ;; geometry_msgs/Vector3 _orientationErr
    (send _orientationErr :serialization-length)
    ;; geometry_msgs/Vector3 _velocityErr
    (send _velocityErr :serialization-length)
    ;; geometry_msgs/Vector3 _positionErr
    (send _positionErr :serialization-length)
    ;; geometry_msgs/Vector3 _accelBias
    (send _accelBias :serialization-length)
    ;; geometry_msgs/Vector3 _gyroBias
    (send _gyroBias :serialization-length)
    ;; ros_sensor_msgs/ClockParameters _clock
    (send _clock :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; ros_sensor_msgs/Tags _tags
       (send _tags :serialize s)
     ;; geometry_msgs/Vector3 _orientationErr
       (send _orientationErr :serialize s)
     ;; geometry_msgs/Vector3 _velocityErr
       (send _velocityErr :serialize s)
     ;; geometry_msgs/Vector3 _positionErr
       (send _positionErr :serialize s)
     ;; geometry_msgs/Vector3 _accelBias
       (send _accelBias :serialize s)
     ;; geometry_msgs/Vector3 _gyroBias
       (send _gyroBias :serialize s)
     ;; ros_sensor_msgs/ClockParameters _clock
       (send _clock :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; ros_sensor_msgs/Tags _tags
     (send _tags :deserialize buf ptr-) (incf ptr- (send _tags :serialization-length))
   ;; geometry_msgs/Vector3 _orientationErr
     (send _orientationErr :deserialize buf ptr-) (incf ptr- (send _orientationErr :serialization-length))
   ;; geometry_msgs/Vector3 _velocityErr
     (send _velocityErr :deserialize buf ptr-) (incf ptr- (send _velocityErr :serialization-length))
   ;; geometry_msgs/Vector3 _positionErr
     (send _positionErr :deserialize buf ptr-) (incf ptr- (send _positionErr :serialization-length))
   ;; geometry_msgs/Vector3 _accelBias
     (send _accelBias :deserialize buf ptr-) (incf ptr- (send _accelBias :serialization-length))
   ;; geometry_msgs/Vector3 _gyroBias
     (send _gyroBias :deserialize buf ptr-) (incf ptr- (send _gyroBias :serialization-length))
   ;; ros_sensor_msgs/ClockParameters _clock
     (send _clock :deserialize buf ptr-) (incf ptr- (send _clock :serialization-length))
   ;;
   self)
  )

(setf (get ros_sensor_msgs::ErrorFilterOutput :md5sum-) "67e8d7bcf6c0dfb06e37f3b17fd4edc6")
(setf (get ros_sensor_msgs::ErrorFilterOutput :datatype-) "ros_sensor_msgs/ErrorFilterOutput")
(setf (get ros_sensor_msgs::ErrorFilterOutput :definition-)
      "## 17-state error navigation filter output

std_msgs/Header   header
Tags              tags

geometry_msgs/Vector3 orientationErr
geometry_msgs/Vector3 velocityErr
geometry_msgs/Vector3 positionErr
geometry_msgs/Vector3 accelBias
geometry_msgs/Vector3 gyroBias
ClockParameters       clock
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
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: ros_sensor_msgs/ClockParameters
## Recevier clock parameters

float64 clock_bias    # Receiver clock bias [sec]
float64 clock_drift   # Receiver clock drift [sec/sec]
")



(provide :ros_sensor_msgs/ErrorFilterOutput "67e8d7bcf6c0dfb06e37f3b17fd4edc6")


