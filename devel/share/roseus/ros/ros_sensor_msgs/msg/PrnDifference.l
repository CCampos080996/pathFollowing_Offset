;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::PrnDifference)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'PrnDifference (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::PRNDIFFERENCE")
  (make-package "ROS_SENSOR_MSGS::PRNDIFFERENCE"))

(in-package "ROS")
;;//! \htmlinclude PrnDifference.msg.html


(defclass ros_sensor_msgs::PrnDifference
  :super ros::object
  :slots (_prn _difference ))

(defmethod ros_sensor_msgs::PrnDifference
  (:init
   (&key
    ((:prn __prn) 0)
    ((:difference __difference) 0.0)
    )
   (send-super :init)
   (setq _prn (round __prn))
   (setq _difference (float __difference))
   self)
  (:prn
   (&optional __prn)
   (if __prn (setq _prn __prn)) _prn)
  (:difference
   (&optional __difference)
   (if __difference (setq _difference __difference)) _difference)
  (:serialization-length
   ()
   (+
    ;; uint32 _prn
    4
    ;; float64 _difference
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _prn
       (write-long _prn s)
     ;; float64 _difference
       (sys::poke _difference (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _prn
     (setq _prn (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _difference
     (setq _difference (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ros_sensor_msgs::PrnDifference :md5sum-) "c858497f90c1f6e07daed8d782b2a3cd")
(setf (get ros_sensor_msgs::PrnDifference :datatype-) "ros_sensor_msgs/PrnDifference")
(setf (get ros_sensor_msgs::PrnDifference :definition-)
      "uint32   prn
float64  difference
")



(provide :ros_sensor_msgs/PrnDifference "c858497f90c1f6e07daed8d782b2a3cd")


