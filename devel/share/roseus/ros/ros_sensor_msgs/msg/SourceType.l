;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::SourceType)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'SourceType (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::SOURCETYPE")
  (make-package "ROS_SENSOR_MSGS::SOURCETYPE"))

(in-package "ROS")
;;//! \htmlinclude SourceType.msg.html


(intern "*SOURCETYPEUNKNOWN*" (find-package "ROS_SENSOR_MSGS::SOURCETYPE"))
(shadow '*SOURCETYPEUNKNOWN* (find-package "ROS_SENSOR_MSGS::SOURCETYPE"))
(defconstant ros_sensor_msgs::SourceType::*SOURCETYPEUNKNOWN* 0)
(intern "*SOURCETYPERECEIVER*" (find-package "ROS_SENSOR_MSGS::SOURCETYPE"))
(shadow '*SOURCETYPERECEIVER* (find-package "ROS_SENSOR_MSGS::SOURCETYPE"))
(defconstant ros_sensor_msgs::SourceType::*SOURCETYPERECEIVER* 1)
(intern "*SOURCETYPENETWORK*" (find-package "ROS_SENSOR_MSGS::SOURCETYPE"))
(shadow '*SOURCETYPENETWORK* (find-package "ROS_SENSOR_MSGS::SOURCETYPE"))
(defconstant ros_sensor_msgs::SourceType::*SOURCETYPENETWORK* 2)
(intern "*SOURCETYPERINEX*" (find-package "ROS_SENSOR_MSGS::SOURCETYPE"))
(shadow '*SOURCETYPERINEX* (find-package "ROS_SENSOR_MSGS::SOURCETYPE"))
(defconstant ros_sensor_msgs::SourceType::*SOURCETYPERINEX* 3)
(intern "*SOURCETYPEANY*" (find-package "ROS_SENSOR_MSGS::SOURCETYPE"))
(shadow '*SOURCETYPEANY* (find-package "ROS_SENSOR_MSGS::SOURCETYPE"))
(defconstant ros_sensor_msgs::SourceType::*SOURCETYPEANY* 99)
(defclass ros_sensor_msgs::SourceType
  :super ros::object
  :slots (_type ))

(defmethod ros_sensor_msgs::SourceType
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

(setf (get ros_sensor_msgs::SourceType :md5sum-) "2b6f53ff512a57ec4523f25a3ccb8894")
(setf (get ros_sensor_msgs::SourceType :datatype-) "ros_sensor_msgs/SourceType")
(setf (get ros_sensor_msgs::SourceType :definition-)
      "## Source of data

uint8 SourceTypeUnknown  = 0
uint8 SourceTypeReceiver = 1
uint8 SourceTypeNetwork  = 2
uint8 SourceTypeRinex    = 3
uint8 SourceTypeAny      = 99

uint8 type
")



(provide :ros_sensor_msgs/SourceType "2b6f53ff512a57ec4523f25a3ccb8894")


