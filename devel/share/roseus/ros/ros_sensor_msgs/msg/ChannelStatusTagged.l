;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::ChannelStatusTagged)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'ChannelStatusTagged (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::CHANNELSTATUSTAGGED")
  (make-package "ROS_SENSOR_MSGS::CHANNELSTATUSTAGGED"))

(in-package "ROS")
;;//! \htmlinclude ChannelStatusTagged.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_sensor_msgs::ChannelStatusTagged
  :super ros::object
  :slots (_header _tags _statuses ))

(defmethod ros_sensor_msgs::ChannelStatusTagged
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:tags __tags) (instance ros_sensor_msgs::Tags :init))
    ((:statuses __statuses) (let (r) (dotimes (i 0) (push (instance ros_sensor_msgs::ChannelStatus :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _tags __tags)
   (setq _statuses __statuses)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:tags
   (&rest __tags)
   (if (keywordp (car __tags))
       (send* _tags __tags)
     (progn
       (if __tags (setq _tags (car __tags)))
       _tags)))
  (:statuses
   (&rest __statuses)
   (if (keywordp (car __statuses))
       (send* _statuses __statuses)
     (progn
       (if __statuses (setq _statuses (car __statuses)))
       _statuses)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; ros_sensor_msgs/Tags _tags
    (send _tags :serialization-length)
    ;; ros_sensor_msgs/ChannelStatus[] _statuses
    (apply #'+ (send-all _statuses :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; ros_sensor_msgs/Tags _tags
       (send _tags :serialize s)
     ;; ros_sensor_msgs/ChannelStatus[] _statuses
     (write-long (length _statuses) s)
     (dolist (elem _statuses)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; ros_sensor_msgs/Tags _tags
     (send _tags :deserialize buf ptr-) (incf ptr- (send _tags :serialization-length))
   ;; ros_sensor_msgs/ChannelStatus[] _statuses
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _statuses (let (r) (dotimes (i n) (push (instance ros_sensor_msgs::ChannelStatus :init) r)) r))
     (dolist (elem- _statuses)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ros_sensor_msgs::ChannelStatusTagged :md5sum-) "3dc859a31141b6210ae035a86d43ca23")
(setf (get ros_sensor_msgs::ChannelStatusTagged :datatype-) "ros_sensor_msgs/ChannelStatusTagged")
(setf (get ros_sensor_msgs::ChannelStatusTagged :definition-)
      "## ChannelStatusTagged

std_msgs/Header   header
Tags              tags
ChannelStatus[]   statuses
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
MSG: ros_sensor_msgs/Tags
## Header structure for user defined data messages

GpsTime        gpsTime
SensorType     sensor
ReceiverType   receiver   # String to specify GNSS receiver type
KeyStatus      key
string         sensorName
SourceType     source
bool           dataValid
AssuranceLevel assuranceLevel
================================================================================
MSG: ros_sensor_msgs/GpsTime
## GPS time structure
uint32          gps_week        # Full GPS week from (0:0:00 Jan 06, 1980)
float64         gps_seconds     # GPS seconds into week [sec]
================================================================================
MSG: ros_sensor_msgs/SensorType
## Sensor Type

uint8 SensorTypeUnknown = 0
uint8 SensorTypeGps     = 1
uint8 SensorTypeGlonass = 2
uint8 SensorTypeGalileo = 4
uint8 SensorTypeImu     = 8
uint8 SensorRfRange     = 16
uint8 SensorTypeVision  = 32

uint8 type
================================================================================
MSG: ros_sensor_msgs/ReceiverType
uint8 RECEIVER_TYPE_UBLOX = 0
uint8 RECEIVER_TYPE_NOVATEL = 1
uint8 RECEIVER_TYPE_DAGR = 2
uint8 RECEIVER_TYPE_MICROGRAM = 3
uint8 RECEIVER_TYPE_TRUTRAK = 4
uint8 RECEIVER_TYPE_GSSIP = 5
uint8 RECEIVER_TYPE_OTHER = 14
uint8 RECEIVER_TYPE_UNKNOWN = 15
uint8 type
================================================================================
MSG: ros_sensor_msgs/KeyStatus
## KeyStatus

uint8 UnauthorizedNotKeyed = 0
uint8 AuthorizedNotKeyed   = 1
uint8 Keyed                = 2

uint8 status
================================================================================
MSG: ros_sensor_msgs/SourceType
## Source of data

uint8 SourceTypeUnknown  = 0
uint8 SourceTypeReceiver = 1
uint8 SourceTypeNetwork  = 2
uint8 SourceTypeRinex    = 3
uint8 SourceTypeAny      = 99

uint8 type
================================================================================
MSG: ros_sensor_msgs/AssuranceLevel
uint8  Normal   = 0
uint8  Unknown  = 1
uint8  Warning  = 2
uint8  Attack   = 3

uint8 level
================================================================================
MSG: ros_sensor_msgs/ChannelStatus
###Channel Status

uint32         prn
uint32         receiverChannel
uint32         carrierToNoise   # db-Hz
float32        azimuth
float32        elevation
TrackingStatus tracking
CodeType       code
FrequencyType  frequency
bool           usedInSolution
================================================================================
MSG: ros_sensor_msgs/TrackingStatus
## Tracking Status

uint8 Idle                        = 0
uint8 SearchingCa                 = 1
uint8 SearchingPy                 = 2
uint8 CodeLock                    = 3
uint8 CarrierLock                 = 4
uint8 CarrierTrackDataCollect     = 5
uint8 SequentialResynchronization = 6
uint8 Reacquisition               = 7
uint8 Unusable                    = 8

uint8 status
================================================================================
MSG: ros_sensor_msgs/CodeType
## Code Type

uint8 CodeTypeUnknown         = 0
uint8 CodeTypeGpsCa           = 1
uint8 CodeTypeGpsP            = 2
uint8 CodeTypeGpsPCodeless    = 3
uint8 CodeTypeGpsY            = 4
uint8 CodeTypeGpsC            = 5
uint8 CodeTypeGpsCCodeless    = 6
uint8 CodeTypeGpsM            = 8
uint8 CodeTypeGpsMPrime       = 9

uint8 CodeTypeGlonass  = 16
uint8 CodeTypeGalileo  = 32

uint8 type
================================================================================
MSG: ros_sensor_msgs/FrequencyType
## Frequency Type

uint8 FrequencyTypeUnknown      = 0
uint8 FrequencyTypeL1           = 1
uint8 FrequencyTypeL2           = 2
uint8 FrequencyTypeL5           = 3
uint8 FrequencyTypeGalileoE1    = 4
uint8 FrequencyTypeGalileoE5    = 5
uint8 FrequencyTypeGalileoE6    = 6
uint8 FrequencyTypeGalileoC     = 7
uint8 FrequencyTypeGlonassL1F   = 8
uint8 FrequencyTypeGlonassL2F   = 9
uint8 FrequencyTypeGlonassL1C   = 10
uint8 FrequencyTypeGlonassL2C   = 11
uint8 FrequencyTypeGlonassL3C   = 12

uint8 type
")



(provide :ros_sensor_msgs/ChannelStatusTagged "3dc859a31141b6210ae035a86d43ca23")


