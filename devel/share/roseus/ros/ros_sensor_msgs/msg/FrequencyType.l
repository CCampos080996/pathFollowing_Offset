;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::FrequencyType)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'FrequencyType (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::FREQUENCYTYPE")
  (make-package "ROS_SENSOR_MSGS::FREQUENCYTYPE"))

(in-package "ROS")
;;//! \htmlinclude FrequencyType.msg.html


(intern "*FREQUENCYTYPEUNKNOWN*" (find-package "ROS_SENSOR_MSGS::FREQUENCYTYPE"))
(shadow '*FREQUENCYTYPEUNKNOWN* (find-package "ROS_SENSOR_MSGS::FREQUENCYTYPE"))
(defconstant ros_sensor_msgs::FrequencyType::*FREQUENCYTYPEUNKNOWN* 0)
(intern "*FREQUENCYTYPEL1*" (find-package "ROS_SENSOR_MSGS::FREQUENCYTYPE"))
(shadow '*FREQUENCYTYPEL1* (find-package "ROS_SENSOR_MSGS::FREQUENCYTYPE"))
(defconstant ros_sensor_msgs::FrequencyType::*FREQUENCYTYPEL1* 1)
(intern "*FREQUENCYTYPEL2*" (find-package "ROS_SENSOR_MSGS::FREQUENCYTYPE"))
(shadow '*FREQUENCYTYPEL2* (find-package "ROS_SENSOR_MSGS::FREQUENCYTYPE"))
(defconstant ros_sensor_msgs::FrequencyType::*FREQUENCYTYPEL2* 2)
(intern "*FREQUENCYTYPEL5*" (find-package "ROS_SENSOR_MSGS::FREQUENCYTYPE"))
(shadow '*FREQUENCYTYPEL5* (find-package "ROS_SENSOR_MSGS::FREQUENCYTYPE"))
(defconstant ros_sensor_msgs::FrequencyType::*FREQUENCYTYPEL5* 3)
(intern "*FREQUENCYTYPEGALILEOE1*" (find-package "ROS_SENSOR_MSGS::FREQUENCYTYPE"))
(shadow '*FREQUENCYTYPEGALILEOE1* (find-package "ROS_SENSOR_MSGS::FREQUENCYTYPE"))
(defconstant ros_sensor_msgs::FrequencyType::*FREQUENCYTYPEGALILEOE1* 4)
(intern "*FREQUENCYTYPEGALILEOE5*" (find-package "ROS_SENSOR_MSGS::FREQUENCYTYPE"))
(shadow '*FREQUENCYTYPEGALILEOE5* (find-package "ROS_SENSOR_MSGS::FREQUENCYTYPE"))
(defconstant ros_sensor_msgs::FrequencyType::*FREQUENCYTYPEGALILEOE5* 5)
(intern "*FREQUENCYTYPEGALILEOE6*" (find-package "ROS_SENSOR_MSGS::FREQUENCYTYPE"))
(shadow '*FREQUENCYTYPEGALILEOE6* (find-package "ROS_SENSOR_MSGS::FREQUENCYTYPE"))
(defconstant ros_sensor_msgs::FrequencyType::*FREQUENCYTYPEGALILEOE6* 6)
(intern "*FREQUENCYTYPEGALILEOC*" (find-package "ROS_SENSOR_MSGS::FREQUENCYTYPE"))
(shadow '*FREQUENCYTYPEGALILEOC* (find-package "ROS_SENSOR_MSGS::FREQUENCYTYPE"))
(defconstant ros_sensor_msgs::FrequencyType::*FREQUENCYTYPEGALILEOC* 7)
(intern "*FREQUENCYTYPEGLONASSL1F*" (find-package "ROS_SENSOR_MSGS::FREQUENCYTYPE"))
(shadow '*FREQUENCYTYPEGLONASSL1F* (find-package "ROS_SENSOR_MSGS::FREQUENCYTYPE"))
(defconstant ros_sensor_msgs::FrequencyType::*FREQUENCYTYPEGLONASSL1F* 8)
(intern "*FREQUENCYTYPEGLONASSL2F*" (find-package "ROS_SENSOR_MSGS::FREQUENCYTYPE"))
(shadow '*FREQUENCYTYPEGLONASSL2F* (find-package "ROS_SENSOR_MSGS::FREQUENCYTYPE"))
(defconstant ros_sensor_msgs::FrequencyType::*FREQUENCYTYPEGLONASSL2F* 9)
(intern "*FREQUENCYTYPEGLONASSL1C*" (find-package "ROS_SENSOR_MSGS::FREQUENCYTYPE"))
(shadow '*FREQUENCYTYPEGLONASSL1C* (find-package "ROS_SENSOR_MSGS::FREQUENCYTYPE"))
(defconstant ros_sensor_msgs::FrequencyType::*FREQUENCYTYPEGLONASSL1C* 10)
(intern "*FREQUENCYTYPEGLONASSL2C*" (find-package "ROS_SENSOR_MSGS::FREQUENCYTYPE"))
(shadow '*FREQUENCYTYPEGLONASSL2C* (find-package "ROS_SENSOR_MSGS::FREQUENCYTYPE"))
(defconstant ros_sensor_msgs::FrequencyType::*FREQUENCYTYPEGLONASSL2C* 11)
(intern "*FREQUENCYTYPEGLONASSL3C*" (find-package "ROS_SENSOR_MSGS::FREQUENCYTYPE"))
(shadow '*FREQUENCYTYPEGLONASSL3C* (find-package "ROS_SENSOR_MSGS::FREQUENCYTYPE"))
(defconstant ros_sensor_msgs::FrequencyType::*FREQUENCYTYPEGLONASSL3C* 12)
(defclass ros_sensor_msgs::FrequencyType
  :super ros::object
  :slots (_type ))

(defmethod ros_sensor_msgs::FrequencyType
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

(setf (get ros_sensor_msgs::FrequencyType :md5sum-) "0401b2908f64151d32113b6c4ffdc15a")
(setf (get ros_sensor_msgs::FrequencyType :datatype-) "ros_sensor_msgs/FrequencyType")
(setf (get ros_sensor_msgs::FrequencyType :definition-)
      "## Frequency Type

uint8 FrequencyTypeUnknown      = 0
uint8 FrequencyTypeL1           = 1
uint8 FrequencyTypeL2           = 2
uint8 FrequencyTypeL5           = 3
uint8 FrequencyTypeGalileoE1    = 4
uint8 FrequencyTypeGalileoE5    = 5
uint8 FrequencyTypeGalileoE6    = 6
uint8 FrequencyTypeGalileoC     = 7
uint8 FrequencyTypeGlonassL1F   = 8
uint8 FrequencyTypeGlonassL2F   = 9
uint8 FrequencyTypeGlonassL1C   = 10
uint8 FrequencyTypeGlonassL2C   = 11
uint8 FrequencyTypeGlonassL3C   = 12

uint8 type
")



(provide :ros_sensor_msgs/FrequencyType "0401b2908f64151d32113b6c4ffdc15a")


