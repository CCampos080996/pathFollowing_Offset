;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::SensorParams3Axis)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'SensorParams3Axis (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::SENSORPARAMS3AXIS")
  (make-package "ROS_SENSOR_MSGS::SENSORPARAMS3AXIS"))

(in-package "ROS")
;;//! \htmlinclude SensorParams3Axis.msg.html


(defclass ros_sensor_msgs::SensorParams3Axis
  :super ros::object
  :slots (_bias _scaleFactor ))

(defmethod ros_sensor_msgs::SensorParams3Axis
  (:init
   (&key
    ((:bias __bias) (instance ros_sensor_msgs::Vector3Cov :init))
    ((:scaleFactor __scaleFactor) (instance ros_sensor_msgs::Vector3Cov :init))
    )
   (send-super :init)
   (setq _bias __bias)
   (setq _scaleFactor __scaleFactor)
   self)
  (:bias
   (&rest __bias)
   (if (keywordp (car __bias))
       (send* _bias __bias)
     (progn
       (if __bias (setq _bias (car __bias)))
       _bias)))
  (:scaleFactor
   (&rest __scaleFactor)
   (if (keywordp (car __scaleFactor))
       (send* _scaleFactor __scaleFactor)
     (progn
       (if __scaleFactor (setq _scaleFactor (car __scaleFactor)))
       _scaleFactor)))
  (:serialization-length
   ()
   (+
    ;; ros_sensor_msgs/Vector3Cov _bias
    (send _bias :serialization-length)
    ;; ros_sensor_msgs/Vector3Cov _scaleFactor
    (send _scaleFactor :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ros_sensor_msgs/Vector3Cov _bias
       (send _bias :serialize s)
     ;; ros_sensor_msgs/Vector3Cov _scaleFactor
       (send _scaleFactor :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ros_sensor_msgs/Vector3Cov _bias
     (send _bias :deserialize buf ptr-) (incf ptr- (send _bias :serialization-length))
   ;; ros_sensor_msgs/Vector3Cov _scaleFactor
     (send _scaleFactor :deserialize buf ptr-) (incf ptr- (send _scaleFactor :serialization-length))
   ;;
   self)
  )

(setf (get ros_sensor_msgs::SensorParams3Axis :md5sum-) "24c3e2bb8a356470f1a6dba76b1bcfc1")
(setf (get ros_sensor_msgs::SensorParams3Axis :datatype-) "ros_sensor_msgs/SensorParams3Axis")
(setf (get ros_sensor_msgs::SensorParams3Axis :definition-)
      "Vector3Cov bias
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



(provide :ros_sensor_msgs/SensorParams3Axis "24c3e2bb8a356470f1a6dba76b1bcfc1")


