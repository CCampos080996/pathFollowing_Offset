;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::PositionOffset)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'PositionOffset (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::POSITIONOFFSET")
  (make-package "ROS_SENSOR_MSGS::POSITIONOFFSET"))

(in-package "ROS")
;;//! \htmlinclude PositionOffset.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_sensor_msgs::PositionOffset
  :super ros::object
  :slots (_header _parent_frame_id _offset ))

(defmethod ros_sensor_msgs::PositionOffset
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:parent_frame_id __parent_frame_id) "")
    ((:offset __offset) (instance ros_sensor_msgs::Vector3Cov :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _parent_frame_id (string __parent_frame_id))
   (setq _offset __offset)
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
  (:offset
   (&rest __offset)
   (if (keywordp (car __offset))
       (send* _offset __offset)
     (progn
       (if __offset (setq _offset (car __offset)))
       _offset)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _parent_frame_id
    4 (length _parent_frame_id)
    ;; ros_sensor_msgs/Vector3Cov _offset
    (send _offset :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _parent_frame_id
       (write-long (length _parent_frame_id) s) (princ _parent_frame_id s)
     ;; ros_sensor_msgs/Vector3Cov _offset
       (send _offset :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _parent_frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _parent_frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; ros_sensor_msgs/Vector3Cov _offset
     (send _offset :deserialize buf ptr-) (incf ptr- (send _offset :serialization-length))
   ;;
   self)
  )

(setf (get ros_sensor_msgs::PositionOffset :md5sum-) "9c22be7a258b7803423f53581e781868")
(setf (get ros_sensor_msgs::PositionOffset :datatype-) "ros_sensor_msgs/PositionOffset")
(setf (get ros_sensor_msgs::PositionOffset :definition-)
      "std_msgs/Header header

string          parent_frame_id

Vector3Cov offset # m, m^2: position of header.frameId with respect to parent_frame_id expressed in parent_frame_id
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



(provide :ros_sensor_msgs/PositionOffset "9c22be7a258b7803423f53581e781868")


