;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::ReceiverType)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'ReceiverType (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::RECEIVERTYPE")
  (make-package "ROS_SENSOR_MSGS::RECEIVERTYPE"))

(in-package "ROS")
;;//! \htmlinclude ReceiverType.msg.html


(intern "*RECEIVER_TYPE_UBLOX*" (find-package "ROS_SENSOR_MSGS::RECEIVERTYPE"))
(shadow '*RECEIVER_TYPE_UBLOX* (find-package "ROS_SENSOR_MSGS::RECEIVERTYPE"))
(defconstant ros_sensor_msgs::ReceiverType::*RECEIVER_TYPE_UBLOX* 0)
(intern "*RECEIVER_TYPE_NOVATEL*" (find-package "ROS_SENSOR_MSGS::RECEIVERTYPE"))
(shadow '*RECEIVER_TYPE_NOVATEL* (find-package "ROS_SENSOR_MSGS::RECEIVERTYPE"))
(defconstant ros_sensor_msgs::ReceiverType::*RECEIVER_TYPE_NOVATEL* 1)
(intern "*RECEIVER_TYPE_DAGR*" (find-package "ROS_SENSOR_MSGS::RECEIVERTYPE"))
(shadow '*RECEIVER_TYPE_DAGR* (find-package "ROS_SENSOR_MSGS::RECEIVERTYPE"))
(defconstant ros_sensor_msgs::ReceiverType::*RECEIVER_TYPE_DAGR* 2)
(intern "*RECEIVER_TYPE_MICROGRAM*" (find-package "ROS_SENSOR_MSGS::RECEIVERTYPE"))
(shadow '*RECEIVER_TYPE_MICROGRAM* (find-package "ROS_SENSOR_MSGS::RECEIVERTYPE"))
(defconstant ros_sensor_msgs::ReceiverType::*RECEIVER_TYPE_MICROGRAM* 3)
(intern "*RECEIVER_TYPE_TRUTRAK*" (find-package "ROS_SENSOR_MSGS::RECEIVERTYPE"))
(shadow '*RECEIVER_TYPE_TRUTRAK* (find-package "ROS_SENSOR_MSGS::RECEIVERTYPE"))
(defconstant ros_sensor_msgs::ReceiverType::*RECEIVER_TYPE_TRUTRAK* 4)
(intern "*RECEIVER_TYPE_GSSIP*" (find-package "ROS_SENSOR_MSGS::RECEIVERTYPE"))
(shadow '*RECEIVER_TYPE_GSSIP* (find-package "ROS_SENSOR_MSGS::RECEIVERTYPE"))
(defconstant ros_sensor_msgs::ReceiverType::*RECEIVER_TYPE_GSSIP* 5)
(intern "*RECEIVER_TYPE_OTHER*" (find-package "ROS_SENSOR_MSGS::RECEIVERTYPE"))
(shadow '*RECEIVER_TYPE_OTHER* (find-package "ROS_SENSOR_MSGS::RECEIVERTYPE"))
(defconstant ros_sensor_msgs::ReceiverType::*RECEIVER_TYPE_OTHER* 14)
(intern "*RECEIVER_TYPE_UNKNOWN*" (find-package "ROS_SENSOR_MSGS::RECEIVERTYPE"))
(shadow '*RECEIVER_TYPE_UNKNOWN* (find-package "ROS_SENSOR_MSGS::RECEIVERTYPE"))
(defconstant ros_sensor_msgs::ReceiverType::*RECEIVER_TYPE_UNKNOWN* 15)
(defclass ros_sensor_msgs::ReceiverType
  :super ros::object
  :slots (_type ))

(defmethod ros_sensor_msgs::ReceiverType
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

(setf (get ros_sensor_msgs::ReceiverType :md5sum-) "a58e9fc00f5d5355c75be34df1d73a87")
(setf (get ros_sensor_msgs::ReceiverType :datatype-) "ros_sensor_msgs/ReceiverType")
(setf (get ros_sensor_msgs::ReceiverType :definition-)
      "uint8 RECEIVER_TYPE_UBLOX = 0
uint8 RECEIVER_TYPE_NOVATEL = 1
uint8 RECEIVER_TYPE_DAGR = 2
uint8 RECEIVER_TYPE_MICROGRAM = 3
uint8 RECEIVER_TYPE_TRUTRAK = 4
uint8 RECEIVER_TYPE_GSSIP = 5
uint8 RECEIVER_TYPE_OTHER = 14
uint8 RECEIVER_TYPE_UNKNOWN = 15
uint8 type
")



(provide :ros_sensor_msgs/ReceiverType "a58e9fc00f5d5355c75be34df1d73a87")


