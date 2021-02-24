;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::GpsEphemeris)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'GpsEphemeris (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::GPSEPHEMERIS")
  (make-package "ROS_SENSOR_MSGS::GPSEPHEMERIS"))

(in-package "ROS")
;;//! \htmlinclude GpsEphemeris.msg.html


(defclass ros_sensor_msgs::GpsEphemeris
  :super ros::object
  :slots (_prn _subframe1 _subframe2 _subframe3 ))

(defmethod ros_sensor_msgs::GpsEphemeris
  (:init
   (&key
    ((:prn __prn) 0)
    ((:subframe1 __subframe1) (make-array 30 :initial-element 0 :element-type :char))
    ((:subframe2 __subframe2) (make-array 30 :initial-element 0 :element-type :char))
    ((:subframe3 __subframe3) (make-array 30 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _prn (round __prn))
   (setq _subframe1 __subframe1)
   (setq _subframe2 __subframe2)
   (setq _subframe3 __subframe3)
   self)
  (:prn
   (&optional __prn)
   (if __prn (setq _prn __prn)) _prn)
  (:subframe1
   (&optional __subframe1)
   (if __subframe1 (setq _subframe1 __subframe1)) _subframe1)
  (:subframe2
   (&optional __subframe2)
   (if __subframe2 (setq _subframe2 __subframe2)) _subframe2)
  (:subframe3
   (&optional __subframe3)
   (if __subframe3 (setq _subframe3 __subframe3)) _subframe3)
  (:serialization-length
   ()
   (+
    ;; uint16 _prn
    2
    ;; uint8[30] _subframe1
    (* 1    30)
    ;; uint8[30] _subframe2
    (* 1    30)
    ;; uint8[30] _subframe3
    (* 1    30)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _prn
       (write-word _prn s)
     ;; uint8[30] _subframe1
     (princ _subframe1 s)
     ;; uint8[30] _subframe2
     (princ _subframe2 s)
     ;; uint8[30] _subframe3
     (princ _subframe3 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _prn
     (setq _prn (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8[30] _subframe1
   (setq _subframe1 (make-array 30 :element-type :char))
   (replace _subframe1 buf :start2 ptr-) (incf ptr- 30)
   ;; uint8[30] _subframe2
   (setq _subframe2 (make-array 30 :element-type :char))
   (replace _subframe2 buf :start2 ptr-) (incf ptr- 30)
   ;; uint8[30] _subframe3
   (setq _subframe3 (make-array 30 :element-type :char))
   (replace _subframe3 buf :start2 ptr-) (incf ptr- 30)
   ;;
   self)
  )

(setf (get ros_sensor_msgs::GpsEphemeris :md5sum-) "572e67f241916f12c8e2d567d3205ad7")
(setf (get ros_sensor_msgs::GpsEphemeris :datatype-) "ros_sensor_msgs/GpsEphemeris")
(setf (get ros_sensor_msgs::GpsEphemeris :definition-)
      "## Gps Ephemeris subframes for one satellite

uint16      prn
uint8[30]   subframe1
uint8[30]   subframe2
uint8[30]   subframe3
")



(provide :ros_sensor_msgs/GpsEphemeris "572e67f241916f12c8e2d567d3205ad7")


