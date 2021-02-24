;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::GpsAlmanac)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'GpsAlmanac (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::GPSALMANAC")
  (make-package "ROS_SENSOR_MSGS::GPSALMANAC"))

(in-package "ROS")
;;//! \htmlinclude GpsAlmanac.msg.html


(defclass ros_sensor_msgs::GpsAlmanac
  :super ros::object
  :slots (_prn _reference_week _subframe ))

(defmethod ros_sensor_msgs::GpsAlmanac
  (:init
   (&key
    ((:prn __prn) 0)
    ((:reference_week __reference_week) 0)
    ((:subframe __subframe) (make-array 30 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _prn (round __prn))
   (setq _reference_week (round __reference_week))
   (setq _subframe __subframe)
   self)
  (:prn
   (&optional __prn)
   (if __prn (setq _prn __prn)) _prn)
  (:reference_week
   (&optional __reference_week)
   (if __reference_week (setq _reference_week __reference_week)) _reference_week)
  (:subframe
   (&optional __subframe)
   (if __subframe (setq _subframe __subframe)) _subframe)
  (:serialization-length
   ()
   (+
    ;; uint16 _prn
    2
    ;; uint16 _reference_week
    2
    ;; uint8[30] _subframe
    (* 1    30)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _prn
       (write-word _prn s)
     ;; uint16 _reference_week
       (write-word _reference_week s)
     ;; uint8[30] _subframe
     (princ _subframe s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _prn
     (setq _prn (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _reference_week
     (setq _reference_week (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8[30] _subframe
   (setq _subframe (make-array 30 :element-type :char))
   (replace _subframe buf :start2 ptr-) (incf ptr- 30)
   ;;
   self)
  )

(setf (get ros_sensor_msgs::GpsAlmanac :md5sum-) "0f1c30b6e49d1d575a6b6c2bf03fd6fa")
(setf (get ros_sensor_msgs::GpsAlmanac :datatype-) "ros_sensor_msgs/GpsAlmanac")
(setf (get ros_sensor_msgs::GpsAlmanac :definition-)
      "
uint16      prn
uint16      reference_week
uint8[30]   subframe
")



(provide :ros_sensor_msgs/GpsAlmanac "0f1c30b6e49d1d575a6b6c2bf03fd6fa")


