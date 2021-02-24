;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::RfRangeStamped)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'RfRangeStamped (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::RFRANGESTAMPED")
  (make-package "ROS_SENSOR_MSGS::RFRANGESTAMPED"))

(in-package "ROS")
;;//! \htmlinclude RfRangeStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_sensor_msgs::RfRangeStamped
  :super ros::object
  :slots (_header _range ))

(defmethod ros_sensor_msgs::RfRangeStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:range __range) (instance ros_sensor_msgs::RfRange :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _range __range)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:range
   (&rest __range)
   (if (keywordp (car __range))
       (send* _range __range)
     (progn
       (if __range (setq _range (car __range)))
       _range)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; ros_sensor_msgs/RfRange _range
    (send _range :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; ros_sensor_msgs/RfRange _range
       (send _range :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; ros_sensor_msgs/RfRange _range
     (send _range :deserialize buf ptr-) (incf ptr- (send _range :serialization-length))
   ;;
   self)
  )

(setf (get ros_sensor_msgs::RfRangeStamped :md5sum-) "378ea5340748652ee3ac4cf51f1f4e8c")
(setf (get ros_sensor_msgs::RfRangeStamped :datatype-) "ros_sensor_msgs/RfRangeStamped")
(setf (get ros_sensor_msgs::RfRangeStamped :definition-)
      "# Range to specified object
std_msgs/Header   header
RfRange           range
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

")



(provide :ros_sensor_msgs/RfRangeStamped "378ea5340748652ee3ac4cf51f1f4e8c")


