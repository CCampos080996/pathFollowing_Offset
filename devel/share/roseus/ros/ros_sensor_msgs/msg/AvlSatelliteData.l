;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::AvlSatelliteData)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'AvlSatelliteData (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::AVLSATELLITEDATA")
  (make-package "ROS_SENSOR_MSGS::AVLSATELLITEDATA"))

(in-package "ROS")
;;//! \htmlinclude AvlSatelliteData.msg.html


(defclass ros_sensor_msgs::AvlSatelliteData
  :super ros::object
  :slots (_fromReceiver _fromNetwork _fromRinex _fromUnknown ))

(defmethod ros_sensor_msgs::AvlSatelliteData
  (:init
   (&key
    ((:fromReceiver __fromReceiver) 0)
    ((:fromNetwork __fromNetwork) 0)
    ((:fromRinex __fromRinex) 0)
    ((:fromUnknown __fromUnknown) 0)
    )
   (send-super :init)
   (setq _fromReceiver (round __fromReceiver))
   (setq _fromNetwork (round __fromNetwork))
   (setq _fromRinex (round __fromRinex))
   (setq _fromUnknown (round __fromUnknown))
   self)
  (:fromReceiver
   (&optional __fromReceiver)
   (if __fromReceiver (setq _fromReceiver __fromReceiver)) _fromReceiver)
  (:fromNetwork
   (&optional __fromNetwork)
   (if __fromNetwork (setq _fromNetwork __fromNetwork)) _fromNetwork)
  (:fromRinex
   (&optional __fromRinex)
   (if __fromRinex (setq _fromRinex __fromRinex)) _fromRinex)
  (:fromUnknown
   (&optional __fromUnknown)
   (if __fromUnknown (setq _fromUnknown __fromUnknown)) _fromUnknown)
  (:serialization-length
   ()
   (+
    ;; uint32 _fromReceiver
    4
    ;; uint32 _fromNetwork
    4
    ;; uint32 _fromRinex
    4
    ;; uint32 _fromUnknown
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _fromReceiver
       (write-long _fromReceiver s)
     ;; uint32 _fromNetwork
       (write-long _fromNetwork s)
     ;; uint32 _fromRinex
       (write-long _fromRinex s)
     ;; uint32 _fromUnknown
       (write-long _fromUnknown s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _fromReceiver
     (setq _fromReceiver (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _fromNetwork
     (setq _fromNetwork (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _fromRinex
     (setq _fromRinex (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _fromUnknown
     (setq _fromUnknown (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ros_sensor_msgs::AvlSatelliteData :md5sum-) "76f8b39b7941efd688ebc4770b25c1d2")
(setf (get ros_sensor_msgs::AvlSatelliteData :datatype-) "ros_sensor_msgs/AvlSatelliteData")
(setf (get ros_sensor_msgs::AvlSatelliteData :definition-)
      "uint32    fromReceiver
uint32    fromNetwork
uint32    fromRinex
uint32    fromUnknown
")



(provide :ros_sensor_msgs/AvlSatelliteData "76f8b39b7941efd688ebc4770b25c1d2")


