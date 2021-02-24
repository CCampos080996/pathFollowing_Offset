;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::CmdGpsAssist)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'CmdGpsAssist (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::CMDGPSASSIST")
  (make-package "ROS_SENSOR_MSGS::CMDGPSASSIST"))

(in-package "ROS")
;;//! \htmlinclude CmdGpsAssist.msg.html


(defclass ros_sensor_msgs::CmdGpsAssist
  :super ros::object
  :slots (_assist_time _assist_position _assist_gps_ephemeris _assist_gps_almanac _assist_gps_utc_iono _assist_precise_time ))

(defmethod ros_sensor_msgs::CmdGpsAssist
  (:init
   (&key
    ((:assist_time __assist_time) nil)
    ((:assist_position __assist_position) nil)
    ((:assist_gps_ephemeris __assist_gps_ephemeris) nil)
    ((:assist_gps_almanac __assist_gps_almanac) nil)
    ((:assist_gps_utc_iono __assist_gps_utc_iono) nil)
    ((:assist_precise_time __assist_precise_time) nil)
    )
   (send-super :init)
   (setq _assist_time __assist_time)
   (setq _assist_position __assist_position)
   (setq _assist_gps_ephemeris __assist_gps_ephemeris)
   (setq _assist_gps_almanac __assist_gps_almanac)
   (setq _assist_gps_utc_iono __assist_gps_utc_iono)
   (setq _assist_precise_time __assist_precise_time)
   self)
  (:assist_time
   (&optional __assist_time)
   (if __assist_time (setq _assist_time __assist_time)) _assist_time)
  (:assist_position
   (&optional __assist_position)
   (if __assist_position (setq _assist_position __assist_position)) _assist_position)
  (:assist_gps_ephemeris
   (&optional __assist_gps_ephemeris)
   (if __assist_gps_ephemeris (setq _assist_gps_ephemeris __assist_gps_ephemeris)) _assist_gps_ephemeris)
  (:assist_gps_almanac
   (&optional __assist_gps_almanac)
   (if __assist_gps_almanac (setq _assist_gps_almanac __assist_gps_almanac)) _assist_gps_almanac)
  (:assist_gps_utc_iono
   (&optional __assist_gps_utc_iono)
   (if __assist_gps_utc_iono (setq _assist_gps_utc_iono __assist_gps_utc_iono)) _assist_gps_utc_iono)
  (:assist_precise_time
   (&optional __assist_precise_time)
   (if __assist_precise_time (setq _assist_precise_time __assist_precise_time)) _assist_precise_time)
  (:serialization-length
   ()
   (+
    ;; bool _assist_time
    1
    ;; bool _assist_position
    1
    ;; bool _assist_gps_ephemeris
    1
    ;; bool _assist_gps_almanac
    1
    ;; bool _assist_gps_utc_iono
    1
    ;; bool _assist_precise_time
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _assist_time
       (if _assist_time (write-byte -1 s) (write-byte 0 s))
     ;; bool _assist_position
       (if _assist_position (write-byte -1 s) (write-byte 0 s))
     ;; bool _assist_gps_ephemeris
       (if _assist_gps_ephemeris (write-byte -1 s) (write-byte 0 s))
     ;; bool _assist_gps_almanac
       (if _assist_gps_almanac (write-byte -1 s) (write-byte 0 s))
     ;; bool _assist_gps_utc_iono
       (if _assist_gps_utc_iono (write-byte -1 s) (write-byte 0 s))
     ;; bool _assist_precise_time
       (if _assist_precise_time (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _assist_time
     (setq _assist_time (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _assist_position
     (setq _assist_position (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _assist_gps_ephemeris
     (setq _assist_gps_ephemeris (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _assist_gps_almanac
     (setq _assist_gps_almanac (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _assist_gps_utc_iono
     (setq _assist_gps_utc_iono (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _assist_precise_time
     (setq _assist_precise_time (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ros_sensor_msgs::CmdGpsAssist :md5sum-) "9888cfe375cffb0c1d61c05b99896408")
(setf (get ros_sensor_msgs::CmdGpsAssist :datatype-) "ros_sensor_msgs/CmdGpsAssist")
(setf (get ros_sensor_msgs::CmdGpsAssist :definition-)
      "bool assist_time
bool assist_position
bool assist_gps_ephemeris
bool assist_gps_almanac
bool assist_gps_utc_iono
bool assist_precise_time
")



(provide :ros_sensor_msgs/CmdGpsAssist "9888cfe375cffb0c1d61c05b99896408")


