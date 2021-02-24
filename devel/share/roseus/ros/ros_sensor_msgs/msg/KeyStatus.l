;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::KeyStatus)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'KeyStatus (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::KEYSTATUS")
  (make-package "ROS_SENSOR_MSGS::KEYSTATUS"))

(in-package "ROS")
;;//! \htmlinclude KeyStatus.msg.html


(intern "*UNAUTHORIZEDNOTKEYED*" (find-package "ROS_SENSOR_MSGS::KEYSTATUS"))
(shadow '*UNAUTHORIZEDNOTKEYED* (find-package "ROS_SENSOR_MSGS::KEYSTATUS"))
(defconstant ros_sensor_msgs::KeyStatus::*UNAUTHORIZEDNOTKEYED* 0)
(intern "*AUTHORIZEDNOTKEYED*" (find-package "ROS_SENSOR_MSGS::KEYSTATUS"))
(shadow '*AUTHORIZEDNOTKEYED* (find-package "ROS_SENSOR_MSGS::KEYSTATUS"))
(defconstant ros_sensor_msgs::KeyStatus::*AUTHORIZEDNOTKEYED* 1)
(intern "*KEYED*" (find-package "ROS_SENSOR_MSGS::KEYSTATUS"))
(shadow '*KEYED* (find-package "ROS_SENSOR_MSGS::KEYSTATUS"))
(defconstant ros_sensor_msgs::KeyStatus::*KEYED* 2)
(defclass ros_sensor_msgs::KeyStatus
  :super ros::object
  :slots (_status ))

(defmethod ros_sensor_msgs::KeyStatus
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

(setf (get ros_sensor_msgs::KeyStatus :md5sum-) "b61a75ec1147486d8b30386cbf362aa3")
(setf (get ros_sensor_msgs::KeyStatus :datatype-) "ros_sensor_msgs/KeyStatus")
(setf (get ros_sensor_msgs::KeyStatus :definition-)
      "## KeyStatus

uint8 UnauthorizedNotKeyed = 0
uint8 AuthorizedNotKeyed   = 1
uint8 Keyed                = 2

uint8 status
")



(provide :ros_sensor_msgs/KeyStatus "b61a75ec1147486d8b30386cbf362aa3")


