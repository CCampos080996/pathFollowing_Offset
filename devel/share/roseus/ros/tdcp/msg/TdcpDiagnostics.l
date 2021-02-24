;; Auto-generated. Do not edit!


(when (boundp 'tdcp::TdcpDiagnostics)
  (if (not (find-package "TDCP"))
    (make-package "TDCP"))
  (shadow 'TdcpDiagnostics (find-package "TDCP")))
(unless (find-package "TDCP::TDCPDIAGNOSTICS")
  (make-package "TDCP::TDCPDIAGNOSTICS"))

(in-package "ROS")
;;//! \htmlinclude TdcpDiagnostics.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "ROS_SENSOR_MSGS"))
  (ros::roseus-add-msgs "ros_sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tdcp::TdcpDiagnostics
  :super ros::object
  :slots (_header _gpsTime _numAvailableSvs _numPsrSolSvs _numTdcpSolSvs _spsDeltaPosition _faultCheckVariable1 _faultCheckVariable2 _sampleTime ))

(defmethod tdcp::TdcpDiagnostics
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:gpsTime __gpsTime) (instance ros_sensor_msgs::GpsTime :init))
    ((:numAvailableSvs __numAvailableSvs) 0)
    ((:numPsrSolSvs __numPsrSolSvs) 0)
    ((:numTdcpSolSvs __numTdcpSolSvs) 0)
    ((:spsDeltaPosition __spsDeltaPosition) (instance geometry_msgs::Vector3 :init))
    ((:faultCheckVariable1 __faultCheckVariable1) 0.0)
    ((:faultCheckVariable2 __faultCheckVariable2) 0.0)
    ((:sampleTime __sampleTime) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _gpsTime __gpsTime)
   (setq _numAvailableSvs (round __numAvailableSvs))
   (setq _numPsrSolSvs (round __numPsrSolSvs))
   (setq _numTdcpSolSvs (round __numTdcpSolSvs))
   (setq _spsDeltaPosition __spsDeltaPosition)
   (setq _faultCheckVariable1 (float __faultCheckVariable1))
   (setq _faultCheckVariable2 (float __faultCheckVariable2))
   (setq _sampleTime (float __sampleTime))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:gpsTime
   (&rest __gpsTime)
   (if (keywordp (car __gpsTime))
       (send* _gpsTime __gpsTime)
     (progn
       (if __gpsTime (setq _gpsTime (car __gpsTime)))
       _gpsTime)))
  (:numAvailableSvs
   (&optional __numAvailableSvs)
   (if __numAvailableSvs (setq _numAvailableSvs __numAvailableSvs)) _numAvailableSvs)
  (:numPsrSolSvs
   (&optional __numPsrSolSvs)
   (if __numPsrSolSvs (setq _numPsrSolSvs __numPsrSolSvs)) _numPsrSolSvs)
  (:numTdcpSolSvs
   (&optional __numTdcpSolSvs)
   (if __numTdcpSolSvs (setq _numTdcpSolSvs __numTdcpSolSvs)) _numTdcpSolSvs)
  (:spsDeltaPosition
   (&rest __spsDeltaPosition)
   (if (keywordp (car __spsDeltaPosition))
       (send* _spsDeltaPosition __spsDeltaPosition)
     (progn
       (if __spsDeltaPosition (setq _spsDeltaPosition (car __spsDeltaPosition)))
       _spsDeltaPosition)))
  (:faultCheckVariable1
   (&optional __faultCheckVariable1)
   (if __faultCheckVariable1 (setq _faultCheckVariable1 __faultCheckVariable1)) _faultCheckVariable1)
  (:faultCheckVariable2
   (&optional __faultCheckVariable2)
   (if __faultCheckVariable2 (setq _faultCheckVariable2 __faultCheckVariable2)) _faultCheckVariable2)
  (:sampleTime
   (&optional __sampleTime)
   (if __sampleTime (setq _sampleTime __sampleTime)) _sampleTime)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; ros_sensor_msgs/GpsTime _gpsTime
    (send _gpsTime :serialization-length)
    ;; uint16 _numAvailableSvs
    2
    ;; uint16 _numPsrSolSvs
    2
    ;; uint16 _numTdcpSolSvs
    2
    ;; geometry_msgs/Vector3 _spsDeltaPosition
    (send _spsDeltaPosition :serialization-length)
    ;; float32 _faultCheckVariable1
    4
    ;; float32 _faultCheckVariable2
    4
    ;; float32 _sampleTime
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; ros_sensor_msgs/GpsTime _gpsTime
       (send _gpsTime :serialize s)
     ;; uint16 _numAvailableSvs
       (write-word _numAvailableSvs s)
     ;; uint16 _numPsrSolSvs
       (write-word _numPsrSolSvs s)
     ;; uint16 _numTdcpSolSvs
       (write-word _numTdcpSolSvs s)
     ;; geometry_msgs/Vector3 _spsDeltaPosition
       (send _spsDeltaPosition :serialize s)
     ;; float32 _faultCheckVariable1
       (sys::poke _faultCheckVariable1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _faultCheckVariable2
       (sys::poke _faultCheckVariable2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _sampleTime
       (sys::poke _sampleTime (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; ros_sensor_msgs/GpsTime _gpsTime
     (send _gpsTime :deserialize buf ptr-) (incf ptr- (send _gpsTime :serialization-length))
   ;; uint16 _numAvailableSvs
     (setq _numAvailableSvs (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _numPsrSolSvs
     (setq _numPsrSolSvs (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _numTdcpSolSvs
     (setq _numTdcpSolSvs (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; geometry_msgs/Vector3 _spsDeltaPosition
     (send _spsDeltaPosition :deserialize buf ptr-) (incf ptr- (send _spsDeltaPosition :serialization-length))
   ;; float32 _faultCheckVariable1
     (setq _faultCheckVariable1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _faultCheckVariable2
     (setq _faultCheckVariable2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _sampleTime
     (setq _sampleTime (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get tdcp::TdcpDiagnostics :md5sum-) "29abe80c51328853cd49a1acdc38a46c")
(setf (get tdcp::TdcpDiagnostics :datatype-) "tdcp/TdcpDiagnostics")
(setf (get tdcp::TdcpDiagnostics :definition-)
      "## TdcpDiagnostics

std_msgs/Header          header
ros_sensor_msgs/GpsTime  gpsTime

uint16 numAvailableSvs
uint16 numPsrSolSvs
uint16 numTdcpSolSvs

geometry_msgs/Vector3 spsDeltaPosition

float32 faultCheckVariable1
float32 faultCheckVariable2

float32 sampleTime
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: ros_sensor_msgs/GpsTime
## GPS time structure
uint32          gps_week        # Full GPS week from (0:0:00 Jan 06, 1980)
float64         gps_seconds     # GPS seconds into week [sec]
================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :tdcp/TdcpDiagnostics "29abe80c51328853cd49a1acdc38a46c")


