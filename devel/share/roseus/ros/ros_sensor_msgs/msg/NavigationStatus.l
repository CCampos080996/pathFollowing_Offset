;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::NavigationStatus)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'NavigationStatus (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::NAVIGATIONSTATUS")
  (make-package "ROS_SENSOR_MSGS::NAVIGATIONSTATUS"))

(in-package "ROS")
;;//! \htmlinclude NavigationStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*UNKNOWN*" (find-package "ROS_SENSOR_MSGS::NAVIGATIONSTATUS"))
(shadow '*UNKNOWN* (find-package "ROS_SENSOR_MSGS::NAVIGATIONSTATUS"))
(defconstant ros_sensor_msgs::NavigationStatus::*UNKNOWN* 0)
(intern "*UNINITIALIZED*" (find-package "ROS_SENSOR_MSGS::NAVIGATIONSTATUS"))
(shadow '*UNINITIALIZED* (find-package "ROS_SENSOR_MSGS::NAVIGATIONSTATUS"))
(defconstant ros_sensor_msgs::NavigationStatus::*UNINITIALIZED* 1)
(intern "*PERFORMING_STATIC_INIT*" (find-package "ROS_SENSOR_MSGS::NAVIGATIONSTATUS"))
(shadow '*PERFORMING_STATIC_INIT* (find-package "ROS_SENSOR_MSGS::NAVIGATIONSTATUS"))
(defconstant ros_sensor_msgs::NavigationStatus::*PERFORMING_STATIC_INIT* 2)
(intern "*STATIC_INIT_COMPLETE*" (find-package "ROS_SENSOR_MSGS::NAVIGATIONSTATUS"))
(shadow '*STATIC_INIT_COMPLETE* (find-package "ROS_SENSOR_MSGS::NAVIGATIONSTATUS"))
(defconstant ros_sensor_msgs::NavigationStatus::*STATIC_INIT_COMPLETE* 3)
(intern "*INITIALIZED*" (find-package "ROS_SENSOR_MSGS::NAVIGATIONSTATUS"))
(shadow '*INITIALIZED* (find-package "ROS_SENSOR_MSGS::NAVIGATIONSTATUS"))
(defconstant ros_sensor_msgs::NavigationStatus::*INITIALIZED* 4)
(defclass ros_sensor_msgs::NavigationStatus
  :super ros::object
  :slots (_header _navigation_status ))

(defmethod ros_sensor_msgs::NavigationStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:navigation_status __navigation_status) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _navigation_status (round __navigation_status))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:navigation_status
   (&optional __navigation_status)
   (if __navigation_status (setq _navigation_status __navigation_status)) _navigation_status)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint16 _navigation_status
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint16 _navigation_status
       (write-word _navigation_status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint16 _navigation_status
     (setq _navigation_status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get ros_sensor_msgs::NavigationStatus :md5sum-) "f2931775966732172fda0561a2b051ee")
(setf (get ros_sensor_msgs::NavigationStatus :datatype-) "ros_sensor_msgs/NavigationStatus")
(setf (get ros_sensor_msgs::NavigationStatus :definition-)
      "
uint16  UNKNOWN                = 0
uint16  UNINITIALIZED          = 1
uint16  PERFORMING_STATIC_INIT = 2
uint16  STATIC_INIT_COMPLETE   = 3
uint16  INITIALIZED            = 4

std_msgs/Header header
uint16           navigation_status
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



(provide :ros_sensor_msgs/NavigationStatus "f2931775966732172fda0561a2b051ee")


