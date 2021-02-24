;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::TrackingStatus)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'TrackingStatus (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::TRACKINGSTATUS")
  (make-package "ROS_SENSOR_MSGS::TRACKINGSTATUS"))

(in-package "ROS")
;;//! \htmlinclude TrackingStatus.msg.html


(intern "*IDLE*" (find-package "ROS_SENSOR_MSGS::TRACKINGSTATUS"))
(shadow '*IDLE* (find-package "ROS_SENSOR_MSGS::TRACKINGSTATUS"))
(defconstant ros_sensor_msgs::TrackingStatus::*IDLE* 0)
(intern "*SEARCHINGCA*" (find-package "ROS_SENSOR_MSGS::TRACKINGSTATUS"))
(shadow '*SEARCHINGCA* (find-package "ROS_SENSOR_MSGS::TRACKINGSTATUS"))
(defconstant ros_sensor_msgs::TrackingStatus::*SEARCHINGCA* 1)
(intern "*SEARCHINGPY*" (find-package "ROS_SENSOR_MSGS::TRACKINGSTATUS"))
(shadow '*SEARCHINGPY* (find-package "ROS_SENSOR_MSGS::TRACKINGSTATUS"))
(defconstant ros_sensor_msgs::TrackingStatus::*SEARCHINGPY* 2)
(intern "*CODELOCK*" (find-package "ROS_SENSOR_MSGS::TRACKINGSTATUS"))
(shadow '*CODELOCK* (find-package "ROS_SENSOR_MSGS::TRACKINGSTATUS"))
(defconstant ros_sensor_msgs::TrackingStatus::*CODELOCK* 3)
(intern "*CARRIERLOCK*" (find-package "ROS_SENSOR_MSGS::TRACKINGSTATUS"))
(shadow '*CARRIERLOCK* (find-package "ROS_SENSOR_MSGS::TRACKINGSTATUS"))
(defconstant ros_sensor_msgs::TrackingStatus::*CARRIERLOCK* 4)
(intern "*CARRIERTRACKDATACOLLECT*" (find-package "ROS_SENSOR_MSGS::TRACKINGSTATUS"))
(shadow '*CARRIERTRACKDATACOLLECT* (find-package "ROS_SENSOR_MSGS::TRACKINGSTATUS"))
(defconstant ros_sensor_msgs::TrackingStatus::*CARRIERTRACKDATACOLLECT* 5)
(intern "*SEQUENTIALRESYNCHRONIZATION*" (find-package "ROS_SENSOR_MSGS::TRACKINGSTATUS"))
(shadow '*SEQUENTIALRESYNCHRONIZATION* (find-package "ROS_SENSOR_MSGS::TRACKINGSTATUS"))
(defconstant ros_sensor_msgs::TrackingStatus::*SEQUENTIALRESYNCHRONIZATION* 6)
(intern "*REACQUISITION*" (find-package "ROS_SENSOR_MSGS::TRACKINGSTATUS"))
(shadow '*REACQUISITION* (find-package "ROS_SENSOR_MSGS::TRACKINGSTATUS"))
(defconstant ros_sensor_msgs::TrackingStatus::*REACQUISITION* 7)
(intern "*UNUSABLE*" (find-package "ROS_SENSOR_MSGS::TRACKINGSTATUS"))
(shadow '*UNUSABLE* (find-package "ROS_SENSOR_MSGS::TRACKINGSTATUS"))
(defconstant ros_sensor_msgs::TrackingStatus::*UNUSABLE* 8)
(defclass ros_sensor_msgs::TrackingStatus
  :super ros::object
  :slots (_status ))

(defmethod ros_sensor_msgs::TrackingStatus
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

(setf (get ros_sensor_msgs::TrackingStatus :md5sum-) "00731b51e23572a6e93281f0290e66e1")
(setf (get ros_sensor_msgs::TrackingStatus :datatype-) "ros_sensor_msgs/TrackingStatus")
(setf (get ros_sensor_msgs::TrackingStatus :definition-)
      "## Tracking Status

uint8 Idle                        = 0
uint8 SearchingCa                 = 1
uint8 SearchingPy                 = 2
uint8 CodeLock                    = 3
uint8 CarrierLock                 = 4
uint8 CarrierTrackDataCollect     = 5
uint8 SequentialResynchronization = 6
uint8 Reacquisition               = 7
uint8 Unusable                    = 8

uint8 status
")



(provide :ros_sensor_msgs/TrackingStatus "00731b51e23572a6e93281f0290e66e1")


