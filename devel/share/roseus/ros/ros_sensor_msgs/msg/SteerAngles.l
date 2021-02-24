;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::SteerAngles)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'SteerAngles (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::STEERANGLES")
  (make-package "ROS_SENSOR_MSGS::STEERANGLES"))

(in-package "ROS")
;;//! \htmlinclude SteerAngles.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_sensor_msgs::SteerAngles
  :super ros::object
  :slots (_header _steerAngles ))

(defmethod ros_sensor_msgs::SteerAngles
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:steerAngles __steerAngles) (let (r) (dotimes (i 0) (push (instance ros_sensor_msgs::SteerAngle :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _steerAngles __steerAngles)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:steerAngles
   (&rest __steerAngles)
   (if (keywordp (car __steerAngles))
       (send* _steerAngles __steerAngles)
     (progn
       (if __steerAngles (setq _steerAngles (car __steerAngles)))
       _steerAngles)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; ros_sensor_msgs/SteerAngle[] _steerAngles
    (apply #'+ (send-all _steerAngles :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; ros_sensor_msgs/SteerAngle[] _steerAngles
     (write-long (length _steerAngles) s)
     (dolist (elem _steerAngles)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; ros_sensor_msgs/SteerAngle[] _steerAngles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _steerAngles (let (r) (dotimes (i n) (push (instance ros_sensor_msgs::SteerAngle :init) r)) r))
     (dolist (elem- _steerAngles)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ros_sensor_msgs::SteerAngles :md5sum-) "9188ff5ff1671fda9fc814d8248c0fb7")
(setf (get ros_sensor_msgs::SteerAngles :datatype-) "ros_sensor_msgs/SteerAngles")
(setf (get ros_sensor_msgs::SteerAngles :definition-)
      "std_msgs/Header header
SteerAngle[] steerAngles
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
MSG: ros_sensor_msgs/SteerAngle
float64    steer_angle				 # rad
float64    steer_angle_variance 	 # rad^2
float64    steer_angle_rate          # rad/s
float64    steer_angle_rate_variance # (rad/s)^2
string     wheel_name
")



(provide :ros_sensor_msgs/SteerAngles "9188ff5ff1671fda9fc814d8248c0fb7")


