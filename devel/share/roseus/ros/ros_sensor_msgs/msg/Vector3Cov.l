;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::Vector3Cov)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'Vector3Cov (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::VECTOR3COV")
  (make-package "ROS_SENSOR_MSGS::VECTOR3COV"))

(in-package "ROS")
;;//! \htmlinclude Vector3Cov.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass ros_sensor_msgs::Vector3Cov
  :super ros::object
  :slots (_value _covariance ))

(defmethod ros_sensor_msgs::Vector3Cov
  (:init
   (&key
    ((:value __value) (instance geometry_msgs::Vector3 :init))
    ((:covariance __covariance) (make-array 9 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _value __value)
   (setq _covariance __covariance)
   self)
  (:value
   (&rest __value)
   (if (keywordp (car __value))
       (send* _value __value)
     (progn
       (if __value (setq _value (car __value)))
       _value)))
  (:covariance
   (&optional __covariance)
   (if __covariance (setq _covariance __covariance)) _covariance)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Vector3 _value
    (send _value :serialization-length)
    ;; float64[9] _covariance
    (* 8    9)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Vector3 _value
       (send _value :serialize s)
     ;; float64[9] _covariance
     (dotimes (i 9)
       (sys::poke (elt _covariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Vector3 _value
     (send _value :deserialize buf ptr-) (incf ptr- (send _value :serialization-length))
   ;; float64[9] _covariance
   (dotimes (i (length _covariance))
     (setf (elt _covariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get ros_sensor_msgs::Vector3Cov :md5sum-) "de0baac922d392f00f203ad8c610f8dc")
(setf (get ros_sensor_msgs::Vector3Cov :datatype-) "ros_sensor_msgs/Vector3Cov")
(setf (get ros_sensor_msgs::Vector3Cov :definition-)
      "geometry_msgs/Vector3 	value 		# unit
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



(provide :ros_sensor_msgs/Vector3Cov "de0baac922d392f00f203ad8c610f8dc")


