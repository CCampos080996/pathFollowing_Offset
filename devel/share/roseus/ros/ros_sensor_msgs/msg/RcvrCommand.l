;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::RcvrCommand)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'RcvrCommand (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::RCVRCOMMAND")
  (make-package "ROS_SENSOR_MSGS::RCVRCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude RcvrCommand.msg.html


(intern "*ZEROIZE*" (find-package "ROS_SENSOR_MSGS::RCVRCOMMAND"))
(shadow '*ZEROIZE* (find-package "ROS_SENSOR_MSGS::RCVRCOMMAND"))
(defconstant ros_sensor_msgs::RcvrCommand::*ZEROIZE* 0)
(intern "*CLEAR_SAAS_KEYS*" (find-package "ROS_SENSOR_MSGS::RCVRCOMMAND"))
(shadow '*CLEAR_SAAS_KEYS* (find-package "ROS_SENSOR_MSGS::RCVRCOMMAND"))
(defconstant ros_sensor_msgs::RcvrCommand::*CLEAR_SAAS_KEYS* 1)
(intern "*COLD_RESET*" (find-package "ROS_SENSOR_MSGS::RCVRCOMMAND"))
(shadow '*COLD_RESET* (find-package "ROS_SENSOR_MSGS::RCVRCOMMAND"))
(defconstant ros_sensor_msgs::RcvrCommand::*COLD_RESET* 2)
(intern "*WARM_RESET*" (find-package "ROS_SENSOR_MSGS::RCVRCOMMAND"))
(shadow '*WARM_RESET* (find-package "ROS_SENSOR_MSGS::RCVRCOMMAND"))
(defconstant ros_sensor_msgs::RcvrCommand::*WARM_RESET* 3)
(intern "*HOT_RESET*" (find-package "ROS_SENSOR_MSGS::RCVRCOMMAND"))
(shadow '*HOT_RESET* (find-package "ROS_SENSOR_MSGS::RCVRCOMMAND"))
(defconstant ros_sensor_msgs::RcvrCommand::*HOT_RESET* 4)
(intern "*CONNECT*" (find-package "ROS_SENSOR_MSGS::RCVRCOMMAND"))
(shadow '*CONNECT* (find-package "ROS_SENSOR_MSGS::RCVRCOMMAND"))
(defconstant ros_sensor_msgs::RcvrCommand::*CONNECT* 5)
(intern "*DISCONNECT*" (find-package "ROS_SENSOR_MSGS::RCVRCOMMAND"))
(shadow '*DISCONNECT* (find-package "ROS_SENSOR_MSGS::RCVRCOMMAND"))
(defconstant ros_sensor_msgs::RcvrCommand::*DISCONNECT* 6)
(defclass ros_sensor_msgs::RcvrCommand
  :super ros::object
  :slots (_rcvr_cmd ))

(defmethod ros_sensor_msgs::RcvrCommand
  (:init
   (&key
    ((:rcvr_cmd __rcvr_cmd) 0)
    )
   (send-super :init)
   (setq _rcvr_cmd (round __rcvr_cmd))
   self)
  (:rcvr_cmd
   (&optional __rcvr_cmd)
   (if __rcvr_cmd (setq _rcvr_cmd __rcvr_cmd)) _rcvr_cmd)
  (:serialization-length
   ()
   (+
    ;; uint8 _rcvr_cmd
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _rcvr_cmd
       (write-byte _rcvr_cmd s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _rcvr_cmd
     (setq _rcvr_cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ros_sensor_msgs::RcvrCommand :md5sum-) "1e0d96ca5be79f9b64d93ff7047bbbe8")
(setf (get ros_sensor_msgs::RcvrCommand :datatype-) "ros_sensor_msgs/RcvrCommand")
(setf (get ros_sensor_msgs::RcvrCommand :definition-)
      "uint8 ZEROIZE = 0
uint8 CLEAR_SAAS_KEYS = 1
uint8 COLD_RESET = 2
uint8 WARM_RESET = 3
uint8 HOT_RESET = 4
uint8 CONNECT = 5
uint8 DISCONNECT = 6

uint8 rcvr_cmd
")



(provide :ros_sensor_msgs/RcvrCommand "1e0d96ca5be79f9b64d93ff7047bbbe8")


