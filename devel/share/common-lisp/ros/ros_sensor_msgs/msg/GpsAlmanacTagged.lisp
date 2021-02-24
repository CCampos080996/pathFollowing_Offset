; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude GpsAlmanacTagged.msg.html

(cl:defclass <GpsAlmanacTagged> (roslisp-msg-protocol:ros-message)
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
   (gpsAlmanac
    :reader gpsAlmanac
    :initarg :gpsAlmanac
    :type ros_sensor_msgs-msg:GpsAlmanac
    :initform (cl:make-instance 'ros_sensor_msgs-msg:GpsAlmanac)))
)

(cl:defclass GpsAlmanacTagged (<GpsAlmanacTagged>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GpsAlmanacTagged>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GpsAlmanacTagged)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<GpsAlmanacTagged> is deprecated: use ros_sensor_msgs-msg:GpsAlmanacTagged instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GpsAlmanacTagged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:header-val is deprecated.  Use ros_sensor_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'tags-val :lambda-list '(m))
(cl:defmethod tags-val ((m <GpsAlmanacTagged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:tags-val is deprecated.  Use ros_sensor_msgs-msg:tags instead.")
  (tags m))

(cl:ensure-generic-function 'gpsAlmanac-val :lambda-list '(m))
(cl:defmethod gpsAlmanac-val ((m <GpsAlmanacTagged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:gpsAlmanac-val is deprecated.  Use ros_sensor_msgs-msg:gpsAlmanac instead.")
  (gpsAlmanac m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GpsAlmanacTagged>) ostream)
  "Serializes a message object of type '<GpsAlmanacTagged>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'tags) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gpsAlmanac) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GpsAlmanacTagged>) istream)
  "Deserializes a message object of type '<GpsAlmanacTagged>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'tags) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gpsAlmanac) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GpsAlmanacTagged>)))
  "Returns string type for a message object of type '<GpsAlmanacTagged>"
  "ros_sensor_msgs/GpsAlmanacTagged")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GpsAlmanacTagged)))
  "Returns string type for a message object of type 'GpsAlmanacTagged"
  "ros_sensor_msgs/GpsAlmanacTagged")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GpsAlmanacTagged>)))
  "Returns md5sum for a message object of type '<GpsAlmanacTagged>"
  "36185a7fc3add6c8144cda3e4f32907b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GpsAlmanacTagged)))
  "Returns md5sum for a message object of type 'GpsAlmanacTagged"
  "36185a7fc3add6c8144cda3e4f32907b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GpsAlmanacTagged>)))
  "Returns full string definition for message of type '<GpsAlmanacTagged>"
  (cl:format cl:nil "~%std_msgs/Header    header~%Tags               tags~%GpsAlmanac         gpsAlmanac~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ros_sensor_msgs/Tags~%## Header structure for user defined data messages~%~%GpsTime        gpsTime~%SensorType     sensor~%ReceiverType   receiver   # String to specify GNSS receiver type~%KeyStatus      key~%string         sensorName~%SourceType     source~%bool           dataValid~%AssuranceLevel assuranceLevel~%================================================================================~%MSG: ros_sensor_msgs/GpsTime~%## GPS time structure~%uint32          gps_week        # Full GPS week from (0:0:00 Jan 06, 1980)~%float64         gps_seconds     # GPS seconds into week [sec]~%================================================================================~%MSG: ros_sensor_msgs/SensorType~%## Sensor Type~%~%uint8 SensorTypeUnknown = 0~%uint8 SensorTypeGps     = 1~%uint8 SensorTypeGlonass = 2~%uint8 SensorTypeGalileo = 4~%uint8 SensorTypeImu     = 8~%uint8 SensorRfRange     = 16~%uint8 SensorTypeVision  = 32~%~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/ReceiverType~%uint8 RECEIVER_TYPE_UBLOX = 0~%uint8 RECEIVER_TYPE_NOVATEL = 1~%uint8 RECEIVER_TYPE_DAGR = 2~%uint8 RECEIVER_TYPE_MICROGRAM = 3~%uint8 RECEIVER_TYPE_TRUTRAK = 4~%uint8 RECEIVER_TYPE_GSSIP = 5~%uint8 RECEIVER_TYPE_OTHER = 14~%uint8 RECEIVER_TYPE_UNKNOWN = 15~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/KeyStatus~%## KeyStatus~%~%uint8 UnauthorizedNotKeyed = 0~%uint8 AuthorizedNotKeyed   = 1~%uint8 Keyed                = 2~%~%uint8 status~%================================================================================~%MSG: ros_sensor_msgs/SourceType~%## Source of data~%~%uint8 SourceTypeUnknown  = 0~%uint8 SourceTypeReceiver = 1~%uint8 SourceTypeNetwork  = 2~%uint8 SourceTypeRinex    = 3~%uint8 SourceTypeAny      = 99~%~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/AssuranceLevel~%uint8  Normal   = 0~%uint8  Unknown  = 1~%uint8  Warning  = 2~%uint8  Attack   = 3~%~%uint8 level~%================================================================================~%MSG: ros_sensor_msgs/GpsAlmanac~%~%uint16      prn~%uint16      reference_week~%uint8[30]   subframe~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GpsAlmanacTagged)))
  "Returns full string definition for message of type 'GpsAlmanacTagged"
  (cl:format cl:nil "~%std_msgs/Header    header~%Tags               tags~%GpsAlmanac         gpsAlmanac~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ros_sensor_msgs/Tags~%## Header structure for user defined data messages~%~%GpsTime        gpsTime~%SensorType     sensor~%ReceiverType   receiver   # String to specify GNSS receiver type~%KeyStatus      key~%string         sensorName~%SourceType     source~%bool           dataValid~%AssuranceLevel assuranceLevel~%================================================================================~%MSG: ros_sensor_msgs/GpsTime~%## GPS time structure~%uint32          gps_week        # Full GPS week from (0:0:00 Jan 06, 1980)~%float64         gps_seconds     # GPS seconds into week [sec]~%================================================================================~%MSG: ros_sensor_msgs/SensorType~%## Sensor Type~%~%uint8 SensorTypeUnknown = 0~%uint8 SensorTypeGps     = 1~%uint8 SensorTypeGlonass = 2~%uint8 SensorTypeGalileo = 4~%uint8 SensorTypeImu     = 8~%uint8 SensorRfRange     = 16~%uint8 SensorTypeVision  = 32~%~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/ReceiverType~%uint8 RECEIVER_TYPE_UBLOX = 0~%uint8 RECEIVER_TYPE_NOVATEL = 1~%uint8 RECEIVER_TYPE_DAGR = 2~%uint8 RECEIVER_TYPE_MICROGRAM = 3~%uint8 RECEIVER_TYPE_TRUTRAK = 4~%uint8 RECEIVER_TYPE_GSSIP = 5~%uint8 RECEIVER_TYPE_OTHER = 14~%uint8 RECEIVER_TYPE_UNKNOWN = 15~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/KeyStatus~%## KeyStatus~%~%uint8 UnauthorizedNotKeyed = 0~%uint8 AuthorizedNotKeyed   = 1~%uint8 Keyed                = 2~%~%uint8 status~%================================================================================~%MSG: ros_sensor_msgs/SourceType~%## Source of data~%~%uint8 SourceTypeUnknown  = 0~%uint8 SourceTypeReceiver = 1~%uint8 SourceTypeNetwork  = 2~%uint8 SourceTypeRinex    = 3~%uint8 SourceTypeAny      = 99~%~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/AssuranceLevel~%uint8  Normal   = 0~%uint8  Unknown  = 1~%uint8  Warning  = 2~%uint8  Attack   = 3~%~%uint8 level~%================================================================================~%MSG: ros_sensor_msgs/GpsAlmanac~%~%uint16      prn~%uint16      reference_week~%uint8[30]   subframe~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GpsAlmanacTagged>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'tags))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gpsAlmanac))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GpsAlmanacTagged>))
  "Converts a ROS message object to a list"
  (cl:list 'GpsAlmanacTagged
    (cl:cons ':header (header msg))
    (cl:cons ':tags (tags msg))
    (cl:cons ':gpsAlmanac (gpsAlmanac msg))
))
