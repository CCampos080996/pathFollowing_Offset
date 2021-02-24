;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::AssuranceCheckValue)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'AssuranceCheckValue (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::ASSURANCECHECKVALUE")
  (make-package "ROS_SENSOR_MSGS::ASSURANCECHECKVALUE"))

(in-package "ROS")
;;//! \htmlinclude AssuranceCheckValue.msg.html


(defclass ros_sensor_msgs::AssuranceCheckValue
  :super ros::object
  :slots (_prn _checkVal ))

(defmethod ros_sensor_msgs::AssuranceCheckValue
  (:init
   (&key
    ((:prn __prn) 0)
    ((:checkVal __checkVal) 0)
    )
   (send-super :init)
   (setq _prn (round __prn))
   (setq _checkVal (round __checkVal))
   self)
  (:prn
   (&optional __prn)
   (if __prn (setq _prn __prn)) _prn)
  (:checkVal
   (&optional __checkVal)
   (if __checkVal (setq _checkVal __checkVal)) _checkVal)
  (:serialization-length
   ()
   (+
    ;; uint32 _prn
    4
    ;; uint32 _checkVal
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _prn
       (write-long _prn s)
     ;; uint32 _checkVal
       (write-long _checkVal s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _prn
     (setq _prn (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _checkVal
     (setq _checkVal (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ros_sensor_msgs::AssuranceCheckValue :md5sum-) "a70b393a62ceefc4ae65dcd785400bfb")
(setf (get ros_sensor_msgs::AssuranceCheckValue :datatype-) "ros_sensor_msgs/AssuranceCheckValue")
(setf (get ros_sensor_msgs::AssuranceCheckValue :definition-)
      "## An assurance check value for a given prn

uint32    prn
uint32    checkVal
")



(provide :ros_sensor_msgs/AssuranceCheckValue "a70b393a62ceefc4ae65dcd785400bfb")


