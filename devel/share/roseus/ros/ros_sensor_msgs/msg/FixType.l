;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::FixType)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'FixType (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::FIXTYPE")
  (make-package "ROS_SENSOR_MSGS::FIXTYPE"))

(in-package "ROS")
;;//! \htmlinclude FixType.msg.html


(intern "*FIXTYPENONE*" (find-package "ROS_SENSOR_MSGS::FIXTYPE"))
(shadow '*FIXTYPENONE* (find-package "ROS_SENSOR_MSGS::FIXTYPE"))
(defconstant ros_sensor_msgs::FixType::*FIXTYPENONE* 0)
(intern "*FIXTYPEDEADRECKONING*" (find-package "ROS_SENSOR_MSGS::FIXTYPE"))
(shadow '*FIXTYPEDEADRECKONING* (find-package "ROS_SENSOR_MSGS::FIXTYPE"))
(defconstant ros_sensor_msgs::FixType::*FIXTYPEDEADRECKONING* 1)
(intern "*FIXTYPE2D*" (find-package "ROS_SENSOR_MSGS::FIXTYPE"))
(shadow '*FIXTYPE2D* (find-package "ROS_SENSOR_MSGS::FIXTYPE"))
(defconstant ros_sensor_msgs::FixType::*FIXTYPE2D* 2)
(intern "*FIXTYPE3D*" (find-package "ROS_SENSOR_MSGS::FIXTYPE"))
(shadow '*FIXTYPE3D* (find-package "ROS_SENSOR_MSGS::FIXTYPE"))
(defconstant ros_sensor_msgs::FixType::*FIXTYPE3D* 3)
(intern "*FIXTYPEDRAND3D*" (find-package "ROS_SENSOR_MSGS::FIXTYPE"))
(shadow '*FIXTYPEDRAND3D* (find-package "ROS_SENSOR_MSGS::FIXTYPE"))
(defconstant ros_sensor_msgs::FixType::*FIXTYPEDRAND3D* 4)
(intern "*FIXTYPETIMEONLY*" (find-package "ROS_SENSOR_MSGS::FIXTYPE"))
(shadow '*FIXTYPETIMEONLY* (find-package "ROS_SENSOR_MSGS::FIXTYPE"))
(defconstant ros_sensor_msgs::FixType::*FIXTYPETIMEONLY* 5)
(intern "*FIXTYPESTATIC*" (find-package "ROS_SENSOR_MSGS::FIXTYPE"))
(shadow '*FIXTYPESTATIC* (find-package "ROS_SENSOR_MSGS::FIXTYPE"))
(defconstant ros_sensor_msgs::FixType::*FIXTYPESTATIC* 9)
(defclass ros_sensor_msgs::FixType
  :super ros::object
  :slots (_type ))

(defmethod ros_sensor_msgs::FixType
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

(setf (get ros_sensor_msgs::FixType :md5sum-) "171bfb899da24646b348c07601ff9a6a")
(setf (get ros_sensor_msgs::FixType :datatype-) "ros_sensor_msgs/FixType")
(setf (get ros_sensor_msgs::FixType :definition-)
      "## Fix Type

uint8 FixTypeNone = 0
uint8 FixTypeDeadReckoning = 1
uint8 FixType2D = 2
uint8 FixType3D = 3
uint8 FixTypeDRand3D = 4 ## Dead reckoning and GPS fix
uint8 FixTypeTimeOnly = 5
uint8 FixTypeStatic = 9

uint8 type
")



(provide :ros_sensor_msgs/FixType "171bfb899da24646b348c07601ff9a6a")


