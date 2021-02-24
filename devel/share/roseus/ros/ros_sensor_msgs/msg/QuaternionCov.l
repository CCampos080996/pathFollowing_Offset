;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::QuaternionCov)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'QuaternionCov (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::QUATERNIONCOV")
  (make-package "ROS_SENSOR_MSGS::QUATERNIONCOV"))

(in-package "ROS")
;;//! \htmlinclude QuaternionCov.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass ros_sensor_msgs::QuaternionCov
  :super ros::object
  :slots (_value _covariance ))

(defmethod ros_sensor_msgs::QuaternionCov
  (:init
   (&key
    ((:value __value) (instance geometry_msgs::Quaternion :init))
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
    ;; geometry_msgs/Quaternion _value
    (send _value :serialization-length)
    ;; float64[9] _covariance
    (* 8    9)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Quaternion _value
       (send _value :serialize s)
     ;; float64[9] _covariance
     (dotimes (i 9)
       (sys::poke (elt _covariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Quaternion _value
     (send _value :deserialize buf ptr-) (incf ptr- (send _value :serialization-length))
   ;; float64[9] _covariance
   (dotimes (i (length _covariance))
     (setf (elt _covariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get ros_sensor_msgs::QuaternionCov :md5sum-) "3b94d7700299a5d383fc6e27f12bd18b")
(setf (get ros_sensor_msgs::QuaternionCov :datatype-) "ros_sensor_msgs/QuaternionCov")
(setf (get ros_sensor_msgs::QuaternionCov :definition-)
      "geometry_msgs/Quaternion 	value
float64[9] 				 	covariance 	# rad^2
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :ros_sensor_msgs/QuaternionCov "3b94d7700299a5d383fc6e27f12bd18b")


