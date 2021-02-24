;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::SvRae)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'SvRae (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::SVRAE")
  (make-package "ROS_SENSOR_MSGS::SVRAE"))

(in-package "ROS")
;;//! \htmlinclude SvRae.msg.html


(defclass ros_sensor_msgs::SvRae
  :super ros::object
  :slots (_prn _range _az _el ))

(defmethod ros_sensor_msgs::SvRae
  (:init
   (&key
    ((:prn __prn) 0)
    ((:range __range) 0.0)
    ((:az __az) 0.0)
    ((:el __el) 0.0)
    )
   (send-super :init)
   (setq _prn (round __prn))
   (setq _range (float __range))
   (setq _az (float __az))
   (setq _el (float __el))
   self)
  (:prn
   (&optional __prn)
   (if __prn (setq _prn __prn)) _prn)
  (:range
   (&optional __range)
   (if __range (setq _range __range)) _range)
  (:az
   (&optional __az)
   (if __az (setq _az __az)) _az)
  (:el
   (&optional __el)
   (if __el (setq _el __el)) _el)
  (:serialization-length
   ()
   (+
    ;; uint32 _prn
    4
    ;; float64 _range
    8
    ;; float64 _az
    8
    ;; float64 _el
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _prn
       (write-long _prn s)
     ;; float64 _range
       (sys::poke _range (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _az
       (sys::poke _az (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _el
       (sys::poke _el (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _prn
     (setq _prn (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _range
     (setq _range (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _az
     (setq _az (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _el
     (setq _el (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ros_sensor_msgs::SvRae :md5sum-) "d34951c1a7060337ca1e7e3cb824c99d")
(setf (get ros_sensor_msgs::SvRae :datatype-) "ros_sensor_msgs/SvRae")
(setf (get ros_sensor_msgs::SvRae :definition-)
      "# Range, az, and el information

uint32          prn            # GPS [1-32], GLONASS may be negative
float64         range          # range to a satellite vehicle from a point [m]
float64         az             # relative azimuth angle to a satellite vehicle from a point [deg]
float64         el             # relateive elevation angle to a satellite vehicle from a point [deg]
")



(provide :ros_sensor_msgs/SvRae "d34951c1a7060337ca1e7e3cb824c99d")


