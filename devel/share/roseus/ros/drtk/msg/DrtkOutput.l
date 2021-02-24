;; Auto-generated. Do not edit!


(when (boundp 'drtk::DrtkOutput)
  (if (not (find-package "DRTK"))
    (make-package "DRTK"))
  (shadow 'DrtkOutput (find-package "DRTK")))
(unless (find-package "DRTK::DRTKOUTPUT")
  (make-package "DRTK::DRTKOUTPUT"))

(in-package "ROS")
;;//! \htmlinclude DrtkOutput.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "ROS_SENSOR_MSGS"))
  (ros::roseus-add-msgs "ros_sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass drtk::DrtkOutput
  :super ros::object
  :slots (_header _gpsTime _localPositionEcef _rpvEcef _rpvFixedInteger _rpvFloatInteger _rpvDifferentialPseudorange _rpvPositionDifference _rpvEcefCovariance _rpvFixedIntegerCov _rpvFloatIntegerCov _rpvDifferentialPseudorangeCov _rpvNorm _rpvFixedIntegerNorm _rpvFloatIntegerNorm _rpvDifferentialPseudorangeNorm _rpvPositionDifferenceNorm _outputState ))

(defmethod drtk::DrtkOutput
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:gpsTime __gpsTime) (instance ros_sensor_msgs::GpsTime :init))
    ((:localPositionEcef __localPositionEcef) (instance geometry_msgs::Point :init))
    ((:rpvEcef __rpvEcef) (instance geometry_msgs::Vector3 :init))
    ((:rpvFixedInteger __rpvFixedInteger) (instance geometry_msgs::Vector3 :init))
    ((:rpvFloatInteger __rpvFloatInteger) (instance geometry_msgs::Vector3 :init))
    ((:rpvDifferentialPseudorange __rpvDifferentialPseudorange) (instance geometry_msgs::Vector3 :init))
    ((:rpvPositionDifference __rpvPositionDifference) (instance geometry_msgs::Vector3 :init))
    ((:rpvEcefCovariance __rpvEcefCovariance) (make-array 9 :initial-element 0.0 :element-type :float))
    ((:rpvFixedIntegerCov __rpvFixedIntegerCov) (make-array 9 :initial-element 0.0 :element-type :float))
    ((:rpvFloatIntegerCov __rpvFloatIntegerCov) (make-array 9 :initial-element 0.0 :element-type :float))
    ((:rpvDifferentialPseudorangeCov __rpvDifferentialPseudorangeCov) (make-array 9 :initial-element 0.0 :element-type :float))
    ((:rpvNorm __rpvNorm) 0.0)
    ((:rpvFixedIntegerNorm __rpvFixedIntegerNorm) 0.0)
    ((:rpvFloatIntegerNorm __rpvFloatIntegerNorm) 0.0)
    ((:rpvDifferentialPseudorangeNorm __rpvDifferentialPseudorangeNorm) 0.0)
    ((:rpvPositionDifferenceNorm __rpvPositionDifferenceNorm) 0.0)
    ((:outputState __outputState) (instance drtk::DrtkOutputState :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _gpsTime __gpsTime)
   (setq _localPositionEcef __localPositionEcef)
   (setq _rpvEcef __rpvEcef)
   (setq _rpvFixedInteger __rpvFixedInteger)
   (setq _rpvFloatInteger __rpvFloatInteger)
   (setq _rpvDifferentialPseudorange __rpvDifferentialPseudorange)
   (setq _rpvPositionDifference __rpvPositionDifference)
   (setq _rpvEcefCovariance __rpvEcefCovariance)
   (setq _rpvFixedIntegerCov __rpvFixedIntegerCov)
   (setq _rpvFloatIntegerCov __rpvFloatIntegerCov)
   (setq _rpvDifferentialPseudorangeCov __rpvDifferentialPseudorangeCov)
   (setq _rpvNorm (float __rpvNorm))
   (setq _rpvFixedIntegerNorm (float __rpvFixedIntegerNorm))
   (setq _rpvFloatIntegerNorm (float __rpvFloatIntegerNorm))
   (setq _rpvDifferentialPseudorangeNorm (float __rpvDifferentialPseudorangeNorm))
   (setq _rpvPositionDifferenceNorm (float __rpvPositionDifferenceNorm))
   (setq _outputState __outputState)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:gpsTime
   (&rest __gpsTime)
   (if (keywordp (car __gpsTime))
       (send* _gpsTime __gpsTime)
     (progn
       (if __gpsTime (setq _gpsTime (car __gpsTime)))
       _gpsTime)))
  (:localPositionEcef
   (&rest __localPositionEcef)
   (if (keywordp (car __localPositionEcef))
       (send* _localPositionEcef __localPositionEcef)
     (progn
       (if __localPositionEcef (setq _localPositionEcef (car __localPositionEcef)))
       _localPositionEcef)))
  (:rpvEcef
   (&rest __rpvEcef)
   (if (keywordp (car __rpvEcef))
       (send* _rpvEcef __rpvEcef)
     (progn
       (if __rpvEcef (setq _rpvEcef (car __rpvEcef)))
       _rpvEcef)))
  (:rpvFixedInteger
   (&rest __rpvFixedInteger)
   (if (keywordp (car __rpvFixedInteger))
       (send* _rpvFixedInteger __rpvFixedInteger)
     (progn
       (if __rpvFixedInteger (setq _rpvFixedInteger (car __rpvFixedInteger)))
       _rpvFixedInteger)))
  (:rpvFloatInteger
   (&rest __rpvFloatInteger)
   (if (keywordp (car __rpvFloatInteger))
       (send* _rpvFloatInteger __rpvFloatInteger)
     (progn
       (if __rpvFloatInteger (setq _rpvFloatInteger (car __rpvFloatInteger)))
       _rpvFloatInteger)))
  (:rpvDifferentialPseudorange
   (&rest __rpvDifferentialPseudorange)
   (if (keywordp (car __rpvDifferentialPseudorange))
       (send* _rpvDifferentialPseudorange __rpvDifferentialPseudorange)
     (progn
       (if __rpvDifferentialPseudorange (setq _rpvDifferentialPseudorange (car __rpvDifferentialPseudorange)))
       _rpvDifferentialPseudorange)))
  (:rpvPositionDifference
   (&rest __rpvPositionDifference)
   (if (keywordp (car __rpvPositionDifference))
       (send* _rpvPositionDifference __rpvPositionDifference)
     (progn
       (if __rpvPositionDifference (setq _rpvPositionDifference (car __rpvPositionDifference)))
       _rpvPositionDifference)))
  (:rpvEcefCovariance
   (&optional __rpvEcefCovariance)
   (if __rpvEcefCovariance (setq _rpvEcefCovariance __rpvEcefCovariance)) _rpvEcefCovariance)
  (:rpvFixedIntegerCov
   (&optional __rpvFixedIntegerCov)
   (if __rpvFixedIntegerCov (setq _rpvFixedIntegerCov __rpvFixedIntegerCov)) _rpvFixedIntegerCov)
  (:rpvFloatIntegerCov
   (&optional __rpvFloatIntegerCov)
   (if __rpvFloatIntegerCov (setq _rpvFloatIntegerCov __rpvFloatIntegerCov)) _rpvFloatIntegerCov)
  (:rpvDifferentialPseudorangeCov
   (&optional __rpvDifferentialPseudorangeCov)
   (if __rpvDifferentialPseudorangeCov (setq _rpvDifferentialPseudorangeCov __rpvDifferentialPseudorangeCov)) _rpvDifferentialPseudorangeCov)
  (:rpvNorm
   (&optional __rpvNorm)
   (if __rpvNorm (setq _rpvNorm __rpvNorm)) _rpvNorm)
  (:rpvFixedIntegerNorm
   (&optional __rpvFixedIntegerNorm)
   (if __rpvFixedIntegerNorm (setq _rpvFixedIntegerNorm __rpvFixedIntegerNorm)) _rpvFixedIntegerNorm)
  (:rpvFloatIntegerNorm
   (&optional __rpvFloatIntegerNorm)
   (if __rpvFloatIntegerNorm (setq _rpvFloatIntegerNorm __rpvFloatIntegerNorm)) _rpvFloatIntegerNorm)
  (:rpvDifferentialPseudorangeNorm
   (&optional __rpvDifferentialPseudorangeNorm)
   (if __rpvDifferentialPseudorangeNorm (setq _rpvDifferentialPseudorangeNorm __rpvDifferentialPseudorangeNorm)) _rpvDifferentialPseudorangeNorm)
  (:rpvPositionDifferenceNorm
   (&optional __rpvPositionDifferenceNorm)
   (if __rpvPositionDifferenceNorm (setq _rpvPositionDifferenceNorm __rpvPositionDifferenceNorm)) _rpvPositionDifferenceNorm)
  (:outputState
   (&rest __outputState)
   (if (keywordp (car __outputState))
       (send* _outputState __outputState)
     (progn
       (if __outputState (setq _outputState (car __outputState)))
       _outputState)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; ros_sensor_msgs/GpsTime _gpsTime
    (send _gpsTime :serialization-length)
    ;; geometry_msgs/Point _localPositionEcef
    (send _localPositionEcef :serialization-length)
    ;; geometry_msgs/Vector3 _rpvEcef
    (send _rpvEcef :serialization-length)
    ;; geometry_msgs/Vector3 _rpvFixedInteger
    (send _rpvFixedInteger :serialization-length)
    ;; geometry_msgs/Vector3 _rpvFloatInteger
    (send _rpvFloatInteger :serialization-length)
    ;; geometry_msgs/Vector3 _rpvDifferentialPseudorange
    (send _rpvDifferentialPseudorange :serialization-length)
    ;; geometry_msgs/Vector3 _rpvPositionDifference
    (send _rpvPositionDifference :serialization-length)
    ;; float32[9] _rpvEcefCovariance
    (* 4    9)
    ;; float32[9] _rpvFixedIntegerCov
    (* 4    9)
    ;; float32[9] _rpvFloatIntegerCov
    (* 4    9)
    ;; float32[9] _rpvDifferentialPseudorangeCov
    (* 4    9)
    ;; float32 _rpvNorm
    4
    ;; float32 _rpvFixedIntegerNorm
    4
    ;; float32 _rpvFloatIntegerNorm
    4
    ;; float32 _rpvDifferentialPseudorangeNorm
    4
    ;; float32 _rpvPositionDifferenceNorm
    4
    ;; drtk/DrtkOutputState _outputState
    (send _outputState :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; ros_sensor_msgs/GpsTime _gpsTime
       (send _gpsTime :serialize s)
     ;; geometry_msgs/Point _localPositionEcef
       (send _localPositionEcef :serialize s)
     ;; geometry_msgs/Vector3 _rpvEcef
       (send _rpvEcef :serialize s)
     ;; geometry_msgs/Vector3 _rpvFixedInteger
       (send _rpvFixedInteger :serialize s)
     ;; geometry_msgs/Vector3 _rpvFloatInteger
       (send _rpvFloatInteger :serialize s)
     ;; geometry_msgs/Vector3 _rpvDifferentialPseudorange
       (send _rpvDifferentialPseudorange :serialize s)
     ;; geometry_msgs/Vector3 _rpvPositionDifference
       (send _rpvPositionDifference :serialize s)
     ;; float32[9] _rpvEcefCovariance
     (dotimes (i 9)
       (sys::poke (elt _rpvEcefCovariance i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[9] _rpvFixedIntegerCov
     (dotimes (i 9)
       (sys::poke (elt _rpvFixedIntegerCov i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[9] _rpvFloatIntegerCov
     (dotimes (i 9)
       (sys::poke (elt _rpvFloatIntegerCov i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[9] _rpvDifferentialPseudorangeCov
     (dotimes (i 9)
       (sys::poke (elt _rpvDifferentialPseudorangeCov i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _rpvNorm
       (sys::poke _rpvNorm (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rpvFixedIntegerNorm
       (sys::poke _rpvFixedIntegerNorm (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rpvFloatIntegerNorm
       (sys::poke _rpvFloatIntegerNorm (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rpvDifferentialPseudorangeNorm
       (sys::poke _rpvDifferentialPseudorangeNorm (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rpvPositionDifferenceNorm
       (sys::poke _rpvPositionDifferenceNorm (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; drtk/DrtkOutputState _outputState
       (send _outputState :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; ros_sensor_msgs/GpsTime _gpsTime
     (send _gpsTime :deserialize buf ptr-) (incf ptr- (send _gpsTime :serialization-length))
   ;; geometry_msgs/Point _localPositionEcef
     (send _localPositionEcef :deserialize buf ptr-) (incf ptr- (send _localPositionEcef :serialization-length))
   ;; geometry_msgs/Vector3 _rpvEcef
     (send _rpvEcef :deserialize buf ptr-) (incf ptr- (send _rpvEcef :serialization-length))
   ;; geometry_msgs/Vector3 _rpvFixedInteger
     (send _rpvFixedInteger :deserialize buf ptr-) (incf ptr- (send _rpvFixedInteger :serialization-length))
   ;; geometry_msgs/Vector3 _rpvFloatInteger
     (send _rpvFloatInteger :deserialize buf ptr-) (incf ptr- (send _rpvFloatInteger :serialization-length))
   ;; geometry_msgs/Vector3 _rpvDifferentialPseudorange
     (send _rpvDifferentialPseudorange :deserialize buf ptr-) (incf ptr- (send _rpvDifferentialPseudorange :serialization-length))
   ;; geometry_msgs/Vector3 _rpvPositionDifference
     (send _rpvPositionDifference :deserialize buf ptr-) (incf ptr- (send _rpvPositionDifference :serialization-length))
   ;; float32[9] _rpvEcefCovariance
   (dotimes (i (length _rpvEcefCovariance))
     (setf (elt _rpvEcefCovariance i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[9] _rpvFixedIntegerCov
   (dotimes (i (length _rpvFixedIntegerCov))
     (setf (elt _rpvFixedIntegerCov i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[9] _rpvFloatIntegerCov
   (dotimes (i (length _rpvFloatIntegerCov))
     (setf (elt _rpvFloatIntegerCov i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[9] _rpvDifferentialPseudorangeCov
   (dotimes (i (length _rpvDifferentialPseudorangeCov))
     (setf (elt _rpvDifferentialPseudorangeCov i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32 _rpvNorm
     (setq _rpvNorm (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rpvFixedIntegerNorm
     (setq _rpvFixedIntegerNorm (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rpvFloatIntegerNorm
     (setq _rpvFloatIntegerNorm (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rpvDifferentialPseudorangeNorm
     (setq _rpvDifferentialPseudorangeNorm (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rpvPositionDifferenceNorm
     (setq _rpvPositionDifferenceNorm (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; drtk/DrtkOutputState _outputState
     (send _outputState :deserialize buf ptr-) (incf ptr- (send _outputState :serialization-length))
   ;;
   self)
  )

(setf (get drtk::DrtkOutput :md5sum-) "534ac48f552f8772bee2064b837fb96a")
(setf (get drtk::DrtkOutput :datatype-) "drtk/DrtkOutput")
(setf (get drtk::DrtkOutput :definition-)
      "## DrtkOutput

std_msgs/Header   header
ros_sensor_msgs/GpsTime  gpsTime

geometry_msgs/Point      localPositionEcef

geometry_msgs/Vector3    rpvEcef
geometry_msgs/Vector3    rpvFixedInteger
geometry_msgs/Vector3    rpvFloatInteger
geometry_msgs/Vector3    rpvDifferentialPseudorange
geometry_msgs/Vector3    rpvPositionDifference

float32[9]               rpvEcefCovariance
float32[9]               rpvFixedIntegerCov
float32[9]               rpvFloatIntegerCov
float32[9]               rpvDifferentialPseudorangeCov

float32                  rpvNorm
float32                  rpvFixedIntegerNorm
float32                  rpvFloatIntegerNorm
float32                  rpvDifferentialPseudorangeNorm
float32                  rpvPositionDifferenceNorm

DrtkOutputState          outputState


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
MSG: ros_sensor_msgs/GpsTime
## GPS time structure
uint32          gps_week        # Full GPS week from (0:0:00 Jan 06, 1980)
float64         gps_seconds     # GPS seconds into week [sec]
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

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
MSG: drtk/DrtkOutputState
# DrtkOutputState

uint8 Unknown = 0
uint8 PositionDifferenceSolution = 1
uint8 PseudorangeOnlySolution = 2
uint8 LowPrecisionSolution = 3
uint8 HighPrecisionSolution = 4 

uint8 state
")



(provide :drtk/DrtkOutput "534ac48f552f8772bee2064b837fb96a")


