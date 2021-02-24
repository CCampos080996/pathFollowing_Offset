;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::AssuranceLevel)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'AssuranceLevel (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::ASSURANCELEVEL")
  (make-package "ROS_SENSOR_MSGS::ASSURANCELEVEL"))

(in-package "ROS")
;;//! \htmlinclude AssuranceLevel.msg.html


(intern "*NORMAL*" (find-package "ROS_SENSOR_MSGS::ASSURANCELEVEL"))
(shadow '*NORMAL* (find-package "ROS_SENSOR_MSGS::ASSURANCELEVEL"))
(defconstant ros_sensor_msgs::AssuranceLevel::*NORMAL* 0)
(intern "*UNKNOWN*" (find-package "ROS_SENSOR_MSGS::ASSURANCELEVEL"))
(shadow '*UNKNOWN* (find-package "ROS_SENSOR_MSGS::ASSURANCELEVEL"))
(defconstant ros_sensor_msgs::AssuranceLevel::*UNKNOWN* 1)
(intern "*WARNING*" (find-package "ROS_SENSOR_MSGS::ASSURANCELEVEL"))
(shadow '*WARNING* (find-package "ROS_SENSOR_MSGS::ASSURANCELEVEL"))
(defconstant ros_sensor_msgs::AssuranceLevel::*WARNING* 2)
(intern "*ATTACK*" (find-package "ROS_SENSOR_MSGS::ASSURANCELEVEL"))
(shadow '*ATTACK* (find-package "ROS_SENSOR_MSGS::ASSURANCELEVEL"))
(defconstant ros_sensor_msgs::AssuranceLevel::*ATTACK* 3)
(defclass ros_sensor_msgs::AssuranceLevel
  :super ros::object
  :slots (_level ))

(defmethod ros_sensor_msgs::AssuranceLevel
  (:init
   (&key
    ((:level __level) 0)
    )
   (send-super :init)
   (setq _level (round __level))
   self)
  (:level
   (&optional __level)
   (if __level (setq _level __level)) _level)
  (:serialization-length
   ()
   (+
    ;; uint8 _level
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _level
       (write-byte _level s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _level
     (setq _level (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ros_sensor_msgs::AssuranceLevel :md5sum-) "328f14617c5691e821d262464da48397")
(setf (get ros_sensor_msgs::AssuranceLevel :datatype-) "ros_sensor_msgs/AssuranceLevel")
(setf (get ros_sensor_msgs::AssuranceLevel :definition-)
      "uint8  Normal   = 0
uint8  Unknown  = 1
uint8  Warning  = 2
uint8  Attack   = 3

uint8 level
")



(provide :ros_sensor_msgs/AssuranceLevel "328f14617c5691e821d262464da48397")


