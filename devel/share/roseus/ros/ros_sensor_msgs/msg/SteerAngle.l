;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::SteerAngle)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'SteerAngle (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::STEERANGLE")
  (make-package "ROS_SENSOR_MSGS::STEERANGLE"))

(in-package "ROS")
;;//! \htmlinclude SteerAngle.msg.html


(defclass ros_sensor_msgs::SteerAngle
  :super ros::object
  :slots (_steer_angle _steer_angle_variance _steer_angle_rate _steer_angle_rate_variance _wheel_name ))

(defmethod ros_sensor_msgs::SteerAngle
  (:init
   (&key
    ((:steer_angle __steer_angle) 0.0)
    ((:steer_angle_variance __steer_angle_variance) 0.0)
    ((:steer_angle_rate __steer_angle_rate) 0.0)
    ((:steer_angle_rate_variance __steer_angle_rate_variance) 0.0)
    ((:wheel_name __wheel_name) "")
    )
   (send-super :init)
   (setq _steer_angle (float __steer_angle))
   (setq _steer_angle_variance (float __steer_angle_variance))
   (setq _steer_angle_rate (float __steer_angle_rate))
   (setq _steer_angle_rate_variance (float __steer_angle_rate_variance))
   (setq _wheel_name (string __wheel_name))
   self)
  (:steer_angle
   (&optional __steer_angle)
   (if __steer_angle (setq _steer_angle __steer_angle)) _steer_angle)
  (:steer_angle_variance
   (&optional __steer_angle_variance)
   (if __steer_angle_variance (setq _steer_angle_variance __steer_angle_variance)) _steer_angle_variance)
  (:steer_angle_rate
   (&optional __steer_angle_rate)
   (if __steer_angle_rate (setq _steer_angle_rate __steer_angle_rate)) _steer_angle_rate)
  (:steer_angle_rate_variance
   (&optional __steer_angle_rate_variance)
   (if __steer_angle_rate_variance (setq _steer_angle_rate_variance __steer_angle_rate_variance)) _steer_angle_rate_variance)
  (:wheel_name
   (&optional __wheel_name)
   (if __wheel_name (setq _wheel_name __wheel_name)) _wheel_name)
  (:serialization-length
   ()
   (+
    ;; float64 _steer_angle
    8
    ;; float64 _steer_angle_variance
    8
    ;; float64 _steer_angle_rate
    8
    ;; float64 _steer_angle_rate_variance
    8
    ;; string _wheel_name
    4 (length _wheel_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _steer_angle
       (sys::poke _steer_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _steer_angle_variance
       (sys::poke _steer_angle_variance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _steer_angle_rate
       (sys::poke _steer_angle_rate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _steer_angle_rate_variance
       (sys::poke _steer_angle_rate_variance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _wheel_name
       (write-long (length _wheel_name) s) (princ _wheel_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _steer_angle
     (setq _steer_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _steer_angle_variance
     (setq _steer_angle_variance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _steer_angle_rate
     (setq _steer_angle_rate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _steer_angle_rate_variance
     (setq _steer_angle_rate_variance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _wheel_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _wheel_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get ros_sensor_msgs::SteerAngle :md5sum-) "c00ba70d13b583019559e4ba72c1a15a")
(setf (get ros_sensor_msgs::SteerAngle :datatype-) "ros_sensor_msgs/SteerAngle")
(setf (get ros_sensor_msgs::SteerAngle :definition-)
      "float64    steer_angle				 # rad
float64    steer_angle_variance 	 # rad^2
float64    steer_angle_rate          # rad/s
float64    steer_angle_rate_variance # (rad/s)^2
string     wheel_name
")



(provide :ros_sensor_msgs/SteerAngle "c00ba70d13b583019559e4ba72c1a15a")


