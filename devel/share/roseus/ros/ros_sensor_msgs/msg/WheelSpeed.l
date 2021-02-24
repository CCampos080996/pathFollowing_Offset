;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::WheelSpeed)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'WheelSpeed (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::WHEELSPEED")
  (make-package "ROS_SENSOR_MSGS::WHEELSPEED"))

(in-package "ROS")
;;//! \htmlinclude WheelSpeed.msg.html


(defclass ros_sensor_msgs::WheelSpeed
  :super ros::object
  :slots (_wheel_speed _wheel_speed_variance _wheel_name ))

(defmethod ros_sensor_msgs::WheelSpeed
  (:init
   (&key
    ((:wheel_speed __wheel_speed) 0.0)
    ((:wheel_speed_variance __wheel_speed_variance) 0.0)
    ((:wheel_name __wheel_name) "")
    )
   (send-super :init)
   (setq _wheel_speed (float __wheel_speed))
   (setq _wheel_speed_variance (float __wheel_speed_variance))
   (setq _wheel_name (string __wheel_name))
   self)
  (:wheel_speed
   (&optional __wheel_speed)
   (if __wheel_speed (setq _wheel_speed __wheel_speed)) _wheel_speed)
  (:wheel_speed_variance
   (&optional __wheel_speed_variance)
   (if __wheel_speed_variance (setq _wheel_speed_variance __wheel_speed_variance)) _wheel_speed_variance)
  (:wheel_name
   (&optional __wheel_name)
   (if __wheel_name (setq _wheel_name __wheel_name)) _wheel_name)
  (:serialization-length
   ()
   (+
    ;; float64 _wheel_speed
    8
    ;; float32 _wheel_speed_variance
    4
    ;; string _wheel_name
    4 (length _wheel_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _wheel_speed
       (sys::poke _wheel_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _wheel_speed_variance
       (sys::poke _wheel_speed_variance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _wheel_name
       (write-long (length _wheel_name) s) (princ _wheel_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _wheel_speed
     (setq _wheel_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _wheel_speed_variance
     (setq _wheel_speed_variance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _wheel_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _wheel_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get ros_sensor_msgs::WheelSpeed :md5sum-) "a79d594773fea65f5c40acf76550658c")
(setf (get ros_sensor_msgs::WheelSpeed :datatype-) "ros_sensor_msgs/WheelSpeed")
(setf (get ros_sensor_msgs::WheelSpeed :definition-)
      "float64 	wheel_speed				    # m/s
float32 	wheel_speed_variance 	# (m/s)^2
string    wheel_name
")



(provide :ros_sensor_msgs/WheelSpeed "a79d594773fea65f5c40acf76550658c")


