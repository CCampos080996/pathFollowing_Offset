;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::Ranges)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'Ranges (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::RANGES")
  (make-package "ROS_SENSOR_MSGS::RANGES"))

(in-package "ROS")
;;//! \htmlinclude Ranges.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_sensor_msgs::Ranges
  :super ros::object
  :slots (_header _ranges ))

(defmethod ros_sensor_msgs::Ranges
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ranges __ranges) (let (r) (dotimes (i 0) (push (instance ros_sensor_msgs::Range :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _ranges __ranges)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:ranges
   (&rest __ranges)
   (if (keywordp (car __ranges))
       (send* _ranges __ranges)
     (progn
       (if __ranges (setq _ranges (car __ranges)))
       _ranges)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; ros_sensor_msgs/Range[] _ranges
    (apply #'+ (send-all _ranges :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; ros_sensor_msgs/Range[] _ranges
     (write-long (length _ranges) s)
     (dolist (elem _ranges)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; ros_sensor_msgs/Range[] _ranges
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ranges (let (r) (dotimes (i n) (push (instance ros_sensor_msgs::Range :init) r)) r))
     (dolist (elem- _ranges)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ros_sensor_msgs::Ranges :md5sum-) "3beec018182d82a34d6872cbae28a451")
(setf (get ros_sensor_msgs::Ranges :datatype-) "ros_sensor_msgs/Ranges")
(setf (get ros_sensor_msgs::Ranges :definition-)
      "# Generic ranges message from sensor to number of other objects 

std_msgs/Header header
Range[]         ranges
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
MSG: ros_sensor_msgs/Range
# Range to specified object
string  end_point_id
float64 range
")



(provide :ros_sensor_msgs/Ranges "3beec018182d82a34d6872cbae28a451")


