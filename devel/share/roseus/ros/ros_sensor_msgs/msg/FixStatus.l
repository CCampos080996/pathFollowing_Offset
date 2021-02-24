;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::FixStatus)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'FixStatus (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::FIXSTATUS")
  (make-package "ROS_SENSOR_MSGS::FIXSTATUS"))

(in-package "ROS")
;;//! \htmlinclude FixStatus.msg.html


(defclass ros_sensor_msgs::FixStatus
  :super ros::object
  :slots (_fix _numSvs _ttff ))

(defmethod ros_sensor_msgs::FixStatus
  (:init
   (&key
    ((:fix __fix) (instance ros_sensor_msgs::FixType :init))
    ((:numSvs __numSvs) 0)
    ((:ttff __ttff) 0.0)
    )
   (send-super :init)
   (setq _fix __fix)
   (setq _numSvs (round __numSvs))
   (setq _ttff (float __ttff))
   self)
  (:fix
   (&rest __fix)
   (if (keywordp (car __fix))
       (send* _fix __fix)
     (progn
       (if __fix (setq _fix (car __fix)))
       _fix)))
  (:numSvs
   (&optional __numSvs)
   (if __numSvs (setq _numSvs __numSvs)) _numSvs)
  (:ttff
   (&optional __ttff)
   (if __ttff (setq _ttff __ttff)) _ttff)
  (:serialization-length
   ()
   (+
    ;; ros_sensor_msgs/FixType _fix
    (send _fix :serialization-length)
    ;; uint32 _numSvs
    4
    ;; float64 _ttff
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ros_sensor_msgs/FixType _fix
       (send _fix :serialize s)
     ;; uint32 _numSvs
       (write-long _numSvs s)
     ;; float64 _ttff
       (sys::poke _ttff (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ros_sensor_msgs/FixType _fix
     (send _fix :deserialize buf ptr-) (incf ptr- (send _fix :serialization-length))
   ;; uint32 _numSvs
     (setq _numSvs (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _ttff
     (setq _ttff (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ros_sensor_msgs::FixStatus :md5sum-) "77b3f1a3a6c728c0e4055a4f39c84ef4")
(setf (get ros_sensor_msgs::FixStatus :datatype-) "ros_sensor_msgs/FixStatus")
(setf (get ros_sensor_msgs::FixStatus :definition-)
      "# # FixStatus

FixType fix
uint32  numSvs
float64  ttff
================================================================================
MSG: ros_sensor_msgs/FixType
## Fix Type

uint8 FixTypeNone = 0
uint8 FixTypeDeadReckoning = 1
uint8 FixType2D = 2
uint8 FixType3D = 3
uint8 FixTypeDRand3D = 4 ## Dead reckoning and GPS fix
uint8 FixTypeTimeOnly = 5
uint8 FixTypeStatic = 9

uint8 type
")



(provide :ros_sensor_msgs/FixStatus "77b3f1a3a6c728c0e4055a4f39c84ef4")


