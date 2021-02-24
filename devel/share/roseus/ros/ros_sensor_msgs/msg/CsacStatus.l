;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::CsacStatus)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'CsacStatus (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::CSACSTATUS")
  (make-package "ROS_SENSOR_MSGS::CSACSTATUS"))

(in-package "ROS")
;;//! \htmlinclude CsacStatus.msg.html


(intern "*INITIALIZATION*" (find-package "ROS_SENSOR_MSGS::CSACSTATUS"))
(shadow '*INITIALIZATION* (find-package "ROS_SENSOR_MSGS::CSACSTATUS"))
(defconstant ros_sensor_msgs::CsacStatus::*INITIALIZATION* 0)
(intern "*STEERING*" (find-package "ROS_SENSOR_MSGS::CSACSTATUS"))
(shadow '*STEERING* (find-package "ROS_SENSOR_MSGS::CSACSTATUS"))
(defconstant ros_sensor_msgs::CsacStatus::*STEERING* 1)
(intern "*LOCKED*" (find-package "ROS_SENSOR_MSGS::CSACSTATUS"))
(shadow '*LOCKED* (find-package "ROS_SENSOR_MSGS::CSACSTATUS"))
(defconstant ros_sensor_msgs::CsacStatus::*LOCKED* 2)
(intern "*UNKNOWN*" (find-package "ROS_SENSOR_MSGS::CSACSTATUS"))
(shadow '*UNKNOWN* (find-package "ROS_SENSOR_MSGS::CSACSTATUS"))
(defconstant ros_sensor_msgs::CsacStatus::*UNKNOWN* 3)
(defclass ros_sensor_msgs::CsacStatus
  :super ros::object
  :slots (_status ))

(defmethod ros_sensor_msgs::CsacStatus
  (:init
   (&key
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _status (round __status))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; uint8 _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _status
       (write-byte _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ros_sensor_msgs::CsacStatus :md5sum-) "1736dd09b796bd8043d007e2b2955c9a")
(setf (get ros_sensor_msgs::CsacStatus :datatype-) "ros_sensor_msgs/CsacStatus")
(setf (get ros_sensor_msgs::CsacStatus :definition-)
      "## CsacStatus

uint8 Initialization = 0
uint8 Steering       = 1
uint8 Locked         = 2
uint8 Unknown        = 3

uint8 status
")



(provide :ros_sensor_msgs/CsacStatus "1736dd09b796bd8043d007e2b2955c9a")


