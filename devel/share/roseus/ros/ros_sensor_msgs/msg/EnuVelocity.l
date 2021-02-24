;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::EnuVelocity)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'EnuVelocity (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::ENUVELOCITY")
  (make-package "ROS_SENSOR_MSGS::ENUVELOCITY"))

(in-package "ROS")
;;//! \htmlinclude EnuVelocity.msg.html


(defclass ros_sensor_msgs::EnuVelocity
  :super ros::object
  :slots (_eastVelocity _northVelocity _upVelocity _horizontalAccuracy _verticalAccuracy ))

(defmethod ros_sensor_msgs::EnuVelocity
  (:init
   (&key
    ((:eastVelocity __eastVelocity) 0.0)
    ((:northVelocity __northVelocity) 0.0)
    ((:upVelocity __upVelocity) 0.0)
    ((:horizontalAccuracy __horizontalAccuracy) 0.0)
    ((:verticalAccuracy __verticalAccuracy) 0.0)
    )
   (send-super :init)
   (setq _eastVelocity (float __eastVelocity))
   (setq _northVelocity (float __northVelocity))
   (setq _upVelocity (float __upVelocity))
   (setq _horizontalAccuracy (float __horizontalAccuracy))
   (setq _verticalAccuracy (float __verticalAccuracy))
   self)
  (:eastVelocity
   (&optional __eastVelocity)
   (if __eastVelocity (setq _eastVelocity __eastVelocity)) _eastVelocity)
  (:northVelocity
   (&optional __northVelocity)
   (if __northVelocity (setq _northVelocity __northVelocity)) _northVelocity)
  (:upVelocity
   (&optional __upVelocity)
   (if __upVelocity (setq _upVelocity __upVelocity)) _upVelocity)
  (:horizontalAccuracy
   (&optional __horizontalAccuracy)
   (if __horizontalAccuracy (setq _horizontalAccuracy __horizontalAccuracy)) _horizontalAccuracy)
  (:verticalAccuracy
   (&optional __verticalAccuracy)
   (if __verticalAccuracy (setq _verticalAccuracy __verticalAccuracy)) _verticalAccuracy)
  (:serialization-length
   ()
   (+
    ;; float64 _eastVelocity
    8
    ;; float64 _northVelocity
    8
    ;; float64 _upVelocity
    8
    ;; float32 _horizontalAccuracy
    4
    ;; float32 _verticalAccuracy
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _eastVelocity
       (sys::poke _eastVelocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _northVelocity
       (sys::poke _northVelocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _upVelocity
       (sys::poke _upVelocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _horizontalAccuracy
       (sys::poke _horizontalAccuracy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _verticalAccuracy
       (sys::poke _verticalAccuracy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _eastVelocity
     (setq _eastVelocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _northVelocity
     (setq _northVelocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _upVelocity
     (setq _upVelocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _horizontalAccuracy
     (setq _horizontalAccuracy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _verticalAccuracy
     (setq _verticalAccuracy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ros_sensor_msgs::EnuVelocity :md5sum-) "35b89ee4c05fa6d6175468cce6ddc8fd")
(setf (get ros_sensor_msgs::EnuVelocity :datatype-) "ros_sensor_msgs/EnuVelocity")
(setf (get ros_sensor_msgs::EnuVelocity :definition-)
      "float64					 eastVelocity
float64                  northVelocity
float64                  upVelocity
float32                  horizontalAccuracy
float32                  verticalAccuracy    
")



(provide :ros_sensor_msgs/EnuVelocity "35b89ee4c05fa6d6175468cce6ddc8fd")


