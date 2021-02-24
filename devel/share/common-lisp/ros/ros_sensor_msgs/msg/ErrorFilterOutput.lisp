; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude ErrorFilterOutput.msg.html

(cl:defclass <ErrorFilterOutput> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (tags
    :reader tags
    :initarg :tags
    :type ros_sensor_msgs-msg:Tags
    :initform (cl:make-instance 'ros_sensor_msgs-msg:Tags))
   (orientationErr
    :reader orientationErr
    :initarg :orientationErr
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (velocityErr
    :reader velocityErr
    :initarg :velocityErr
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (positionErr
    :reader positionErr
    :initarg :positionErr
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (accelBias
    :reader accelBias
    :initarg :accelBias
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (gyroBias
    :reader gyroBias
    :initarg :gyroBias
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (clock
    :reader clock
    :initarg :clock
    :type ros_sensor_msgs-msg:ClockParameters
    :initform (cl:make-instance 'ros_sensor_msgs-msg:ClockParameters)))
)

(cl:defclass ErrorFilterOutput (<ErrorFilterOutput>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ErrorFilterOutput>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ErrorFilterOutput)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<ErrorFilterOutput> is deprecated: use ros_sensor_msgs-msg:ErrorFilterOutput instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ErrorFilterOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:header-val is deprecated.  Use ros_sensor_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'tags-val :lambda-list '(m))
(cl:defmethod tags-val ((m <ErrorFilterOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:tags-val is deprecated.  Use ros_sensor_msgs-msg:tags instead.")
  (tags m))

(cl:ensure-generic-function 'orientationErr-val :lambda-list '(m))
(cl:defmethod orientationErr-val ((m <ErrorFilterOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:orientationErr-val is deprecated.  Use ros_sensor_msgs-msg:orientationErr instead.")
  (orientationErr m))

(cl:ensure-generic-function 'velocityErr-val :lambda-list '(m))
(cl:defmethod velocityErr-val ((m <ErrorFilterOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:velocityErr-val is deprecated.  Use ros_sensor_msgs-msg:velocityErr instead.")
  (velocityErr m))

(cl:ensure-generic-function 'positionErr-val :lambda-list '(m))
(cl:defmethod positionErr-val ((m <ErrorFilterOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:positionErr-val is deprecated.  Use ros_sensor_msgs-msg:positionErr instead.")
  (positionErr m))

(cl:ensure-generic-function 'accelBias-val :lambda-list '(m))
(cl:defmethod accelBias-val ((m <ErrorFilterOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:accelBias-val is deprecated.  Use ros_sensor_msgs-msg:accelBias instead.")
  (accelBias m))

(cl:ensure-generic-function 'gyroBias-val :lambda-list '(m))
(cl:defmethod gyroBias-val ((m <ErrorFilterOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:gyroBias-val is deprecated.  Use ros_sensor_msgs-msg:gyroBias instead.")
  (gyroBias m))

(cl:ensure-generic-function 'clock-val :lambda-list '(m))
(cl:defmethod clock-val ((m <ErrorFilterOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:clock-val is deprecated.  Use ros_sensor_msgs-msg:clock instead.")
  (clock m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ErrorFilterOutput>) ostream)
  "Serializes a message object of type '<ErrorFilterOutput>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'tags) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orientationErr) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocityErr) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'positionErr) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'accelBias) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gyroBias) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'clock) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ErrorFilterOutput>) istream)
  "Deserializes a message object of type '<ErrorFilterOutput>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'tags) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orientationErr) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocityErr) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'positionErr) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'accelBias) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gyroBias) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'clock) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ErrorFilterOutput>)))
  "Returns string type for a message object of type '<ErrorFilterOutput>"
  "ros_sensor_msgs/ErrorFilterOutput")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ErrorFilterOutput)))
  "Returns string type for a message object of type 'ErrorFilterOutput"
  "ros_sensor_msgs/ErrorFilterOutput")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ErrorFilterOutput>)))
  "Returns md5sum for a message object of type '<ErrorFilterOutput>"
  "67e8d7bcf6c0dfb06e37f3b17fd4edc6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ErrorFilterOutput)))
  "Returns md5sum for a message object of type 'ErrorFilterOutput"
  "67e8d7bcf6c0dfb06e37f3b17fd4edc6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ErrorFilterOutput>)))
  "Returns full string definition for message of type '<ErrorFilterOutput>"
  (cl:format cl:nil "## 17-state error navigation filter output~%~%std_msgs/Header   header~%Tags              tags~%~%geometry_msgs/Vector3 orientationErr~%geometry_msgs/Vector3 velocityErr~%geometry_msgs/Vector3 positionErr~%geometry_msgs/Vector3 accelBias~%geometry_msgs/Vector3 gyroBias~%ClockParameters       clock~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ros_sensor_msgs/Tags~%## Header structure for user defined data messages~%~%GpsTime        gpsTime~%SensorType     sensor~%ReceiverType   receiver   # String to specify GNSS receiver type~%KeyStatus      key~%string         sensorName~%SourceType     source~%bool           dataValid~%AssuranceLevel assuranceLevel~%================================================================================~%MSG: ros_sensor_msgs/GpsTime~%## GPS time structure~%uint32          gps_week        # Full GPS week from (0:0:00 Jan 06, 1980)~%float64         gps_seconds     # GPS seconds into week [sec]~%================================================================================~%MSG: ros_sensor_msgs/SensorType~%## Sensor Type~%~%uint8 SensorTypeUnknown = 0~%uint8 SensorTypeGps     = 1~%uint8 SensorTypeGlonass = 2~%uint8 SensorTypeGalileo = 4~%uint8 SensorTypeImu     = 8~%uint8 SensorRfRange     = 16~%uint8 SensorTypeVision  = 32~%~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/ReceiverType~%uint8 RECEIVER_TYPE_UBLOX = 0~%uint8 RECEIVER_TYPE_NOVATEL = 1~%uint8 RECEIVER_TYPE_DAGR = 2~%uint8 RECEIVER_TYPE_MICROGRAM = 3~%uint8 RECEIVER_TYPE_TRUTRAK = 4~%uint8 RECEIVER_TYPE_GSSIP = 5~%uint8 RECEIVER_TYPE_OTHER = 14~%uint8 RECEIVER_TYPE_UNKNOWN = 15~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/KeyStatus~%## KeyStatus~%~%uint8 UnauthorizedNotKeyed = 0~%uint8 AuthorizedNotKeyed   = 1~%uint8 Keyed                = 2~%~%uint8 status~%================================================================================~%MSG: ros_sensor_msgs/SourceType~%## Source of data~%~%uint8 SourceTypeUnknown  = 0~%uint8 SourceTypeReceiver = 1~%uint8 SourceTypeNetwork  = 2~%uint8 SourceTypeRinex    = 3~%uint8 SourceTypeAny      = 99~%~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/AssuranceLevel~%uint8  Normal   = 0~%uint8  Unknown  = 1~%uint8  Warning  = 2~%uint8  Attack   = 3~%~%uint8 level~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: ros_sensor_msgs/ClockParameters~%## Recevier clock parameters~%~%float64 clock_bias    # Receiver clock bias [sec]~%float64 clock_drift   # Receiver clock drift [sec/sec]~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ErrorFilterOutput)))
  "Returns full string definition for message of type 'ErrorFilterOutput"
  (cl:format cl:nil "## 17-state error navigation filter output~%~%std_msgs/Header   header~%Tags              tags~%~%geometry_msgs/Vector3 orientationErr~%geometry_msgs/Vector3 velocityErr~%geometry_msgs/Vector3 positionErr~%geometry_msgs/Vector3 accelBias~%geometry_msgs/Vector3 gyroBias~%ClockParameters       clock~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ros_sensor_msgs/Tags~%## Header structure for user defined data messages~%~%GpsTime        gpsTime~%SensorType     sensor~%ReceiverType   receiver   # String to specify GNSS receiver type~%KeyStatus      key~%string         sensorName~%SourceType     source~%bool           dataValid~%AssuranceLevel assuranceLevel~%================================================================================~%MSG: ros_sensor_msgs/GpsTime~%## GPS time structure~%uint32          gps_week        # Full GPS week from (0:0:00 Jan 06, 1980)~%float64         gps_seconds     # GPS seconds into week [sec]~%================================================================================~%MSG: ros_sensor_msgs/SensorType~%## Sensor Type~%~%uint8 SensorTypeUnknown = 0~%uint8 SensorTypeGps     = 1~%uint8 SensorTypeGlonass = 2~%uint8 SensorTypeGalileo = 4~%uint8 SensorTypeImu     = 8~%uint8 SensorRfRange     = 16~%uint8 SensorTypeVision  = 32~%~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/ReceiverType~%uint8 RECEIVER_TYPE_UBLOX = 0~%uint8 RECEIVER_TYPE_NOVATEL = 1~%uint8 RECEIVER_TYPE_DAGR = 2~%uint8 RECEIVER_TYPE_MICROGRAM = 3~%uint8 RECEIVER_TYPE_TRUTRAK = 4~%uint8 RECEIVER_TYPE_GSSIP = 5~%uint8 RECEIVER_TYPE_OTHER = 14~%uint8 RECEIVER_TYPE_UNKNOWN = 15~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/KeyStatus~%## KeyStatus~%~%uint8 UnauthorizedNotKeyed = 0~%uint8 AuthorizedNotKeyed   = 1~%uint8 Keyed                = 2~%~%uint8 status~%================================================================================~%MSG: ros_sensor_msgs/SourceType~%## Source of data~%~%uint8 SourceTypeUnknown  = 0~%uint8 SourceTypeReceiver = 1~%uint8 SourceTypeNetwork  = 2~%uint8 SourceTypeRinex    = 3~%uint8 SourceTypeAny      = 99~%~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/AssuranceLevel~%uint8  Normal   = 0~%uint8  Unknown  = 1~%uint8  Warning  = 2~%uint8  Attack   = 3~%~%uint8 level~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: ros_sensor_msgs/ClockParameters~%## Recevier clock parameters~%~%float64 clock_bias    # Receiver clock bias [sec]~%float64 clock_drift   # Receiver clock drift [sec/sec]~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ErrorFilterOutput>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'tags))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orientationErr))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocityErr))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'positionErr))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'accelBias))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gyroBias))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'clock))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ErrorFilterOutput>))
  "Converts a ROS message object to a list"
  (cl:list 'ErrorFilterOutput
    (cl:cons ':header (header msg))
    (cl:cons ':tags (tags msg))
    (cl:cons ':orientationErr (orientationErr msg))
    (cl:cons ':velocityErr (velocityErr msg))
    (cl:cons ':positionErr (positionErr msg))
    (cl:cons ':accelBias (accelBias msg))
    (cl:cons ':gyroBias (gyroBias msg))
    (cl:cons ':clock (clock msg))
))
