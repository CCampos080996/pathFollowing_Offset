;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::ImuParameters)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'ImuParameters (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::IMUPARAMETERS")
  (make-package "ROS_SENSOR_MSGS::IMUPARAMETERS"))

(in-package "ROS")
;;//! \htmlinclude ImuParameters.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_sensor_msgs::ImuParameters
  :super ros::object
  :slots (_header _gyro _accel ))

(defmethod ros_sensor_msgs::ImuParameters
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:gyro __gyro) (instance ros_sensor_msgs::SensorParams3Axis :init))
    ((:accel __accel) (instance ros_sensor_msgs::SensorParams3Axis :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _gyro __gyro)
   (setq _accel __accel)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:gyro
   (&rest __gyro)
   (if (keywordp (car __gyro))
       (send* _gyro __gyro)
     (progn
       (if __gyro (setq _gyro (car __gyro)))
       _gyro)))
  (:accel
   (&rest __accel)
   (if (keywordp (car __accel))
       (send* _accel __accel)
     (progn
       (if __accel (setq _accel (car __accel)))
       _accel)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; ros_sensor_msgs/SensorParams3Axis _gyro
    (send _gyro :serialization-length)
    ;; ros_sensor_msgs/SensorParams3Axis _accel
    (send _accel :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; ros_sensor_msgs/SensorParams3Axis _gyro
       (send _gyro :serialize s)
     ;; ros_sensor_msgs/SensorParams3Axis _accel
       (send _accel :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; ros_sensor_msgs/SensorParams3Axis _gyro
     (send _gyro :deserialize buf ptr-) (incf ptr- (send _gyro :serialization-length))
   ;; ros_sensor_msgs/SensorParams3Axis _accel
     (send _accel :deserialize buf ptr-) (incf ptr- (send _accel :serialization-length))
   ;;
   self)
  )

(setf (get ros_sensor_msgs::ImuParameters :md5sum-) "65bb04ba3e7976a0cb2a90024977dfd3")
(setf (get ros_sensor_msgs::ImuParameters :datatype-) "ros_sensor_msgs/ImuParameters")
(setf (get ros_sensor_msgs::ImuParameters :definition-)
      "std_msgs/Header header

SensorParams3Axis gyro
SensorParams3Axis accel
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
MSG: ros_sensor_msgs/SensorParams3Axis
Vector3Cov bias
Vector3Cov scaleFactor
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



(provide :ros_sensor_msgs/ImuParameters "65bb04ba3e7976a0cb2a90024977dfd3")


