;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::PpsOffsetCmd)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'PpsOffsetCmd (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::PPSOFFSETCMD")
  (make-package "ROS_SENSOR_MSGS::PPSOFFSETCMD"))

(in-package "ROS")
;;//! \htmlinclude PpsOffsetCmd.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_sensor_msgs::PpsOffsetCmd
  :super ros::object
  :slots (_header _offset_counts _drift_counts ))

(defmethod ros_sensor_msgs::PpsOffsetCmd
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:offset_counts __offset_counts) 0)
    ((:drift_counts __drift_counts) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _offset_counts (round __offset_counts))
   (setq _drift_counts (round __drift_counts))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:offset_counts
   (&optional __offset_counts)
   (if __offset_counts (setq _offset_counts __offset_counts)) _offset_counts)
  (:drift_counts
   (&optional __drift_counts)
   (if __drift_counts (setq _drift_counts __drift_counts)) _drift_counts)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _offset_counts
    4
    ;; int32 _drift_counts
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _offset_counts
       (write-long _offset_counts s)
     ;; int32 _drift_counts
       (write-long _drift_counts s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _offset_counts
     (setq _offset_counts (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _drift_counts
     (setq _drift_counts (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ros_sensor_msgs::PpsOffsetCmd :md5sum-) "9fc7471197658b908cb56e3b379ad9ed")
(setf (get ros_sensor_msgs::PpsOffsetCmd :datatype-) "ros_sensor_msgs/PpsOffsetCmd")
(setf (get ros_sensor_msgs::PpsOffsetCmd :definition-)
      "
std_msgs/Header   header
int32             offset_counts
int32             drift_counts
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

")



(provide :ros_sensor_msgs/PpsOffsetCmd "9fc7471197658b908cb56e3b379ad9ed")


