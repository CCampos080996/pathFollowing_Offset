;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::GpsAssist)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'GpsAssist (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::GPSASSIST")
  (make-package "ROS_SENSOR_MSGS::GPSASSIST"))

(in-package "ROS")
;;//! \htmlinclude GpsAssist.msg.html


(defclass ros_sensor_msgs::GpsAssist
  :super ros::object
  :slots (_position _position_valid _cpu_time_offset _ephemerides _almanac _utc_iono _utc_iono_valid _include_precise_time ))

(defmethod ros_sensor_msgs::GpsAssist
  (:init
   (&key
    ((:position __position) (instance ros_sensor_msgs::LlhPosition :init))
    ((:position_valid __position_valid) nil)
    ((:cpu_time_offset __cpu_time_offset) (instance ros_sensor_msgs::CpuTimeOffset :init))
    ((:ephemerides __ephemerides) (let (r) (dotimes (i 0) (push (instance ros_sensor_msgs::GpsEphemeris :init) r)) r))
    ((:almanac __almanac) (let (r) (dotimes (i 0) (push (instance ros_sensor_msgs::GpsAlmanac :init) r)) r))
    ((:utc_iono __utc_iono) (instance ros_sensor_msgs::UtcIonosphere :init))
    ((:utc_iono_valid __utc_iono_valid) nil)
    ((:include_precise_time __include_precise_time) nil)
    )
   (send-super :init)
   (setq _position __position)
   (setq _position_valid __position_valid)
   (setq _cpu_time_offset __cpu_time_offset)
   (setq _ephemerides __ephemerides)
   (setq _almanac __almanac)
   (setq _utc_iono __utc_iono)
   (setq _utc_iono_valid __utc_iono_valid)
   (setq _include_precise_time __include_precise_time)
   self)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:position_valid
   (&optional __position_valid)
   (if __position_valid (setq _position_valid __position_valid)) _position_valid)
  (:cpu_time_offset
   (&rest __cpu_time_offset)
   (if (keywordp (car __cpu_time_offset))
       (send* _cpu_time_offset __cpu_time_offset)
     (progn
       (if __cpu_time_offset (setq _cpu_time_offset (car __cpu_time_offset)))
       _cpu_time_offset)))
  (:ephemerides
   (&rest __ephemerides)
   (if (keywordp (car __ephemerides))
       (send* _ephemerides __ephemerides)
     (progn
       (if __ephemerides (setq _ephemerides (car __ephemerides)))
       _ephemerides)))
  (:almanac
   (&rest __almanac)
   (if (keywordp (car __almanac))
       (send* _almanac __almanac)
     (progn
       (if __almanac (setq _almanac (car __almanac)))
       _almanac)))
  (:utc_iono
   (&rest __utc_iono)
   (if (keywordp (car __utc_iono))
       (send* _utc_iono __utc_iono)
     (progn
       (if __utc_iono (setq _utc_iono (car __utc_iono)))
       _utc_iono)))
  (:utc_iono_valid
   (&optional __utc_iono_valid)
   (if __utc_iono_valid (setq _utc_iono_valid __utc_iono_valid)) _utc_iono_valid)
  (:include_precise_time
   (&optional __include_precise_time)
   (if __include_precise_time (setq _include_precise_time __include_precise_time)) _include_precise_time)
  (:serialization-length
   ()
   (+
    ;; ros_sensor_msgs/LlhPosition _position
    (send _position :serialization-length)
    ;; bool _position_valid
    1
    ;; ros_sensor_msgs/CpuTimeOffset _cpu_time_offset
    (send _cpu_time_offset :serialization-length)
    ;; ros_sensor_msgs/GpsEphemeris[] _ephemerides
    (apply #'+ (send-all _ephemerides :serialization-length)) 4
    ;; ros_sensor_msgs/GpsAlmanac[] _almanac
    (apply #'+ (send-all _almanac :serialization-length)) 4
    ;; ros_sensor_msgs/UtcIonosphere _utc_iono
    (send _utc_iono :serialization-length)
    ;; bool _utc_iono_valid
    1
    ;; bool _include_precise_time
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ros_sensor_msgs/LlhPosition _position
       (send _position :serialize s)
     ;; bool _position_valid
       (if _position_valid (write-byte -1 s) (write-byte 0 s))
     ;; ros_sensor_msgs/CpuTimeOffset _cpu_time_offset
       (send _cpu_time_offset :serialize s)
     ;; ros_sensor_msgs/GpsEphemeris[] _ephemerides
     (write-long (length _ephemerides) s)
     (dolist (elem _ephemerides)
       (send elem :serialize s)
       )
     ;; ros_sensor_msgs/GpsAlmanac[] _almanac
     (write-long (length _almanac) s)
     (dolist (elem _almanac)
       (send elem :serialize s)
       )
     ;; ros_sensor_msgs/UtcIonosphere _utc_iono
       (send _utc_iono :serialize s)
     ;; bool _utc_iono_valid
       (if _utc_iono_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _include_precise_time
       (if _include_precise_time (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ros_sensor_msgs/LlhPosition _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; bool _position_valid
     (setq _position_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; ros_sensor_msgs/CpuTimeOffset _cpu_time_offset
     (send _cpu_time_offset :deserialize buf ptr-) (incf ptr- (send _cpu_time_offset :serialization-length))
   ;; ros_sensor_msgs/GpsEphemeris[] _ephemerides
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ephemerides (let (r) (dotimes (i n) (push (instance ros_sensor_msgs::GpsEphemeris :init) r)) r))
     (dolist (elem- _ephemerides)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; ros_sensor_msgs/GpsAlmanac[] _almanac
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _almanac (let (r) (dotimes (i n) (push (instance ros_sensor_msgs::GpsAlmanac :init) r)) r))
     (dolist (elem- _almanac)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; ros_sensor_msgs/UtcIonosphere _utc_iono
     (send _utc_iono :deserialize buf ptr-) (incf ptr- (send _utc_iono :serialization-length))
   ;; bool _utc_iono_valid
     (setq _utc_iono_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _include_precise_time
     (setq _include_precise_time (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ros_sensor_msgs::GpsAssist :md5sum-) "c2447862b19affe79c50f6956a1e26a6")
(setf (get ros_sensor_msgs::GpsAssist :datatype-) "ros_sensor_msgs/GpsAssist")
(setf (get ros_sensor_msgs::GpsAssist :definition-)
      "LlhPosition             position
bool                    position_valid
CpuTimeOffset           cpu_time_offset
GpsEphemeris[]          ephemerides
GpsAlmanac[]            almanac
UtcIonosphere           utc_iono
bool                    utc_iono_valid
bool                    include_precise_time

#float64                 utc_system_time_offset
#GpsTime                 gps_time
#bool                    gps_time_valid
================================================================================
MSG: ros_sensor_msgs/LlhPosition
# # LlhPosition

float64                  latitude   # [deg]
float64                  longitude  # [deg]
float64                  altitude   # [m]
uint16                   horizontalAccuracy
uint16                   verticalAccuracy
================================================================================
MSG: ros_sensor_msgs/CpuTimeOffset
bool    valid
float64 secondsOffset
================================================================================
MSG: ros_sensor_msgs/GpsEphemeris
## Gps Ephemeris subframes for one satellite

uint16      prn
uint8[30]   subframe1
uint8[30]   subframe2
uint8[30]   subframe3
================================================================================
MSG: ros_sensor_msgs/GpsAlmanac

uint16      prn
uint16      reference_week
uint8[30]   subframe
================================================================================
MSG: ros_sensor_msgs/UtcIonosphere
## Subframe of UTC and Ionospheric Parameters

uint8[30]   subframe




")



(provide :ros_sensor_msgs/GpsAssist "c2447862b19affe79c50f6956a1e26a6")


