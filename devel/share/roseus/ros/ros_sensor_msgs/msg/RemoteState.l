;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::RemoteState)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'RemoteState (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::REMOTESTATE")
  (make-package "ROS_SENSOR_MSGS::REMOTESTATE"))

(in-package "ROS")
;;//! \htmlinclude RemoteState.msg.html


(defclass ros_sensor_msgs::RemoteState
  :super ros::object
  :slots (_range _state ))

(defmethod ros_sensor_msgs::RemoteState
  (:init
   (&key
    ((:range __range) (instance ros_sensor_msgs::RfRange :init))
    ((:state __state) (instance ros_sensor_msgs::NavState :init))
    )
   (send-super :init)
   (setq _range __range)
   (setq _state __state)
   self)
  (:range
   (&rest __range)
   (if (keywordp (car __range))
       (send* _range __range)
     (progn
       (if __range (setq _range (car __range)))
       _range)))
  (:state
   (&rest __state)
   (if (keywordp (car __state))
       (send* _state __state)
     (progn
       (if __state (setq _state (car __state)))
       _state)))
  (:serialization-length
   ()
   (+
    ;; ros_sensor_msgs/RfRange _range
    (send _range :serialization-length)
    ;; ros_sensor_msgs/NavState _state
    (send _state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ros_sensor_msgs/RfRange _range
       (send _range :serialize s)
     ;; ros_sensor_msgs/NavState _state
       (send _state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ros_sensor_msgs/RfRange _range
     (send _range :deserialize buf ptr-) (incf ptr- (send _range :serialization-length))
   ;; ros_sensor_msgs/NavState _state
     (send _state :deserialize buf ptr-) (incf ptr- (send _state :serialization-length))
   ;;
   self)
  )

(setf (get ros_sensor_msgs::RemoteState :md5sum-) "d8939a9b77cb82f4bd081b34aff50780")
(setf (get ros_sensor_msgs::RemoteState :datatype-) "ros_sensor_msgs/RemoteState")
(setf (get ros_sensor_msgs::RemoteState :definition-)
      "RfRange           range
NavState		  state
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
MSG: ros_sensor_msgs/NavState
std_msgs/Header header
string 			parent_frame_id

Vector3Cov 		position		# m, m^2
Vector3Cov 		velocity		# m/s, (m/s)^2
QuaternionCov 	attitude		# none, rad^2
AssuranceLevel  assuranceLevel
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
MSG: ros_sensor_msgs/Vector3Cov
geometry_msgs/Vector3 	value 		# unit
float64[9] 				covariance 	# unit^2
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
MSG: ros_sensor_msgs/QuaternionCov
geometry_msgs/Quaternion 	value
float64[9] 				 	covariance 	# rad^2
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: ros_sensor_msgs/AssuranceLevel
uint8  Normal   = 0
uint8  Unknown  = 1
uint8  Warning  = 2
uint8  Attack   = 3

uint8 level
")



(provide :ros_sensor_msgs/RemoteState "d8939a9b77cb82f4bd081b34aff50780")


