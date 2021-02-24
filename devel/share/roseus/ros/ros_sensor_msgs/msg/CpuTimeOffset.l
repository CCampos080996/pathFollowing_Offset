;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::CpuTimeOffset)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'CpuTimeOffset (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::CPUTIMEOFFSET")
  (make-package "ROS_SENSOR_MSGS::CPUTIMEOFFSET"))

(in-package "ROS")
;;//! \htmlinclude CpuTimeOffset.msg.html


(defclass ros_sensor_msgs::CpuTimeOffset
  :super ros::object
  :slots (_valid _secondsOffset ))

(defmethod ros_sensor_msgs::CpuTimeOffset
  (:init
   (&key
    ((:valid __valid) nil)
    ((:secondsOffset __secondsOffset) 0.0)
    )
   (send-super :init)
   (setq _valid __valid)
   (setq _secondsOffset (float __secondsOffset))
   self)
  (:valid
   (&optional __valid)
   (if __valid (setq _valid __valid)) _valid)
  (:secondsOffset
   (&optional __secondsOffset)
   (if __secondsOffset (setq _secondsOffset __secondsOffset)) _secondsOffset)
  (:serialization-length
   ()
   (+
    ;; bool _valid
    1
    ;; float64 _secondsOffset
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _valid
       (if _valid (write-byte -1 s) (write-byte 0 s))
     ;; float64 _secondsOffset
       (sys::poke _secondsOffset (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _valid
     (setq _valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _secondsOffset
     (setq _secondsOffset (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ros_sensor_msgs::CpuTimeOffset :md5sum-) "fe6721beec4e50ad7c1762c7c1827237")
(setf (get ros_sensor_msgs::CpuTimeOffset :datatype-) "ros_sensor_msgs/CpuTimeOffset")
(setf (get ros_sensor_msgs::CpuTimeOffset :definition-)
      "bool    valid
float64 secondsOffset
")



(provide :ros_sensor_msgs/CpuTimeOffset "fe6721beec4e50ad7c1762c7c1827237")


