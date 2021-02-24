;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::Attitude)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'Attitude (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::ATTITUDE")
  (make-package "ROS_SENSOR_MSGS::ATTITUDE"))

(in-package "ROS")
;;//! \htmlinclude Attitude.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_sensor_msgs::Attitude
  :super ros::object
  :slots (_header _parent_frame_id _attitude ))

(defmethod ros_sensor_msgs::Attitude
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:parent_frame_id __parent_frame_id) "")
    ((:attitude __attitude) (instance ros_sensor_msgs::QuaternionCov :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _parent_frame_id (string __parent_frame_id))
   (setq _attitude __attitude)
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
  (:attitude
   (&rest __attitude)
   (if (keywordp (car __attitude))
       (send* _attitude __attitude)
     (progn
       (if __attitude (setq _attitude (car __attitude)))
       _attitude)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _parent_frame_id
    4 (length _parent_frame_id)
    ;; ros_sensor_msgs/QuaternionCov _attitude
    (send _attitude :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _parent_frame_id
       (write-long (length _parent_frame_id) s) (princ _parent_frame_id s)
     ;; ros_sensor_msgs/QuaternionCov _attitude
       (send _attitude :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _parent_frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _parent_frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; ros_sensor_msgs/QuaternionCov _attitude
     (send _attitude :deserialize buf ptr-) (incf ptr- (send _attitude :serialization-length))
   ;;
   self)
  )

(setf (get ros_sensor_msgs::Attitude :md5sum-) "e12ad82999e20dd8d27d2ef18130aab1")
(setf (get ros_sensor_msgs::Attitude :datatype-) "ros_sensor_msgs/Attitude")
(setf (get ros_sensor_msgs::Attitude :definition-)
      "std_msgs/Header header
string 			parent_frame_id
QuaternionCov 	attitude			# none, rad^2
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

")



(provide :ros_sensor_msgs/Attitude "e12ad82999e20dd8d27d2ef18130aab1")


