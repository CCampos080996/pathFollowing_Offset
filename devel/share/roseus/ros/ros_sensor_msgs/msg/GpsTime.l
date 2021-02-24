;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::GpsTime)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'GpsTime (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::GPSTIME")
  (make-package "ROS_SENSOR_MSGS::GPSTIME"))

(in-package "ROS")
;;//! \htmlinclude GpsTime.msg.html


(defclass ros_sensor_msgs::GpsTime
  :super ros::object
  :slots (_gps_week _gps_seconds ))

(defmethod ros_sensor_msgs::GpsTime
  (:init
   (&key
    ((:gps_week __gps_week) 0)
    ((:gps_seconds __gps_seconds) 0.0)
    )
   (send-super :init)
   (setq _gps_week (round __gps_week))
   (setq _gps_seconds (float __gps_seconds))
   self)
  (:gps_week
   (&optional __gps_week)
   (if __gps_week (setq _gps_week __gps_week)) _gps_week)
  (:gps_seconds
   (&optional __gps_seconds)
   (if __gps_seconds (setq _gps_seconds __gps_seconds)) _gps_seconds)
  (:serialization-length
   ()
   (+
    ;; uint32 _gps_week
    4
    ;; float64 _gps_seconds
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _gps_week
       (write-long _gps_week s)
     ;; float64 _gps_seconds
       (sys::poke _gps_seconds (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _gps_week
     (setq _gps_week (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _gps_seconds
     (setq _gps_seconds (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ros_sensor_msgs::GpsTime :md5sum-) "137ebf93fd4c356decbd306ad6f360b9")
(setf (get ros_sensor_msgs::GpsTime :datatype-) "ros_sensor_msgs/GpsTime")
(setf (get ros_sensor_msgs::GpsTime :definition-)
      "## GPS time structure
uint32          gps_week        # Full GPS week from (0:0:00 Jan 06, 1980)
float64         gps_seconds     # GPS seconds into week [sec]
")



(provide :ros_sensor_msgs/GpsTime "137ebf93fd4c356decbd306ad6f360b9")


