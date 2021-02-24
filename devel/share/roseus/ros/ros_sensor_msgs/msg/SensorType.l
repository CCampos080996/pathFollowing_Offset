;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::SensorType)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'SensorType (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::SENSORTYPE")
  (make-package "ROS_SENSOR_MSGS::SENSORTYPE"))

(in-package "ROS")
;;//! \htmlinclude SensorType.msg.html


(intern "*SENSORTYPEUNKNOWN*" (find-package "ROS_SENSOR_MSGS::SENSORTYPE"))
(shadow '*SENSORTYPEUNKNOWN* (find-package "ROS_SENSOR_MSGS::SENSORTYPE"))
(defconstant ros_sensor_msgs::SensorType::*SENSORTYPEUNKNOWN* 0)
(intern "*SENSORTYPEGPS*" (find-package "ROS_SENSOR_MSGS::SENSORTYPE"))
(shadow '*SENSORTYPEGPS* (find-package "ROS_SENSOR_MSGS::SENSORTYPE"))
(defconstant ros_sensor_msgs::SensorType::*SENSORTYPEGPS* 1)
(intern "*SENSORTYPEGLONASS*" (find-package "ROS_SENSOR_MSGS::SENSORTYPE"))
(shadow '*SENSORTYPEGLONASS* (find-package "ROS_SENSOR_MSGS::SENSORTYPE"))
(defconstant ros_sensor_msgs::SensorType::*SENSORTYPEGLONASS* 2)
(intern "*SENSORTYPEGALILEO*" (find-package "ROS_SENSOR_MSGS::SENSORTYPE"))
(shadow '*SENSORTYPEGALILEO* (find-package "ROS_SENSOR_MSGS::SENSORTYPE"))
(defconstant ros_sensor_msgs::SensorType::*SENSORTYPEGALILEO* 4)
(intern "*SENSORTYPEIMU*" (find-package "ROS_SENSOR_MSGS::SENSORTYPE"))
(shadow '*SENSORTYPEIMU* (find-package "ROS_SENSOR_MSGS::SENSORTYPE"))
(defconstant ros_sensor_msgs::SensorType::*SENSORTYPEIMU* 8)
(intern "*SENSORRFRANGE*" (find-package "ROS_SENSOR_MSGS::SENSORTYPE"))
(shadow '*SENSORRFRANGE* (find-package "ROS_SENSOR_MSGS::SENSORTYPE"))
(defconstant ros_sensor_msgs::SensorType::*SENSORRFRANGE* 16)
(intern "*SENSORTYPEVISION*" (find-package "ROS_SENSOR_MSGS::SENSORTYPE"))
(shadow '*SENSORTYPEVISION* (find-package "ROS_SENSOR_MSGS::SENSORTYPE"))
(defconstant ros_sensor_msgs::SensorType::*SENSORTYPEVISION* 32)
(defclass ros_sensor_msgs::SensorType
  :super ros::object
  :slots (_type ))

(defmethod ros_sensor_msgs::SensorType
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

(setf (get ros_sensor_msgs::SensorType :md5sum-) "3fe390b5ba2bf66b459cdc2b21df74dd")
(setf (get ros_sensor_msgs::SensorType :datatype-) "ros_sensor_msgs/SensorType")
(setf (get ros_sensor_msgs::SensorType :definition-)
      "## Sensor Type

uint8 SensorTypeUnknown = 0
uint8 SensorTypeGps     = 1
uint8 SensorTypeGlonass = 2
uint8 SensorTypeGalileo = 4
uint8 SensorTypeImu     = 8
uint8 SensorRfRange     = 16
uint8 SensorTypeVision  = 32

uint8 type
")



(provide :ros_sensor_msgs/SensorType "3fe390b5ba2bf66b459cdc2b21df74dd")


