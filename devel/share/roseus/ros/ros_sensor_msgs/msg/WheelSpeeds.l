;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::WheelSpeeds)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'WheelSpeeds (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::WHEELSPEEDS")
  (make-package "ROS_SENSOR_MSGS::WHEELSPEEDS"))

(in-package "ROS")
;;//! \htmlinclude WheelSpeeds.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_sensor_msgs::WheelSpeeds
  :super ros::object
  :slots (_header _timestamp _dt _wheelSpeeds ))

(defmethod ros_sensor_msgs::WheelSpeeds
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:timestamp __timestamp) 0)
    ((:dt __dt) 0.0)
    ((:wheelSpeeds __wheelSpeeds) (let (r) (dotimes (i 0) (push (instance ros_sensor_msgs::WheelSpeed :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _timestamp (round __timestamp))
   (setq _dt (float __dt))
   (setq _wheelSpeeds __wheelSpeeds)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:dt
   (&optional __dt)
   (if __dt (setq _dt __dt)) _dt)
  (:wheelSpeeds
   (&rest __wheelSpeeds)
   (if (keywordp (car __wheelSpeeds))
       (send* _wheelSpeeds __wheelSpeeds)
     (progn
       (if __wheelSpeeds (setq _wheelSpeeds (car __wheelSpeeds)))
       _wheelSpeeds)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _timestamp
    4
    ;; float32 _dt
    4
    ;; ros_sensor_msgs/WheelSpeed[] _wheelSpeeds
    (apply #'+ (send-all _wheelSpeeds :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _timestamp
       (write-long _timestamp s)
     ;; float32 _dt
       (sys::poke _dt (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; ros_sensor_msgs/WheelSpeed[] _wheelSpeeds
     (write-long (length _wheelSpeeds) s)
     (dolist (elem _wheelSpeeds)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _timestamp
     (setq _timestamp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _dt
     (setq _dt (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; ros_sensor_msgs/WheelSpeed[] _wheelSpeeds
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _wheelSpeeds (let (r) (dotimes (i n) (push (instance ros_sensor_msgs::WheelSpeed :init) r)) r))
     (dolist (elem- _wheelSpeeds)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ros_sensor_msgs::WheelSpeeds :md5sum-) "52eb70e4e79e2d8a61fc2e247cb46e3f")
(setf (get ros_sensor_msgs::WheelSpeeds :datatype-) "ros_sensor_msgs/WheelSpeeds")
(setf (get ros_sensor_msgs::WheelSpeeds :definition-)
      "std_msgs/Header header
uint32 timestamp  # [counts]
float32 dt  # [sec]
WheelSpeed[] wheelSpeeds
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
MSG: ros_sensor_msgs/WheelSpeed
float64 	wheel_speed				    # m/s
float32 	wheel_speed_variance 	# (m/s)^2
string    wheel_name
")



(provide :ros_sensor_msgs/WheelSpeeds "52eb70e4e79e2d8a61fc2e247cb46e3f")


