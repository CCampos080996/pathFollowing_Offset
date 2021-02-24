;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::NavStateCorrection)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'NavStateCorrection (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::NAVSTATECORRECTION")
  (make-package "ROS_SENSOR_MSGS::NAVSTATECORRECTION"))

(in-package "ROS")
;;//! \htmlinclude NavStateCorrection.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_sensor_msgs::NavStateCorrection
  :super ros::object
  :slots (_header _parent_frame_id _position_correction _velocity_correction _attitude_correction _gyro_bias _accel_bias ))

(defmethod ros_sensor_msgs::NavStateCorrection
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:parent_frame_id __parent_frame_id) "")
    ((:position_correction __position_correction) (instance ros_sensor_msgs::Vector3Cov :init))
    ((:velocity_correction __velocity_correction) (instance ros_sensor_msgs::Vector3Cov :init))
    ((:attitude_correction __attitude_correction) (instance ros_sensor_msgs::Vector3Cov :init))
    ((:gyro_bias __gyro_bias) (instance ros_sensor_msgs::Vector3Cov :init))
    ((:accel_bias __accel_bias) (instance ros_sensor_msgs::Vector3Cov :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _parent_frame_id (string __parent_frame_id))
   (setq _position_correction __position_correction)
   (setq _velocity_correction __velocity_correction)
   (setq _attitude_correction __attitude_correction)
   (setq _gyro_bias __gyro_bias)
   (setq _accel_bias __accel_bias)
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
  (:position_correction
   (&rest __position_correction)
   (if (keywordp (car __position_correction))
       (send* _position_correction __position_correction)
     (progn
       (if __position_correction (setq _position_correction (car __position_correction)))
       _position_correction)))
  (:velocity_correction
   (&rest __velocity_correction)
   (if (keywordp (car __velocity_correction))
       (send* _velocity_correction __velocity_correction)
     (progn
       (if __velocity_correction (setq _velocity_correction (car __velocity_correction)))
       _velocity_correction)))
  (:attitude_correction
   (&rest __attitude_correction)
   (if (keywordp (car __attitude_correction))
       (send* _attitude_correction __attitude_correction)
     (progn
       (if __attitude_correction (setq _attitude_correction (car __attitude_correction)))
       _attitude_correction)))
  (:gyro_bias
   (&rest __gyro_bias)
   (if (keywordp (car __gyro_bias))
       (send* _gyro_bias __gyro_bias)
     (progn
       (if __gyro_bias (setq _gyro_bias (car __gyro_bias)))
       _gyro_bias)))
  (:accel_bias
   (&rest __accel_bias)
   (if (keywordp (car __accel_bias))
       (send* _accel_bias __accel_bias)
     (progn
       (if __accel_bias (setq _accel_bias (car __accel_bias)))
       _accel_bias)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _parent_frame_id
    4 (length _parent_frame_id)
    ;; ros_sensor_msgs/Vector3Cov _position_correction
    (send _position_correction :serialization-length)
    ;; ros_sensor_msgs/Vector3Cov _velocity_correction
    (send _velocity_correction :serialization-length)
    ;; ros_sensor_msgs/Vector3Cov _attitude_correction
    (send _attitude_correction :serialization-length)
    ;; ros_sensor_msgs/Vector3Cov _gyro_bias
    (send _gyro_bias :serialization-length)
    ;; ros_sensor_msgs/Vector3Cov _accel_bias
    (send _accel_bias :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _parent_frame_id
       (write-long (length _parent_frame_id) s) (princ _parent_frame_id s)
     ;; ros_sensor_msgs/Vector3Cov _position_correction
       (send _position_correction :serialize s)
     ;; ros_sensor_msgs/Vector3Cov _velocity_correction
       (send _velocity_correction :serialize s)
     ;; ros_sensor_msgs/Vector3Cov _attitude_correction
       (send _attitude_correction :serialize s)
     ;; ros_sensor_msgs/Vector3Cov _gyro_bias
       (send _gyro_bias :serialize s)
     ;; ros_sensor_msgs/Vector3Cov _accel_bias
       (send _accel_bias :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _parent_frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _parent_frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; ros_sensor_msgs/Vector3Cov _position_correction
     (send _position_correction :deserialize buf ptr-) (incf ptr- (send _position_correction :serialization-length))
   ;; ros_sensor_msgs/Vector3Cov _velocity_correction
     (send _velocity_correction :deserialize buf ptr-) (incf ptr- (send _velocity_correction :serialization-length))
   ;; ros_sensor_msgs/Vector3Cov _attitude_correction
     (send _attitude_correction :deserialize buf ptr-) (incf ptr- (send _attitude_correction :serialization-length))
   ;; ros_sensor_msgs/Vector3Cov _gyro_bias
     (send _gyro_bias :deserialize buf ptr-) (incf ptr- (send _gyro_bias :serialization-length))
   ;; ros_sensor_msgs/Vector3Cov _accel_bias
     (send _accel_bias :deserialize buf ptr-) (incf ptr- (send _accel_bias :serialization-length))
   ;;
   self)
  )

(setf (get ros_sensor_msgs::NavStateCorrection :md5sum-) "a318981e584d094f12f75c3a0b2e6e1a")
(setf (get ros_sensor_msgs::NavStateCorrection :datatype-) "ros_sensor_msgs/NavStateCorrection")
(setf (get ros_sensor_msgs::NavStateCorrection :definition-)
      "std_msgs/Header header
string 			parent_frame_id
Vector3Cov 		position_correction		# m, m^2
Vector3Cov 		velocity_correction 	# m/s, (m/s)^2
Vector3Cov 		attitude_correction 	# none, rad^2
Vector3Cov 		gyro_bias 				# rad/s, (rad/s)^2
Vector3Cov 		accel_bias 				# (m/s^2), (m/s^2)^2
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
")



(provide :ros_sensor_msgs/NavStateCorrection "a318981e584d094f12f75c3a0b2e6e1a")


