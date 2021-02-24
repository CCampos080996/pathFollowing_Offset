;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::NavInput)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'NavInput (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::NAVINPUT")
  (make-package "ROS_SENSOR_MSGS::NAVINPUT"))

(in-package "ROS")
;;//! \htmlinclude NavInput.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_sensor_msgs::NavInput
  :super ros::object
  :slots (_header _parent_frame_id _angular_velocity _specific_force ))

(defmethod ros_sensor_msgs::NavInput
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:parent_frame_id __parent_frame_id) "")
    ((:angular_velocity __angular_velocity) (instance ros_sensor_msgs::Vector3Cov :init))
    ((:specific_force __specific_force) (instance ros_sensor_msgs::Vector3Cov :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _parent_frame_id (string __parent_frame_id))
   (setq _angular_velocity __angular_velocity)
   (setq _specific_force __specific_force)
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
  (:angular_velocity
   (&rest __angular_velocity)
   (if (keywordp (car __angular_velocity))
       (send* _angular_velocity __angular_velocity)
     (progn
       (if __angular_velocity (setq _angular_velocity (car __angular_velocity)))
       _angular_velocity)))
  (:specific_force
   (&rest __specific_force)
   (if (keywordp (car __specific_force))
       (send* _specific_force __specific_force)
     (progn
       (if __specific_force (setq _specific_force (car __specific_force)))
       _specific_force)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _parent_frame_id
    4 (length _parent_frame_id)
    ;; ros_sensor_msgs/Vector3Cov _angular_velocity
    (send _angular_velocity :serialization-length)
    ;; ros_sensor_msgs/Vector3Cov _specific_force
    (send _specific_force :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _parent_frame_id
       (write-long (length _parent_frame_id) s) (princ _parent_frame_id s)
     ;; ros_sensor_msgs/Vector3Cov _angular_velocity
       (send _angular_velocity :serialize s)
     ;; ros_sensor_msgs/Vector3Cov _specific_force
       (send _specific_force :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _parent_frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _parent_frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; ros_sensor_msgs/Vector3Cov _angular_velocity
     (send _angular_velocity :deserialize buf ptr-) (incf ptr- (send _angular_velocity :serialization-length))
   ;; ros_sensor_msgs/Vector3Cov _specific_force
     (send _specific_force :deserialize buf ptr-) (incf ptr- (send _specific_force :serialization-length))
   ;;
   self)
  )

(setf (get ros_sensor_msgs::NavInput :md5sum-) "6557125bee8e6f09abab155a5183d467")
(setf (get ros_sensor_msgs::NavInput :datatype-) "ros_sensor_msgs/NavInput")
(setf (get ros_sensor_msgs::NavInput :definition-)
      "std_msgs/Header header
string 			parent_frame_id

Vector3Cov 		angular_velocity	# rad/s, (rad/s)^2/Hz (noise spectral density)
Vector3Cov 		specific_force		# m/(s^2), (m/(s^2))^2/Hz (noise spectral density)
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



(provide :ros_sensor_msgs/NavInput "6557125bee8e6f09abab155a5183d467")


