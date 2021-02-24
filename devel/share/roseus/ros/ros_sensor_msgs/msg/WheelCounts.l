;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::WheelCounts)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'WheelCounts (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::WHEELCOUNTS")
  (make-package "ROS_SENSOR_MSGS::WHEELCOUNTS"))

(in-package "ROS")
;;//! \htmlinclude WheelCounts.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_sensor_msgs::WheelCounts
  :super ros::object
  :slots (_header _timestamp _wheelCounts ))

(defmethod ros_sensor_msgs::WheelCounts
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:timestamp __timestamp) 0)
    ((:wheelCounts __wheelCounts) (let (r) (dotimes (i 0) (push (instance ros_sensor_msgs::WheelCount :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _timestamp (round __timestamp))
   (setq _wheelCounts __wheelCounts)
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
  (:wheelCounts
   (&rest __wheelCounts)
   (if (keywordp (car __wheelCounts))
       (send* _wheelCounts __wheelCounts)
     (progn
       (if __wheelCounts (setq _wheelCounts (car __wheelCounts)))
       _wheelCounts)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _timestamp
    4
    ;; ros_sensor_msgs/WheelCount[] _wheelCounts
    (apply #'+ (send-all _wheelCounts :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _timestamp
       (write-long _timestamp s)
     ;; ros_sensor_msgs/WheelCount[] _wheelCounts
     (write-long (length _wheelCounts) s)
     (dolist (elem _wheelCounts)
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
   ;; ros_sensor_msgs/WheelCount[] _wheelCounts
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _wheelCounts (let (r) (dotimes (i n) (push (instance ros_sensor_msgs::WheelCount :init) r)) r))
     (dolist (elem- _wheelCounts)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ros_sensor_msgs::WheelCounts :md5sum-) "7b7b3ed86a61cee066b9a17b6b58914a")
(setf (get ros_sensor_msgs::WheelCounts :datatype-) "ros_sensor_msgs/WheelCounts")
(setf (get ros_sensor_msgs::WheelCounts :definition-)
      "std_msgs/Header   header
uint32 timestamp  # [counts]
WheelCount[] wheelCounts
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
MSG: ros_sensor_msgs/WheelCount
uint32  wheel_count   # [counts]
bool    dir_forward   # true if moving forward
string  wheel_name
")



(provide :ros_sensor_msgs/WheelCounts "7b7b3ed86a61cee066b9a17b6b58914a")


