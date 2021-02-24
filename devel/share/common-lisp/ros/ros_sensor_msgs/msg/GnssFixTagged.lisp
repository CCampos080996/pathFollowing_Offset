; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude GnssFixTagged.msg.html

(cl:defclass <GnssFixTagged> (roslisp-msg-protocol:ros-message)
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
   (gnssFix
    :reader gnssFix
    :initarg :gnssFix
    :type ros_sensor_msgs-msg:GnssFix
    :initform (cl:make-instance 'ros_sensor_msgs-msg:GnssFix)))
)

(cl:defclass GnssFixTagged (<GnssFixTagged>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GnssFixTagged>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GnssFixTagged)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<GnssFixTagged> is deprecated: use ros_sensor_msgs-msg:GnssFixTagged instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GnssFixTagged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:header-val is deprecated.  Use ros_sensor_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'tags-val :lambda-list '(m))
(cl:defmethod tags-val ((m <GnssFixTagged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:tags-val is deprecated.  Use ros_sensor_msgs-msg:tags instead.")
  (tags m))

(cl:ensure-generic-function 'gnssFix-val :lambda-list '(m))
(cl:defmethod gnssFix-val ((m <GnssFixTagged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:gnssFix-val is deprecated.  Use ros_sensor_msgs-msg:gnssFix instead.")
  (gnssFix m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GnssFixTagged>) ostream)
  "Serializes a message object of type '<GnssFixTagged>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'tags) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gnssFix) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GnssFixTagged>) istream)
  "Deserializes a message object of type '<GnssFixTagged>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'tags) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gnssFix) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GnssFixTagged>)))
  "Returns string type for a message object of type '<GnssFixTagged>"
  "ros_sensor_msgs/GnssFixTagged")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GnssFixTagged)))
  "Returns string type for a message object of type 'GnssFixTagged"
  "ros_sensor_msgs/GnssFixTagged")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GnssFixTagged>)))
  "Returns md5sum for a message object of type '<GnssFixTagged>"
  "eb48d6b1cd893e14c99a9fdb90fabf9b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GnssFixTagged)))
  "Returns md5sum for a message object of type 'GnssFixTagged"
  "eb48d6b1cd893e14c99a9fdb90fabf9b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GnssFixTagged>)))
  "Returns full string definition for message of type '<GnssFixTagged>"
  (cl:format cl:nil "## Gps fix  with tags and header~%~%std_msgs/Header       header~%Tags                  tags~%GnssFix               gnssFix~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ros_sensor_msgs/Tags~%## Header structure for user defined data messages~%~%GpsTime        gpsTime~%SensorType     sensor~%ReceiverType   receiver   # String to specify GNSS receiver type~%KeyStatus      key~%string         sensorName~%SourceType     source~%bool           dataValid~%AssuranceLevel assuranceLevel~%================================================================================~%MSG: ros_sensor_msgs/GpsTime~%## GPS time structure~%uint32          gps_week        # Full GPS week from (0:0:00 Jan 06, 1980)~%float64         gps_seconds     # GPS seconds into week [sec]~%================================================================================~%MSG: ros_sensor_msgs/SensorType~%## Sensor Type~%~%uint8 SensorTypeUnknown = 0~%uint8 SensorTypeGps     = 1~%uint8 SensorTypeGlonass = 2~%uint8 SensorTypeGalileo = 4~%uint8 SensorTypeImu     = 8~%uint8 SensorRfRange     = 16~%uint8 SensorTypeVision  = 32~%~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/ReceiverType~%uint8 RECEIVER_TYPE_UBLOX = 0~%uint8 RECEIVER_TYPE_NOVATEL = 1~%uint8 RECEIVER_TYPE_DAGR = 2~%uint8 RECEIVER_TYPE_MICROGRAM = 3~%uint8 RECEIVER_TYPE_TRUTRAK = 4~%uint8 RECEIVER_TYPE_GSSIP = 5~%uint8 RECEIVER_TYPE_OTHER = 14~%uint8 RECEIVER_TYPE_UNKNOWN = 15~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/KeyStatus~%## KeyStatus~%~%uint8 UnauthorizedNotKeyed = 0~%uint8 AuthorizedNotKeyed   = 1~%uint8 Keyed                = 2~%~%uint8 status~%================================================================================~%MSG: ros_sensor_msgs/SourceType~%## Source of data~%~%uint8 SourceTypeUnknown  = 0~%uint8 SourceTypeReceiver = 1~%uint8 SourceTypeNetwork  = 2~%uint8 SourceTypeRinex    = 3~%uint8 SourceTypeAny      = 99~%~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/AssuranceLevel~%uint8  Normal   = 0~%uint8  Unknown  = 1~%uint8  Warning  = 2~%uint8  Attack   = 3~%~%uint8 level~%================================================================================~%MSG: ros_sensor_msgs/GnssFix~%~%FixStatus                fixStatus~%GpsTime                  timeOfValidity~%LlhPosition              llhPosition~%EnuVelocity              enuVelocity          ~%float64[9] 				 positionCovariance~%~%uint8 COVARIANCE_TYPE_UNKNOWN = 0~%uint8 COVARIANCE_TYPE_APPROXIMATED = 1~%uint8 COVARIANCE_TYPE_DIAGONAL_KNOWN = 2~%uint8 COVARIANCE_TYPE_KNOWN = 3~%uint8 position_covariance_type~%================================================================================~%MSG: ros_sensor_msgs/FixStatus~%# # FixStatus~%~%FixType fix~%uint32  numSvs~%float64  ttff~%================================================================================~%MSG: ros_sensor_msgs/FixType~%## Fix Type~%~%uint8 FixTypeNone = 0~%uint8 FixTypeDeadReckoning = 1~%uint8 FixType2D = 2~%uint8 FixType3D = 3~%uint8 FixTypeDRand3D = 4 ## Dead reckoning and GPS fix~%uint8 FixTypeTimeOnly = 5~%uint8 FixTypeStatic = 9~%~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/LlhPosition~%# # LlhPosition~%~%float64                  latitude   # [deg]~%float64                  longitude  # [deg]~%float64                  altitude   # [m]~%uint16                   horizontalAccuracy~%uint16                   verticalAccuracy~%================================================================================~%MSG: ros_sensor_msgs/EnuVelocity~%float64					 eastVelocity~%float64                  northVelocity~%float64                  upVelocity~%float32                  horizontalAccuracy~%float32                  verticalAccuracy    ~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GnssFixTagged)))
  "Returns full string definition for message of type 'GnssFixTagged"
  (cl:format cl:nil "## Gps fix  with tags and header~%~%std_msgs/Header       header~%Tags                  tags~%GnssFix               gnssFix~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ros_sensor_msgs/Tags~%## Header structure for user defined data messages~%~%GpsTime        gpsTime~%SensorType     sensor~%ReceiverType   receiver   # String to specify GNSS receiver type~%KeyStatus      key~%string         sensorName~%SourceType     source~%bool           dataValid~%AssuranceLevel assuranceLevel~%================================================================================~%MSG: ros_sensor_msgs/GpsTime~%## GPS time structure~%uint32          gps_week        # Full GPS week from (0:0:00 Jan 06, 1980)~%float64         gps_seconds     # GPS seconds into week [sec]~%================================================================================~%MSG: ros_sensor_msgs/SensorType~%## Sensor Type~%~%uint8 SensorTypeUnknown = 0~%uint8 SensorTypeGps     = 1~%uint8 SensorTypeGlonass = 2~%uint8 SensorTypeGalileo = 4~%uint8 SensorTypeImu     = 8~%uint8 SensorRfRange     = 16~%uint8 SensorTypeVision  = 32~%~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/ReceiverType~%uint8 RECEIVER_TYPE_UBLOX = 0~%uint8 RECEIVER_TYPE_NOVATEL = 1~%uint8 RECEIVER_TYPE_DAGR = 2~%uint8 RECEIVER_TYPE_MICROGRAM = 3~%uint8 RECEIVER_TYPE_TRUTRAK = 4~%uint8 RECEIVER_TYPE_GSSIP = 5~%uint8 RECEIVER_TYPE_OTHER = 14~%uint8 RECEIVER_TYPE_UNKNOWN = 15~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/KeyStatus~%## KeyStatus~%~%uint8 UnauthorizedNotKeyed = 0~%uint8 AuthorizedNotKeyed   = 1~%uint8 Keyed                = 2~%~%uint8 status~%================================================================================~%MSG: ros_sensor_msgs/SourceType~%## Source of data~%~%uint8 SourceTypeUnknown  = 0~%uint8 SourceTypeReceiver = 1~%uint8 SourceTypeNetwork  = 2~%uint8 SourceTypeRinex    = 3~%uint8 SourceTypeAny      = 99~%~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/AssuranceLevel~%uint8  Normal   = 0~%uint8  Unknown  = 1~%uint8  Warning  = 2~%uint8  Attack   = 3~%~%uint8 level~%================================================================================~%MSG: ros_sensor_msgs/GnssFix~%~%FixStatus                fixStatus~%GpsTime                  timeOfValidity~%LlhPosition              llhPosition~%EnuVelocity              enuVelocity          ~%float64[9] 				 positionCovariance~%~%uint8 COVARIANCE_TYPE_UNKNOWN = 0~%uint8 COVARIANCE_TYPE_APPROXIMATED = 1~%uint8 COVARIANCE_TYPE_DIAGONAL_KNOWN = 2~%uint8 COVARIANCE_TYPE_KNOWN = 3~%uint8 position_covariance_type~%================================================================================~%MSG: ros_sensor_msgs/FixStatus~%# # FixStatus~%~%FixType fix~%uint32  numSvs~%float64  ttff~%================================================================================~%MSG: ros_sensor_msgs/FixType~%## Fix Type~%~%uint8 FixTypeNone = 0~%uint8 FixTypeDeadReckoning = 1~%uint8 FixType2D = 2~%uint8 FixType3D = 3~%uint8 FixTypeDRand3D = 4 ## Dead reckoning and GPS fix~%uint8 FixTypeTimeOnly = 5~%uint8 FixTypeStatic = 9~%~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/LlhPosition~%# # LlhPosition~%~%float64                  latitude   # [deg]~%float64                  longitude  # [deg]~%float64                  altitude   # [m]~%uint16                   horizontalAccuracy~%uint16                   verticalAccuracy~%================================================================================~%MSG: ros_sensor_msgs/EnuVelocity~%float64					 eastVelocity~%float64                  northVelocity~%float64                  upVelocity~%float32                  horizontalAccuracy~%float32                  verticalAccuracy    ~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GnssFixTagged>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'tags))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gnssFix))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GnssFixTagged>))
  "Converts a ROS message object to a list"
  (cl:list 'GnssFixTagged
    (cl:cons ':header (header msg))
    (cl:cons ':tags (tags msg))
    (cl:cons ':gnssFix (gnssFix msg))
))
