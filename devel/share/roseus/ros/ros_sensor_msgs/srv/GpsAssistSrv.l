;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::GpsAssistSrv)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'GpsAssistSrv (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::GPSASSISTSRV")
  (make-package "ROS_SENSOR_MSGS::GPSASSISTSRV"))
(unless (find-package "ROS_SENSOR_MSGS::GPSASSISTSRVREQUEST")
  (make-package "ROS_SENSOR_MSGS::GPSASSISTSRVREQUEST"))
(unless (find-package "ROS_SENSOR_MSGS::GPSASSISTSRVRESPONSE")
  (make-package "ROS_SENSOR_MSGS::GPSASSISTSRVRESPONSE"))

(in-package "ROS")





(defclass ros_sensor_msgs::GpsAssistSrvRequest
  :super ros::object
  :slots (_assist ))

(defmethod ros_sensor_msgs::GpsAssistSrvRequest
  (:init
   (&key
    ((:assist __assist) (instance ros_sensor_msgs::GpsAssist :init))
    )
   (send-super :init)
   (setq _assist __assist)
   self)
  (:assist
   (&rest __assist)
   (if (keywordp (car __assist))
       (send* _assist __assist)
     (progn
       (if __assist (setq _assist (car __assist)))
       _assist)))
  (:serialization-length
   ()
   (+
    ;; ros_sensor_msgs/GpsAssist _assist
    (send _assist :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ros_sensor_msgs/GpsAssist _assist
       (send _assist :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ros_sensor_msgs/GpsAssist _assist
     (send _assist :deserialize buf ptr-) (incf ptr- (send _assist :serialization-length))
   ;;
   self)
  )

(defclass ros_sensor_msgs::GpsAssistSrvResponse
  :super ros::object
  :slots (_success ))

(defmethod ros_sensor_msgs::GpsAssistSrvResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass ros_sensor_msgs::GpsAssistSrv
  :super ros::object
  :slots ())

(setf (get ros_sensor_msgs::GpsAssistSrv :md5sum-) "90343e3974f5bb94a900d205e0870ced")
(setf (get ros_sensor_msgs::GpsAssistSrv :datatype-) "ros_sensor_msgs/GpsAssistSrv")
(setf (get ros_sensor_msgs::GpsAssistSrv :request) ros_sensor_msgs::GpsAssistSrvRequest)
(setf (get ros_sensor_msgs::GpsAssistSrv :response) ros_sensor_msgs::GpsAssistSrvResponse)

(defmethod ros_sensor_msgs::GpsAssistSrvRequest
  (:response () (instance ros_sensor_msgs::GpsAssistSrvResponse :init)))

(setf (get ros_sensor_msgs::GpsAssistSrvRequest :md5sum-) "90343e3974f5bb94a900d205e0870ced")
(setf (get ros_sensor_msgs::GpsAssistSrvRequest :datatype-) "ros_sensor_msgs/GpsAssistSrvRequest")
(setf (get ros_sensor_msgs::GpsAssistSrvRequest :definition-)
      "GpsAssist assist

================================================================================
MSG: ros_sensor_msgs/GpsAssist
LlhPosition             position
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



---
bool success
")

(setf (get ros_sensor_msgs::GpsAssistSrvResponse :md5sum-) "90343e3974f5bb94a900d205e0870ced")
(setf (get ros_sensor_msgs::GpsAssistSrvResponse :datatype-) "ros_sensor_msgs/GpsAssistSrvResponse")
(setf (get ros_sensor_msgs::GpsAssistSrvResponse :definition-)
      "GpsAssist assist

================================================================================
MSG: ros_sensor_msgs/GpsAssist
LlhPosition             position
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



---
bool success
")



(provide :ros_sensor_msgs/GpsAssistSrv "90343e3974f5bb94a900d205e0870ced")


