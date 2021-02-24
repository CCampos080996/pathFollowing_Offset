;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::FilterOutput)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'FilterOutput (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::FILTEROUTPUT")
  (make-package "ROS_SENSOR_MSGS::FILTEROUTPUT"))

(in-package "ROS")
;;//! \htmlinclude FilterOutput.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_sensor_msgs::FilterOutput
  :super ros::object
  :slots (_header _tags _xyzPos _xyzVel _eulerAngles _gyroBias _accelBias _clockBias _clockDrift _clockCovariance _rangeCorrection ))

(defmethod ros_sensor_msgs::FilterOutput
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:tags __tags) (instance ros_sensor_msgs::Tags :init))
    ((:xyzPos __xyzPos) (instance ros_sensor_msgs::CartesianState :init))
    ((:xyzVel __xyzVel) (instance ros_sensor_msgs::CartesianState :init))
    ((:eulerAngles __eulerAngles) (instance ros_sensor_msgs::EulerState :init))
    ((:gyroBias __gyroBias) (instance ros_sensor_msgs::EulerState :init))
    ((:accelBias __accelBias) (instance ros_sensor_msgs::CartesianState :init))
    ((:clockBias __clockBias) 0.0)
    ((:clockDrift __clockDrift) 0.0)
    ((:clockCovariance __clockCovariance) (make-array 4 :initial-element 0.0 :element-type :float))
    ((:rangeCorrection __rangeCorrection) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _tags __tags)
   (setq _xyzPos __xyzPos)
   (setq _xyzVel __xyzVel)
   (setq _eulerAngles __eulerAngles)
   (setq _gyroBias __gyroBias)
   (setq _accelBias __accelBias)
   (setq _clockBias (float __clockBias))
   (setq _clockDrift (float __clockDrift))
   (setq _clockCovariance __clockCovariance)
   (setq _rangeCorrection (float __rangeCorrection))
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
  (:xyzPos
   (&rest __xyzPos)
   (if (keywordp (car __xyzPos))
       (send* _xyzPos __xyzPos)
     (progn
       (if __xyzPos (setq _xyzPos (car __xyzPos)))
       _xyzPos)))
  (:xyzVel
   (&rest __xyzVel)
   (if (keywordp (car __xyzVel))
       (send* _xyzVel __xyzVel)
     (progn
       (if __xyzVel (setq _xyzVel (car __xyzVel)))
       _xyzVel)))
  (:eulerAngles
   (&rest __eulerAngles)
   (if (keywordp (car __eulerAngles))
       (send* _eulerAngles __eulerAngles)
     (progn
       (if __eulerAngles (setq _eulerAngles (car __eulerAngles)))
       _eulerAngles)))
  (:gyroBias
   (&rest __gyroBias)
   (if (keywordp (car __gyroBias))
       (send* _gyroBias __gyroBias)
     (progn
       (if __gyroBias (setq _gyroBias (car __gyroBias)))
       _gyroBias)))
  (:accelBias
   (&rest __accelBias)
   (if (keywordp (car __accelBias))
       (send* _accelBias __accelBias)
     (progn
       (if __accelBias (setq _accelBias (car __accelBias)))
       _accelBias)))
  (:clockBias
   (&optional __clockBias)
   (if __clockBias (setq _clockBias __clockBias)) _clockBias)
  (:clockDrift
   (&optional __clockDrift)
   (if __clockDrift (setq _clockDrift __clockDrift)) _clockDrift)
  (:clockCovariance
   (&optional __clockCovariance)
   (if __clockCovariance (setq _clockCovariance __clockCovariance)) _clockCovariance)
  (:rangeCorrection
   (&optional __rangeCorrection)
   (if __rangeCorrection (setq _rangeCorrection __rangeCorrection)) _rangeCorrection)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; ros_sensor_msgs/Tags _tags
    (send _tags :serialization-length)
    ;; ros_sensor_msgs/CartesianState _xyzPos
    (send _xyzPos :serialization-length)
    ;; ros_sensor_msgs/CartesianState _xyzVel
    (send _xyzVel :serialization-length)
    ;; ros_sensor_msgs/EulerState _eulerAngles
    (send _eulerAngles :serialization-length)
    ;; ros_sensor_msgs/EulerState _gyroBias
    (send _gyroBias :serialization-length)
    ;; ros_sensor_msgs/CartesianState _accelBias
    (send _accelBias :serialization-length)
    ;; float64 _clockBias
    8
    ;; float64 _clockDrift
    8
    ;; float64[4] _clockCovariance
    (* 8    4)
    ;; float64 _rangeCorrection
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; ros_sensor_msgs/Tags _tags
       (send _tags :serialize s)
     ;; ros_sensor_msgs/CartesianState _xyzPos
       (send _xyzPos :serialize s)
     ;; ros_sensor_msgs/CartesianState _xyzVel
       (send _xyzVel :serialize s)
     ;; ros_sensor_msgs/EulerState _eulerAngles
       (send _eulerAngles :serialize s)
     ;; ros_sensor_msgs/EulerState _gyroBias
       (send _gyroBias :serialize s)
     ;; ros_sensor_msgs/CartesianState _accelBias
       (send _accelBias :serialize s)
     ;; float64 _clockBias
       (sys::poke _clockBias (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _clockDrift
       (sys::poke _clockDrift (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[4] _clockCovariance
     (dotimes (i 4)
       (sys::poke (elt _clockCovariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _rangeCorrection
       (sys::poke _rangeCorrection (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; ros_sensor_msgs/Tags _tags
     (send _tags :deserialize buf ptr-) (incf ptr- (send _tags :serialization-length))
   ;; ros_sensor_msgs/CartesianState _xyzPos
     (send _xyzPos :deserialize buf ptr-) (incf ptr- (send _xyzPos :serialization-length))
   ;; ros_sensor_msgs/CartesianState _xyzVel
     (send _xyzVel :deserialize buf ptr-) (incf ptr- (send _xyzVel :serialization-length))
   ;; ros_sensor_msgs/EulerState _eulerAngles
     (send _eulerAngles :deserialize buf ptr-) (incf ptr- (send _eulerAngles :serialization-length))
   ;; ros_sensor_msgs/EulerState _gyroBias
     (send _gyroBias :deserialize buf ptr-) (incf ptr- (send _gyroBias :serialization-length))
   ;; ros_sensor_msgs/CartesianState _accelBias
     (send _accelBias :deserialize buf ptr-) (incf ptr- (send _accelBias :serialization-length))
   ;; float64 _clockBias
     (setq _clockBias (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _clockDrift
     (setq _clockDrift (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[4] _clockCovariance
   (dotimes (i (length _clockCovariance))
     (setf (elt _clockCovariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64 _rangeCorrection
     (setq _rangeCorrection (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ros_sensor_msgs::FilterOutput :md5sum-) "5695b591302f0d1858c9347aee166c94")
(setf (get ros_sensor_msgs::FilterOutput :datatype-) "ros_sensor_msgs/FilterOutput")
(setf (get ros_sensor_msgs::FilterOutput :definition-)
      "
std_msgs/Header   header

Tags              tags

CartesianState    xyzPos
CartesianState    xyzVel
EulerState        eulerAngles
EulerState        gyroBias
CartesianState    accelBias

float64 clockBias
float64 clockDrift
float64[4] clockCovariance

float64 rangeCorrection
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
MSG: ros_sensor_msgs/CartesianState
## XYZ position and associated covariance

float64       x
float64       y
float64       z

float64[9] covariance
================================================================================
MSG: ros_sensor_msgs/EulerState
## XYZ velocity and associated covariance

float64       roll
float64       pitch
float64       yaw

float64[9] covariance
")



(provide :ros_sensor_msgs/FilterOutput "5695b591302f0d1858c9347aee166c94")


