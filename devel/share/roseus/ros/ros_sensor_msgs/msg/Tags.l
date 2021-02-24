;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::Tags)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'Tags (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::TAGS")
  (make-package "ROS_SENSOR_MSGS::TAGS"))

(in-package "ROS")
;;//! \htmlinclude Tags.msg.html


(defclass ros_sensor_msgs::Tags
  :super ros::object
  :slots (_gpsTime _sensor _receiver _key _sensorName _source _dataValid _assuranceLevel ))

(defmethod ros_sensor_msgs::Tags
  (:init
   (&key
    ((:gpsTime __gpsTime) (instance ros_sensor_msgs::GpsTime :init))
    ((:sensor __sensor) (instance ros_sensor_msgs::SensorType :init))
    ((:receiver __receiver) (instance ros_sensor_msgs::ReceiverType :init))
    ((:key __key) (instance ros_sensor_msgs::KeyStatus :init))
    ((:sensorName __sensorName) "")
    ((:source __source) (instance ros_sensor_msgs::SourceType :init))
    ((:dataValid __dataValid) nil)
    ((:assuranceLevel __assuranceLevel) (instance ros_sensor_msgs::AssuranceLevel :init))
    )
   (send-super :init)
   (setq _gpsTime __gpsTime)
   (setq _sensor __sensor)
   (setq _receiver __receiver)
   (setq _key __key)
   (setq _sensorName (string __sensorName))
   (setq _source __source)
   (setq _dataValid __dataValid)
   (setq _assuranceLevel __assuranceLevel)
   self)
  (:gpsTime
   (&rest __gpsTime)
   (if (keywordp (car __gpsTime))
       (send* _gpsTime __gpsTime)
     (progn
       (if __gpsTime (setq _gpsTime (car __gpsTime)))
       _gpsTime)))
  (:sensor
   (&rest __sensor)
   (if (keywordp (car __sensor))
       (send* _sensor __sensor)
     (progn
       (if __sensor (setq _sensor (car __sensor)))
       _sensor)))
  (:receiver
   (&rest __receiver)
   (if (keywordp (car __receiver))
       (send* _receiver __receiver)
     (progn
       (if __receiver (setq _receiver (car __receiver)))
       _receiver)))
  (:key
   (&rest __key)
   (if (keywordp (car __key))
       (send* _key __key)
     (progn
       (if __key (setq _key (car __key)))
       _key)))
  (:sensorName
   (&optional __sensorName)
   (if __sensorName (setq _sensorName __sensorName)) _sensorName)
  (:source
   (&rest __source)
   (if (keywordp (car __source))
       (send* _source __source)
     (progn
       (if __source (setq _source (car __source)))
       _source)))
  (:dataValid
   (&optional __dataValid)
   (if __dataValid (setq _dataValid __dataValid)) _dataValid)
  (:assuranceLevel
   (&rest __assuranceLevel)
   (if (keywordp (car __assuranceLevel))
       (send* _assuranceLevel __assuranceLevel)
     (progn
       (if __assuranceLevel (setq _assuranceLevel (car __assuranceLevel)))
       _assuranceLevel)))
  (:serialization-length
   ()
   (+
    ;; ros_sensor_msgs/GpsTime _gpsTime
    (send _gpsTime :serialization-length)
    ;; ros_sensor_msgs/SensorType _sensor
    (send _sensor :serialization-length)
    ;; ros_sensor_msgs/ReceiverType _receiver
    (send _receiver :serialization-length)
    ;; ros_sensor_msgs/KeyStatus _key
    (send _key :serialization-length)
    ;; string _sensorName
    4 (length _sensorName)
    ;; ros_sensor_msgs/SourceType _source
    (send _source :serialization-length)
    ;; bool _dataValid
    1
    ;; ros_sensor_msgs/AssuranceLevel _assuranceLevel
    (send _assuranceLevel :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ros_sensor_msgs/GpsTime _gpsTime
       (send _gpsTime :serialize s)
     ;; ros_sensor_msgs/SensorType _sensor
       (send _sensor :serialize s)
     ;; ros_sensor_msgs/ReceiverType _receiver
       (send _receiver :serialize s)
     ;; ros_sensor_msgs/KeyStatus _key
       (send _key :serialize s)
     ;; string _sensorName
       (write-long (length _sensorName) s) (princ _sensorName s)
     ;; ros_sensor_msgs/SourceType _source
       (send _source :serialize s)
     ;; bool _dataValid
       (if _dataValid (write-byte -1 s) (write-byte 0 s))
     ;; ros_sensor_msgs/AssuranceLevel _assuranceLevel
       (send _assuranceLevel :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ros_sensor_msgs/GpsTime _gpsTime
     (send _gpsTime :deserialize buf ptr-) (incf ptr- (send _gpsTime :serialization-length))
   ;; ros_sensor_msgs/SensorType _sensor
     (send _sensor :deserialize buf ptr-) (incf ptr- (send _sensor :serialization-length))
   ;; ros_sensor_msgs/ReceiverType _receiver
     (send _receiver :deserialize buf ptr-) (incf ptr- (send _receiver :serialization-length))
   ;; ros_sensor_msgs/KeyStatus _key
     (send _key :deserialize buf ptr-) (incf ptr- (send _key :serialization-length))
   ;; string _sensorName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sensorName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; ros_sensor_msgs/SourceType _source
     (send _source :deserialize buf ptr-) (incf ptr- (send _source :serialization-length))
   ;; bool _dataValid
     (setq _dataValid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; ros_sensor_msgs/AssuranceLevel _assuranceLevel
     (send _assuranceLevel :deserialize buf ptr-) (incf ptr- (send _assuranceLevel :serialization-length))
   ;;
   self)
  )

(setf (get ros_sensor_msgs::Tags :md5sum-) "2af7cb470f851fdf59b411eaf3a14b0c")
(setf (get ros_sensor_msgs::Tags :datatype-) "ros_sensor_msgs/Tags")
(setf (get ros_sensor_msgs::Tags :definition-)
      "## Header structure for user defined data messages

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
")



(provide :ros_sensor_msgs/Tags "2af7cb470f851fdf59b411eaf3a14b0c")


