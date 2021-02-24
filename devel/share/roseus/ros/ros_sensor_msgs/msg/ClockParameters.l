;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::ClockParameters)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'ClockParameters (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::CLOCKPARAMETERS")
  (make-package "ROS_SENSOR_MSGS::CLOCKPARAMETERS"))

(in-package "ROS")
;;//! \htmlinclude ClockParameters.msg.html


(defclass ros_sensor_msgs::ClockParameters
  :super ros::object
  :slots (_clock_bias _clock_drift ))

(defmethod ros_sensor_msgs::ClockParameters
  (:init
   (&key
    ((:clock_bias __clock_bias) 0.0)
    ((:clock_drift __clock_drift) 0.0)
    )
   (send-super :init)
   (setq _clock_bias (float __clock_bias))
   (setq _clock_drift (float __clock_drift))
   self)
  (:clock_bias
   (&optional __clock_bias)
   (if __clock_bias (setq _clock_bias __clock_bias)) _clock_bias)
  (:clock_drift
   (&optional __clock_drift)
   (if __clock_drift (setq _clock_drift __clock_drift)) _clock_drift)
  (:serialization-length
   ()
   (+
    ;; float64 _clock_bias
    8
    ;; float64 _clock_drift
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _clock_bias
       (sys::poke _clock_bias (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _clock_drift
       (sys::poke _clock_drift (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _clock_bias
     (setq _clock_bias (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _clock_drift
     (setq _clock_drift (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ros_sensor_msgs::ClockParameters :md5sum-) "24edc28b4670d4220f6e8a16b9ececc2")
(setf (get ros_sensor_msgs::ClockParameters :datatype-) "ros_sensor_msgs/ClockParameters")
(setf (get ros_sensor_msgs::ClockParameters :definition-)
      "## Recevier clock parameters

float64 clock_bias    # Receiver clock bias [sec]
float64 clock_drift   # Receiver clock drift [sec/sec]
")



(provide :ros_sensor_msgs/ClockParameters "24edc28b4670d4220f6e8a16b9ececc2")


