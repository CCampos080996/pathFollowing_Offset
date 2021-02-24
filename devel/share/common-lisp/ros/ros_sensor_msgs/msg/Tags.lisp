; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude Tags.msg.html

(cl:defclass <Tags> (roslisp-msg-protocol:ros-message)
  ((gpsTime
    :reader gpsTime
    :initarg :gpsTime
    :type ros_sensor_msgs-msg:GpsTime
    :initform (cl:make-instance 'ros_sensor_msgs-msg:GpsTime))
   (sensor
    :reader sensor
    :initarg :sensor
    :type ros_sensor_msgs-msg:SensorType
    :initform (cl:make-instance 'ros_sensor_msgs-msg:SensorType))
   (receiver
    :reader receiver
    :initarg :receiver
    :type ros_sensor_msgs-msg:ReceiverType
    :initform (cl:make-instance 'ros_sensor_msgs-msg:ReceiverType))
   (key
    :reader key
    :initarg :key
    :type ros_sensor_msgs-msg:KeyStatus
    :initform (cl:make-instance 'ros_sensor_msgs-msg:KeyStatus))
   (sensorName
    :reader sensorName
    :initarg :sensorName
    :type cl:string
    :initform "")
   (source
    :reader source
    :initarg :source
    :type ros_sensor_msgs-msg:SourceType
    :initform (cl:make-instance 'ros_sensor_msgs-msg:SourceType))
   (dataValid
    :reader dataValid
    :initarg :dataValid
    :type cl:boolean
    :initform cl:nil)
   (assuranceLevel
    :reader assuranceLevel
    :initarg :assuranceLevel
    :type ros_sensor_msgs-msg:AssuranceLevel
    :initform (cl:make-instance 'ros_sensor_msgs-msg:AssuranceLevel)))
)

(cl:defclass Tags (<Tags>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Tags>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Tags)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<Tags> is deprecated: use ros_sensor_msgs-msg:Tags instead.")))

(cl:ensure-generic-function 'gpsTime-val :lambda-list '(m))
(cl:defmethod gpsTime-val ((m <Tags>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:gpsTime-val is deprecated.  Use ros_sensor_msgs-msg:gpsTime instead.")
  (gpsTime m))

(cl:ensure-generic-function 'sensor-val :lambda-list '(m))
(cl:defmethod sensor-val ((m <Tags>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:sensor-val is deprecated.  Use ros_sensor_msgs-msg:sensor instead.")
  (sensor m))

(cl:ensure-generic-function 'receiver-val :lambda-list '(m))
(cl:defmethod receiver-val ((m <Tags>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:receiver-val is deprecated.  Use ros_sensor_msgs-msg:receiver instead.")
  (receiver m))

(cl:ensure-generic-function 'key-val :lambda-list '(m))
(cl:defmethod key-val ((m <Tags>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:key-val is deprecated.  Use ros_sensor_msgs-msg:key instead.")
  (key m))

(cl:ensure-generic-function 'sensorName-val :lambda-list '(m))
(cl:defmethod sensorName-val ((m <Tags>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:sensorName-val is deprecated.  Use ros_sensor_msgs-msg:sensorName instead.")
  (sensorName m))

(cl:ensure-generic-function 'source-val :lambda-list '(m))
(cl:defmethod source-val ((m <Tags>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:source-val is deprecated.  Use ros_sensor_msgs-msg:source instead.")
  (source m))

(cl:ensure-generic-function 'dataValid-val :lambda-list '(m))
(cl:defmethod dataValid-val ((m <Tags>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:dataValid-val is deprecated.  Use ros_sensor_msgs-msg:dataValid instead.")
  (dataValid m))

(cl:ensure-generic-function 'assuranceLevel-val :lambda-list '(m))
(cl:defmethod assuranceLevel-val ((m <Tags>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:assuranceLevel-val is deprecated.  Use ros_sensor_msgs-msg:assuranceLevel instead.")
  (assuranceLevel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Tags>) ostream)
  "Serializes a message object of type '<Tags>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gpsTime) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sensor) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'receiver) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'key) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'sensorName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'sensorName))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'source) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'dataValid) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'assuranceLevel) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Tags>) istream)
  "Deserializes a message object of type '<Tags>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gpsTime) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sensor) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'receiver) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'key) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sensorName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'sensorName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'source) istream)
    (cl:setf (cl:slot-value msg 'dataValid) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'assuranceLevel) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Tags>)))
  "Returns string type for a message object of type '<Tags>"
  "ros_sensor_msgs/Tags")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Tags)))
  "Returns string type for a message object of type 'Tags"
  "ros_sensor_msgs/Tags")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Tags>)))
  "Returns md5sum for a message object of type '<Tags>"
  "2af7cb470f851fdf59b411eaf3a14b0c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Tags)))
  "Returns md5sum for a message object of type 'Tags"
  "2af7cb470f851fdf59b411eaf3a14b0c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Tags>)))
  "Returns full string definition for message of type '<Tags>"
  (cl:format cl:nil "## Header structure for user defined data messages~%~%GpsTime        gpsTime~%SensorType     sensor~%ReceiverType   receiver   # String to specify GNSS receiver type~%KeyStatus      key~%string         sensorName~%SourceType     source~%bool           dataValid~%AssuranceLevel assuranceLevel~%================================================================================~%MSG: ros_sensor_msgs/GpsTime~%## GPS time structure~%uint32          gps_week        # Full GPS week from (0:0:00 Jan 06, 1980)~%float64         gps_seconds     # GPS seconds into week [sec]~%================================================================================~%MSG: ros_sensor_msgs/SensorType~%## Sensor Type~%~%uint8 SensorTypeUnknown = 0~%uint8 SensorTypeGps     = 1~%uint8 SensorTypeGlonass = 2~%uint8 SensorTypeGalileo = 4~%uint8 SensorTypeImu     = 8~%uint8 SensorRfRange     = 16~%uint8 SensorTypeVision  = 32~%~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/ReceiverType~%uint8 RECEIVER_TYPE_UBLOX = 0~%uint8 RECEIVER_TYPE_NOVATEL = 1~%uint8 RECEIVER_TYPE_DAGR = 2~%uint8 RECEIVER_TYPE_MICROGRAM = 3~%uint8 RECEIVER_TYPE_TRUTRAK = 4~%uint8 RECEIVER_TYPE_GSSIP = 5~%uint8 RECEIVER_TYPE_OTHER = 14~%uint8 RECEIVER_TYPE_UNKNOWN = 15~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/KeyStatus~%## KeyStatus~%~%uint8 UnauthorizedNotKeyed = 0~%uint8 AuthorizedNotKeyed   = 1~%uint8 Keyed                = 2~%~%uint8 status~%================================================================================~%MSG: ros_sensor_msgs/SourceType~%## Source of data~%~%uint8 SourceTypeUnknown  = 0~%uint8 SourceTypeReceiver = 1~%uint8 SourceTypeNetwork  = 2~%uint8 SourceTypeRinex    = 3~%uint8 SourceTypeAny      = 99~%~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/AssuranceLevel~%uint8  Normal   = 0~%uint8  Unknown  = 1~%uint8  Warning  = 2~%uint8  Attack   = 3~%~%uint8 level~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Tags)))
  "Returns full string definition for message of type 'Tags"
  (cl:format cl:nil "## Header structure for user defined data messages~%~%GpsTime        gpsTime~%SensorType     sensor~%ReceiverType   receiver   # String to specify GNSS receiver type~%KeyStatus      key~%string         sensorName~%SourceType     source~%bool           dataValid~%AssuranceLevel assuranceLevel~%================================================================================~%MSG: ros_sensor_msgs/GpsTime~%## GPS time structure~%uint32          gps_week        # Full GPS week from (0:0:00 Jan 06, 1980)~%float64         gps_seconds     # GPS seconds into week [sec]~%================================================================================~%MSG: ros_sensor_msgs/SensorType~%## Sensor Type~%~%uint8 SensorTypeUnknown = 0~%uint8 SensorTypeGps     = 1~%uint8 SensorTypeGlonass = 2~%uint8 SensorTypeGalileo = 4~%uint8 SensorTypeImu     = 8~%uint8 SensorRfRange     = 16~%uint8 SensorTypeVision  = 32~%~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/ReceiverType~%uint8 RECEIVER_TYPE_UBLOX = 0~%uint8 RECEIVER_TYPE_NOVATEL = 1~%uint8 RECEIVER_TYPE_DAGR = 2~%uint8 RECEIVER_TYPE_MICROGRAM = 3~%uint8 RECEIVER_TYPE_TRUTRAK = 4~%uint8 RECEIVER_TYPE_GSSIP = 5~%uint8 RECEIVER_TYPE_OTHER = 14~%uint8 RECEIVER_TYPE_UNKNOWN = 15~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/KeyStatus~%## KeyStatus~%~%uint8 UnauthorizedNotKeyed = 0~%uint8 AuthorizedNotKeyed   = 1~%uint8 Keyed                = 2~%~%uint8 status~%================================================================================~%MSG: ros_sensor_msgs/SourceType~%## Source of data~%~%uint8 SourceTypeUnknown  = 0~%uint8 SourceTypeReceiver = 1~%uint8 SourceTypeNetwork  = 2~%uint8 SourceTypeRinex    = 3~%uint8 SourceTypeAny      = 99~%~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/AssuranceLevel~%uint8  Normal   = 0~%uint8  Unknown  = 1~%uint8  Warning  = 2~%uint8  Attack   = 3~%~%uint8 level~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Tags>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gpsTime))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sensor))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'receiver))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'key))
     4 (cl:length (cl:slot-value msg 'sensorName))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'source))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'assuranceLevel))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Tags>))
  "Converts a ROS message object to a list"
  (cl:list 'Tags
    (cl:cons ':gpsTime (gpsTime msg))
    (cl:cons ':sensor (sensor msg))
    (cl:cons ':receiver (receiver msg))
    (cl:cons ':key (key msg))
    (cl:cons ':sensorName (sensorName msg))
    (cl:cons ':source (source msg))
    (cl:cons ':dataValid (dataValid msg))
    (cl:cons ':assuranceLevel (assuranceLevel msg))
))
