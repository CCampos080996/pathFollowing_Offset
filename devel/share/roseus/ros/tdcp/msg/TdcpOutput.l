;; Auto-generated. Do not edit!


(when (boundp 'tdcp::TdcpOutput)
  (if (not (find-package "TDCP"))
    (make-package "TDCP"))
  (shadow 'TdcpOutput (find-package "TDCP")))
(unless (find-package "TDCP::TDCPOUTPUT")
  (make-package "TDCP::TDCPOUTPUT"))

(in-package "ROS")
;;//! \htmlinclude TdcpOutput.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "ROS_SENSOR_MSGS"))
  (ros::roseus-add-msgs "ros_sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tdcp::TdcpOutput
  :super ros::object
  :slots (_header _gpsTime _psrSolEcef _psrSolEcefCovariance _rpvEcef _rpvEcefCovariance _rpvNorm ))

(defmethod tdcp::TdcpOutput
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:gpsTime __gpsTime) (instance ros_sensor_msgs::GpsTime :init))
    ((:psrSolEcef __psrSolEcef) (instance geometry_msgs::Vector3 :init))
    ((:psrSolEcefCovariance __psrSolEcefCovariance) (make-array 9 :initial-element 0.0 :element-type :float))
    ((:rpvEcef __rpvEcef) (instance geometry_msgs::Vector3 :init))
    ((:rpvEcefCovariance __rpvEcefCovariance) (make-array 9 :initial-element 0.0 :element-type :float))
    ((:rpvNorm __rpvNorm) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _gpsTime __gpsTime)
   (setq _psrSolEcef __psrSolEcef)
   (setq _psrSolEcefCovariance __psrSolEcefCovariance)
   (setq _rpvEcef __rpvEcef)
   (setq _rpvEcefCovariance __rpvEcefCovariance)
   (setq _rpvNorm (float __rpvNorm))
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
  (:psrSolEcef
   (&rest __psrSolEcef)
   (if (keywordp (car __psrSolEcef))
       (send* _psrSolEcef __psrSolEcef)
     (progn
       (if __psrSolEcef (setq _psrSolEcef (car __psrSolEcef)))
       _psrSolEcef)))
  (:psrSolEcefCovariance
   (&optional __psrSolEcefCovariance)
   (if __psrSolEcefCovariance (setq _psrSolEcefCovariance __psrSolEcefCovariance)) _psrSolEcefCovariance)
  (:rpvEcef
   (&rest __rpvEcef)
   (if (keywordp (car __rpvEcef))
       (send* _rpvEcef __rpvEcef)
     (progn
       (if __rpvEcef (setq _rpvEcef (car __rpvEcef)))
       _rpvEcef)))
  (:rpvEcefCovariance
   (&optional __rpvEcefCovariance)
   (if __rpvEcefCovariance (setq _rpvEcefCovariance __rpvEcefCovariance)) _rpvEcefCovariance)
  (:rpvNorm
   (&optional __rpvNorm)
   (if __rpvNorm (setq _rpvNorm __rpvNorm)) _rpvNorm)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; ros_sensor_msgs/GpsTime _gpsTime
    (send _gpsTime :serialization-length)
    ;; geometry_msgs/Vector3 _psrSolEcef
    (send _psrSolEcef :serialization-length)
    ;; float32[9] _psrSolEcefCovariance
    (* 4    9)
    ;; geometry_msgs/Vector3 _rpvEcef
    (send _rpvEcef :serialization-length)
    ;; float32[9] _rpvEcefCovariance
    (* 4    9)
    ;; float32 _rpvNorm
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
     ;; geometry_msgs/Vector3 _psrSolEcef
       (send _psrSolEcef :serialize s)
     ;; float32[9] _psrSolEcefCovariance
     (dotimes (i 9)
       (sys::poke (elt _psrSolEcefCovariance i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; geometry_msgs/Vector3 _rpvEcef
       (send _rpvEcef :serialize s)
     ;; float32[9] _rpvEcefCovariance
     (dotimes (i 9)
       (sys::poke (elt _rpvEcefCovariance i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _rpvNorm
       (sys::poke _rpvNorm (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; ros_sensor_msgs/GpsTime _gpsTime
     (send _gpsTime :deserialize buf ptr-) (incf ptr- (send _gpsTime :serialization-length))
   ;; geometry_msgs/Vector3 _psrSolEcef
     (send _psrSolEcef :deserialize buf ptr-) (incf ptr- (send _psrSolEcef :serialization-length))
   ;; float32[9] _psrSolEcefCovariance
   (dotimes (i (length _psrSolEcefCovariance))
     (setf (elt _psrSolEcefCovariance i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; geometry_msgs/Vector3 _rpvEcef
     (send _rpvEcef :deserialize buf ptr-) (incf ptr- (send _rpvEcef :serialization-length))
   ;; float32[9] _rpvEcefCovariance
   (dotimes (i (length _rpvEcefCovariance))
     (setf (elt _rpvEcefCovariance i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32 _rpvNorm
     (setq _rpvNorm (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get tdcp::TdcpOutput :md5sum-) "2353195a8a8998915590d5121e0ba66f")
(setf (get tdcp::TdcpOutput :datatype-) "tdcp/TdcpOutput")
(setf (get tdcp::TdcpOutput :definition-)
      "## TdcpOutput

std_msgs/Header          header
ros_sensor_msgs/GpsTime  gpsTime
geometry_msgs/Vector3    psrSolEcef
float32[9]               psrSolEcefCovariance
geometry_msgs/Vector3    rpvEcef
float32[9]               rpvEcefCovariance
float32                  rpvNorm
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



(provide :tdcp/TdcpOutput "2353195a8a8998915590d5121e0ba66f")


