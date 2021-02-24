;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::CodeType)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'CodeType (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::CODETYPE")
  (make-package "ROS_SENSOR_MSGS::CODETYPE"))

(in-package "ROS")
;;//! \htmlinclude CodeType.msg.html


(intern "*CODETYPEUNKNOWN*" (find-package "ROS_SENSOR_MSGS::CODETYPE"))
(shadow '*CODETYPEUNKNOWN* (find-package "ROS_SENSOR_MSGS::CODETYPE"))
(defconstant ros_sensor_msgs::CodeType::*CODETYPEUNKNOWN* 0)
(intern "*CODETYPEGPSCA*" (find-package "ROS_SENSOR_MSGS::CODETYPE"))
(shadow '*CODETYPEGPSCA* (find-package "ROS_SENSOR_MSGS::CODETYPE"))
(defconstant ros_sensor_msgs::CodeType::*CODETYPEGPSCA* 1)
(intern "*CODETYPEGPSP*" (find-package "ROS_SENSOR_MSGS::CODETYPE"))
(shadow '*CODETYPEGPSP* (find-package "ROS_SENSOR_MSGS::CODETYPE"))
(defconstant ros_sensor_msgs::CodeType::*CODETYPEGPSP* 2)
(intern "*CODETYPEGPSPCODELESS*" (find-package "ROS_SENSOR_MSGS::CODETYPE"))
(shadow '*CODETYPEGPSPCODELESS* (find-package "ROS_SENSOR_MSGS::CODETYPE"))
(defconstant ros_sensor_msgs::CodeType::*CODETYPEGPSPCODELESS* 3)
(intern "*CODETYPEGPSY*" (find-package "ROS_SENSOR_MSGS::CODETYPE"))
(shadow '*CODETYPEGPSY* (find-package "ROS_SENSOR_MSGS::CODETYPE"))
(defconstant ros_sensor_msgs::CodeType::*CODETYPEGPSY* 4)
(intern "*CODETYPEGPSC*" (find-package "ROS_SENSOR_MSGS::CODETYPE"))
(shadow '*CODETYPEGPSC* (find-package "ROS_SENSOR_MSGS::CODETYPE"))
(defconstant ros_sensor_msgs::CodeType::*CODETYPEGPSC* 5)
(intern "*CODETYPEGPSCCODELESS*" (find-package "ROS_SENSOR_MSGS::CODETYPE"))
(shadow '*CODETYPEGPSCCODELESS* (find-package "ROS_SENSOR_MSGS::CODETYPE"))
(defconstant ros_sensor_msgs::CodeType::*CODETYPEGPSCCODELESS* 6)
(intern "*CODETYPEGPSM*" (find-package "ROS_SENSOR_MSGS::CODETYPE"))
(shadow '*CODETYPEGPSM* (find-package "ROS_SENSOR_MSGS::CODETYPE"))
(defconstant ros_sensor_msgs::CodeType::*CODETYPEGPSM* 8)
(intern "*CODETYPEGPSMPRIME*" (find-package "ROS_SENSOR_MSGS::CODETYPE"))
(shadow '*CODETYPEGPSMPRIME* (find-package "ROS_SENSOR_MSGS::CODETYPE"))
(defconstant ros_sensor_msgs::CodeType::*CODETYPEGPSMPRIME* 9)
(intern "*CODETYPEGLONASS*" (find-package "ROS_SENSOR_MSGS::CODETYPE"))
(shadow '*CODETYPEGLONASS* (find-package "ROS_SENSOR_MSGS::CODETYPE"))
(defconstant ros_sensor_msgs::CodeType::*CODETYPEGLONASS* 16)
(intern "*CODETYPEGALILEO*" (find-package "ROS_SENSOR_MSGS::CODETYPE"))
(shadow '*CODETYPEGALILEO* (find-package "ROS_SENSOR_MSGS::CODETYPE"))
(defconstant ros_sensor_msgs::CodeType::*CODETYPEGALILEO* 32)
(defclass ros_sensor_msgs::CodeType
  :super ros::object
  :slots (_type ))

(defmethod ros_sensor_msgs::CodeType
  (:init
   (&key
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _type (round __type))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; uint8 _type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _type
       (write-byte _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ros_sensor_msgs::CodeType :md5sum-) "499f851ef67c04bdd8c13b2eb63a144a")
(setf (get ros_sensor_msgs::CodeType :datatype-) "ros_sensor_msgs/CodeType")
(setf (get ros_sensor_msgs::CodeType :definition-)
      "## Code Type

uint8 CodeTypeUnknown         = 0
uint8 CodeTypeGpsCa           = 1
uint8 CodeTypeGpsP            = 2
uint8 CodeTypeGpsPCodeless    = 3
uint8 CodeTypeGpsY            = 4
uint8 CodeTypeGpsC            = 5
uint8 CodeTypeGpsCCodeless    = 6
uint8 CodeTypeGpsM            = 8
uint8 CodeTypeGpsMPrime       = 9

uint8 CodeTypeGlonass  = 16
uint8 CodeTypeGalileo  = 32

uint8 type
")



(provide :ros_sensor_msgs/CodeType "499f851ef67c04bdd8c13b2eb63a144a")


