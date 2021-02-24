;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::NavState)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'NavState (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::NAVSTATE")
  (make-package "ROS_SENSOR_MSGS::NAVSTATE"))

(in-package "ROS")
;;//! \htmlinclude NavState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_sensor_msgs::NavState
  :super ros::object
  :slots (_header _parent_frame_id _position _velocity _attitude _assuranceLevel ))

(defmethod ros_sensor_msgs::NavState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:parent_frame_id __parent_frame_id) "")
    ((:position __position) (instance ros_sensor_msgs::Vector3Cov :init))
    ((:velocity __velocity) (instance ros_sensor_msgs::Vector3Cov :init))
    ((:attitude __attitude) (instance ros_sensor_msgs::QuaternionCov :init))
    ((:assuranceLevel __assuranceLevel) (instance ros_sensor_msgs::AssuranceLevel :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _parent_frame_id (string __parent_frame_id))
   (setq _position __position)
   (setq _velocity __velocity)
   (setq _attitude __attitude)
   (setq _assuranceLevel __assuranceLevel)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:parent_frame_id
   (&optional __parent_frame_id)
   (if __parent_frame_id (setq _parent_frame_id __parent_frame_id)) _parent_frame_id)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:attitude
   (&rest __attitude)
   (if (keywordp (car __attitude))
       (send* _attitude __attitude)
     (progn
       (if __attitude (setq _attitude (car __attitude)))
       _attitude)))
  (:assuranceLevel
   (&rest __assuranceLevel)
   (if (keywordp (car __assuranceLevel))
       (send* _assuranceLevel __assuranceLevel)
     (progn
       (if __assuranceLevel (setq _assuranceLevel (car __assuranceLevel)))
       _assuranceLevel)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _parent_frame_id
    4 (length _parent_frame_id)
    ;; ros_sensor_msgs/Vector3Cov _position
    (send _position :serialization-length)
    ;; ros_sensor_msgs/Vector3Cov _velocity
    (send _velocity :serialization-length)
    ;; ros_sensor_msgs/QuaternionCov _attitude
    (send _attitude :serialization-length)
    ;; ros_sensor_msgs/AssuranceLevel _assuranceLevel
    (send _assuranceLevel :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _parent_frame_id
       (write-long (length _parent_frame_id) s) (princ _parent_frame_id s)
     ;; ros_sensor_msgs/Vector3Cov _position
       (send _position :serialize s)
     ;; ros_sensor_msgs/Vector3Cov _velocity
       (send _velocity :serialize s)
     ;; ros_sensor_msgs/QuaternionCov _attitude
       (send _attitude :serialize s)
     ;; ros_sensor_msgs/AssuranceLevel _assuranceLevel
       (send _assuranceLevel :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _parent_frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _parent_frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; ros_sensor_msgs/Vector3Cov _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; ros_sensor_msgs/Vector3Cov _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; ros_sensor_msgs/QuaternionCov _attitude
     (send _attitude :deserialize buf ptr-) (incf ptr- (send _attitude :serialization-length))
   ;; ros_sensor_msgs/AssuranceLevel _assuranceLevel
     (send _assuranceLevel :deserialize buf ptr-) (incf ptr- (send _assuranceLevel :serialization-length))
   ;;
   self)
  )

(setf (get ros_sensor_msgs::NavState :md5sum-) "24804c40e60ccc8400a9fcc2cccc88b2")
(setf (get ros_sensor_msgs::NavState :datatype-) "ros_sensor_msgs/NavState")
(setf (get ros_sensor_msgs::NavState :definition-)
      "std_msgs/Header header
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



(provide :ros_sensor_msgs/NavState "24804c40e60ccc8400a9fcc2cccc88b2")


