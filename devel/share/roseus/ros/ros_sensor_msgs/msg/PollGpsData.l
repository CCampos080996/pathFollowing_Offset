;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::PollGpsData)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'PollGpsData (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::POLLGPSDATA")
  (make-package "ROS_SENSOR_MSGS::POLLGPSDATA"))

(in-package "ROS")
;;//! \htmlinclude PollGpsData.msg.html


(defclass ros_sensor_msgs::PollGpsData
  :super ros::object
  :slots (_pvt _ephemeris _almanac _utc_iono _ranges ))

(defmethod ros_sensor_msgs::PollGpsData
  (:init
   (&key
    ((:pvt __pvt) nil)
    ((:ephemeris __ephemeris) nil)
    ((:almanac __almanac) nil)
    ((:utc_iono __utc_iono) nil)
    ((:ranges __ranges) nil)
    )
   (send-super :init)
   (setq _pvt __pvt)
   (setq _ephemeris __ephemeris)
   (setq _almanac __almanac)
   (setq _utc_iono __utc_iono)
   (setq _ranges __ranges)
   self)
  (:pvt
   (&optional __pvt)
   (if __pvt (setq _pvt __pvt)) _pvt)
  (:ephemeris
   (&optional __ephemeris)
   (if __ephemeris (setq _ephemeris __ephemeris)) _ephemeris)
  (:almanac
   (&optional __almanac)
   (if __almanac (setq _almanac __almanac)) _almanac)
  (:utc_iono
   (&optional __utc_iono)
   (if __utc_iono (setq _utc_iono __utc_iono)) _utc_iono)
  (:ranges
   (&optional __ranges)
   (if __ranges (setq _ranges __ranges)) _ranges)
  (:serialization-length
   ()
   (+
    ;; bool _pvt
    1
    ;; bool _ephemeris
    1
    ;; bool _almanac
    1
    ;; bool _utc_iono
    1
    ;; bool _ranges
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _pvt
       (if _pvt (write-byte -1 s) (write-byte 0 s))
     ;; bool _ephemeris
       (if _ephemeris (write-byte -1 s) (write-byte 0 s))
     ;; bool _almanac
       (if _almanac (write-byte -1 s) (write-byte 0 s))
     ;; bool _utc_iono
       (if _utc_iono (write-byte -1 s) (write-byte 0 s))
     ;; bool _ranges
       (if _ranges (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _pvt
     (setq _pvt (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _ephemeris
     (setq _ephemeris (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _almanac
     (setq _almanac (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _utc_iono
     (setq _utc_iono (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _ranges
     (setq _ranges (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ros_sensor_msgs::PollGpsData :md5sum-) "92871acf07b81d655c7b80e6382140a2")
(setf (get ros_sensor_msgs::PollGpsData :datatype-) "ros_sensor_msgs/PollGpsData")
(setf (get ros_sensor_msgs::PollGpsData :definition-)
      "bool    pvt
bool    ephemeris
bool    almanac
bool    utc_iono
bool    ranges
")



(provide :ros_sensor_msgs/PollGpsData "92871acf07b81d655c7b80e6382140a2")


