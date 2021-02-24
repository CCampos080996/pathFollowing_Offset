; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude SvStateTagged.msg.html

(cl:defclass <SvStateTagged> (roslisp-msg-protocol:ros-message)
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
   (svState
    :reader svState
    :initarg :svState
    :type ros_sensor_msgs-msg:SvState
    :initform (cl:make-instance 'ros_sensor_msgs-msg:SvState)))
)

(cl:defclass SvStateTagged (<SvStateTagged>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SvStateTagged>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SvStateTagged)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<SvStateTagged> is deprecated: use ros_sensor_msgs-msg:SvStateTagged instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SvStateTagged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:header-val is deprecated.  Use ros_sensor_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'tags-val :lambda-list '(m))
(cl:defmethod tags-val ((m <SvStateTagged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:tags-val is deprecated.  Use ros_sensor_msgs-msg:tags instead.")
  (tags m))

(cl:ensure-generic-function 'svState-val :lambda-list '(m))
(cl:defmethod svState-val ((m <SvStateTagged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:svState-val is deprecated.  Use ros_sensor_msgs-msg:svState instead.")
  (svState m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SvStateTagged>) ostream)
  "Serializes a message object of type '<SvStateTagged>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'tags) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'svState) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SvStateTagged>) istream)
  "Deserializes a message object of type '<SvStateTagged>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'tags) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'svState) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SvStateTagged>)))
  "Returns string type for a message object of type '<SvStateTagged>"
  "ros_sensor_msgs/SvStateTagged")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SvStateTagged)))
  "Returns string type for a message object of type 'SvStateTagged"
  "ros_sensor_msgs/SvStateTagged")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SvStateTagged>)))
  "Returns md5sum for a message object of type '<SvStateTagged>"
  "bb3a8aaa166c2d3db9dfb5473e2b70df")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SvStateTagged)))
  "Returns md5sum for a message object of type 'SvStateTagged"
  "bb3a8aaa166c2d3db9dfb5473e2b70df")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SvStateTagged>)))
  "Returns full string definition for message of type '<SvStateTagged>"
  (cl:format cl:nil "## Satellite vehicle state with tags and header~%~%std_msgs/Header   header~%Tags              tags~%SvState           svState~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ros_sensor_msgs/Tags~%## Header structure for user defined data messages~%~%GpsTime        gpsTime~%SensorType     sensor~%ReceiverType   receiver   # String to specify GNSS receiver type~%KeyStatus      key~%string         sensorName~%SourceType     source~%bool           dataValid~%AssuranceLevel assuranceLevel~%================================================================================~%MSG: ros_sensor_msgs/GpsTime~%## GPS time structure~%uint32          gps_week        # Full GPS week from (0:0:00 Jan 06, 1980)~%float64         gps_seconds     # GPS seconds into week [sec]~%================================================================================~%MSG: ros_sensor_msgs/SensorType~%## Sensor Type~%~%uint8 SensorTypeUnknown = 0~%uint8 SensorTypeGps     = 1~%uint8 SensorTypeGlonass = 2~%uint8 SensorTypeGalileo = 4~%uint8 SensorTypeImu     = 8~%uint8 SensorRfRange     = 16~%uint8 SensorTypeVision  = 32~%~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/ReceiverType~%uint8 RECEIVER_TYPE_UBLOX = 0~%uint8 RECEIVER_TYPE_NOVATEL = 1~%uint8 RECEIVER_TYPE_DAGR = 2~%uint8 RECEIVER_TYPE_MICROGRAM = 3~%uint8 RECEIVER_TYPE_TRUTRAK = 4~%uint8 RECEIVER_TYPE_GSSIP = 5~%uint8 RECEIVER_TYPE_OTHER = 14~%uint8 RECEIVER_TYPE_UNKNOWN = 15~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/KeyStatus~%## KeyStatus~%~%uint8 UnauthorizedNotKeyed = 0~%uint8 AuthorizedNotKeyed   = 1~%uint8 Keyed                = 2~%~%uint8 status~%================================================================================~%MSG: ros_sensor_msgs/SourceType~%## Source of data~%~%uint8 SourceTypeUnknown  = 0~%uint8 SourceTypeReceiver = 1~%uint8 SourceTypeNetwork  = 2~%uint8 SourceTypeRinex    = 3~%uint8 SourceTypeAny      = 99~%~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/AssuranceLevel~%uint8  Normal   = 0~%uint8  Unknown  = 1~%uint8  Warning  = 2~%uint8  Attack   = 3~%~%uint8 level~%================================================================================~%MSG: ros_sensor_msgs/SvState~%## Satellite vehicle state information~%~%uint16                prn                 # GPS [1-32], GLONASS may be negative~%geometry_msgs/Point   position            # Satellite position in ECEF [m]~%geometry_msgs/Twist   velocity            # Satellite velocity in ECEF [m/s]~%float64               svClockCorrection   # Satellite clock correction [m]~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SvStateTagged)))
  "Returns full string definition for message of type 'SvStateTagged"
  (cl:format cl:nil "## Satellite vehicle state with tags and header~%~%std_msgs/Header   header~%Tags              tags~%SvState           svState~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ros_sensor_msgs/Tags~%## Header structure for user defined data messages~%~%GpsTime        gpsTime~%SensorType     sensor~%ReceiverType   receiver   # String to specify GNSS receiver type~%KeyStatus      key~%string         sensorName~%SourceType     source~%bool           dataValid~%AssuranceLevel assuranceLevel~%================================================================================~%MSG: ros_sensor_msgs/GpsTime~%## GPS time structure~%uint32          gps_week        # Full GPS week from (0:0:00 Jan 06, 1980)~%float64         gps_seconds     # GPS seconds into week [sec]~%================================================================================~%MSG: ros_sensor_msgs/SensorType~%## Sensor Type~%~%uint8 SensorTypeUnknown = 0~%uint8 SensorTypeGps     = 1~%uint8 SensorTypeGlonass = 2~%uint8 SensorTypeGalileo = 4~%uint8 SensorTypeImu     = 8~%uint8 SensorRfRange     = 16~%uint8 SensorTypeVision  = 32~%~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/ReceiverType~%uint8 RECEIVER_TYPE_UBLOX = 0~%uint8 RECEIVER_TYPE_NOVATEL = 1~%uint8 RECEIVER_TYPE_DAGR = 2~%uint8 RECEIVER_TYPE_MICROGRAM = 3~%uint8 RECEIVER_TYPE_TRUTRAK = 4~%uint8 RECEIVER_TYPE_GSSIP = 5~%uint8 RECEIVER_TYPE_OTHER = 14~%uint8 RECEIVER_TYPE_UNKNOWN = 15~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/KeyStatus~%## KeyStatus~%~%uint8 UnauthorizedNotKeyed = 0~%uint8 AuthorizedNotKeyed   = 1~%uint8 Keyed                = 2~%~%uint8 status~%================================================================================~%MSG: ros_sensor_msgs/SourceType~%## Source of data~%~%uint8 SourceTypeUnknown  = 0~%uint8 SourceTypeReceiver = 1~%uint8 SourceTypeNetwork  = 2~%uint8 SourceTypeRinex    = 3~%uint8 SourceTypeAny      = 99~%~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/AssuranceLevel~%uint8  Normal   = 0~%uint8  Unknown  = 1~%uint8  Warning  = 2~%uint8  Attack   = 3~%~%uint8 level~%================================================================================~%MSG: ros_sensor_msgs/SvState~%## Satellite vehicle state information~%~%uint16                prn                 # GPS [1-32], GLONASS may be negative~%geometry_msgs/Point   position            # Satellite position in ECEF [m]~%geometry_msgs/Twist   velocity            # Satellite velocity in ECEF [m/s]~%float64               svClockCorrection   # Satellite clock correction [m]~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SvStateTagged>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'tags))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'svState))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SvStateTagged>))
  "Converts a ROS message object to a list"
  (cl:list 'SvStateTagged
    (cl:cons ':header (header msg))
    (cl:cons ':tags (tags msg))
    (cl:cons ':svState (svState msg))
))
