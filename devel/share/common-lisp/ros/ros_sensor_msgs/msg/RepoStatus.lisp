; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude RepoStatus.msg.html

(cl:defclass <RepoStatus> (roslisp-msg-protocol:ros-message)
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
   (localNode
    :reader localNode
    :initarg :localNode
    :type ros_sensor_msgs-msg:NodeStatus
    :initform (cl:make-instance 'ros_sensor_msgs-msg:NodeStatus))
   (remoteNodes
    :reader remoteNodes
    :initarg :remoteNodes
    :type (cl:vector ros_sensor_msgs-msg:NodeStatus)
   :initform (cl:make-array 0 :element-type 'ros_sensor_msgs-msg:NodeStatus :initial-element (cl:make-instance 'ros_sensor_msgs-msg:NodeStatus))))
)

(cl:defclass RepoStatus (<RepoStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RepoStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RepoStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<RepoStatus> is deprecated: use ros_sensor_msgs-msg:RepoStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RepoStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:header-val is deprecated.  Use ros_sensor_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'tags-val :lambda-list '(m))
(cl:defmethod tags-val ((m <RepoStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:tags-val is deprecated.  Use ros_sensor_msgs-msg:tags instead.")
  (tags m))

(cl:ensure-generic-function 'localNode-val :lambda-list '(m))
(cl:defmethod localNode-val ((m <RepoStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:localNode-val is deprecated.  Use ros_sensor_msgs-msg:localNode instead.")
  (localNode m))

(cl:ensure-generic-function 'remoteNodes-val :lambda-list '(m))
(cl:defmethod remoteNodes-val ((m <RepoStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:remoteNodes-val is deprecated.  Use ros_sensor_msgs-msg:remoteNodes instead.")
  (remoteNodes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RepoStatus>) ostream)
  "Serializes a message object of type '<RepoStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'tags) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'localNode) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'remoteNodes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'remoteNodes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RepoStatus>) istream)
  "Deserializes a message object of type '<RepoStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'tags) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'localNode) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'remoteNodes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'remoteNodes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_sensor_msgs-msg:NodeStatus))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RepoStatus>)))
  "Returns string type for a message object of type '<RepoStatus>"
  "ros_sensor_msgs/RepoStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RepoStatus)))
  "Returns string type for a message object of type 'RepoStatus"
  "ros_sensor_msgs/RepoStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RepoStatus>)))
  "Returns md5sum for a message object of type '<RepoStatus>"
  "73c189982339de9347415b23f31f460b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RepoStatus)))
  "Returns md5sum for a message object of type 'RepoStatus"
  "73c189982339de9347415b23f31f460b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RepoStatus>)))
  "Returns full string definition for message of type '<RepoStatus>"
  (cl:format cl:nil "std_msgs/Header   header~%Tags              tags~%NodeStatus        localNode~%NodeStatus[]      remoteNodes~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ros_sensor_msgs/Tags~%## Header structure for user defined data messages~%~%GpsTime        gpsTime~%SensorType     sensor~%ReceiverType   receiver   # String to specify GNSS receiver type~%KeyStatus      key~%string         sensorName~%SourceType     source~%bool           dataValid~%AssuranceLevel assuranceLevel~%================================================================================~%MSG: ros_sensor_msgs/GpsTime~%## GPS time structure~%uint32          gps_week        # Full GPS week from (0:0:00 Jan 06, 1980)~%float64         gps_seconds     # GPS seconds into week [sec]~%================================================================================~%MSG: ros_sensor_msgs/SensorType~%## Sensor Type~%~%uint8 SensorTypeUnknown = 0~%uint8 SensorTypeGps     = 1~%uint8 SensorTypeGlonass = 2~%uint8 SensorTypeGalileo = 4~%uint8 SensorTypeImu     = 8~%uint8 SensorRfRange     = 16~%uint8 SensorTypeVision  = 32~%~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/ReceiverType~%uint8 RECEIVER_TYPE_UBLOX = 0~%uint8 RECEIVER_TYPE_NOVATEL = 1~%uint8 RECEIVER_TYPE_DAGR = 2~%uint8 RECEIVER_TYPE_MICROGRAM = 3~%uint8 RECEIVER_TYPE_TRUTRAK = 4~%uint8 RECEIVER_TYPE_GSSIP = 5~%uint8 RECEIVER_TYPE_OTHER = 14~%uint8 RECEIVER_TYPE_UNKNOWN = 15~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/KeyStatus~%## KeyStatus~%~%uint8 UnauthorizedNotKeyed = 0~%uint8 AuthorizedNotKeyed   = 1~%uint8 Keyed                = 2~%~%uint8 status~%================================================================================~%MSG: ros_sensor_msgs/SourceType~%## Source of data~%~%uint8 SourceTypeUnknown  = 0~%uint8 SourceTypeReceiver = 1~%uint8 SourceTypeNetwork  = 2~%uint8 SourceTypeRinex    = 3~%uint8 SourceTypeAny      = 99~%~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/AssuranceLevel~%uint8  Normal   = 0~%uint8  Unknown  = 1~%uint8  Warning  = 2~%uint8  Attack   = 3~%~%uint8 level~%================================================================================~%MSG: ros_sensor_msgs/NodeStatus~%std_msgs/Header       header~%Tags                  tags~%FixType               fix~%uint8                 numSatellitesAvailable~%uint16                timeSinceLastFix     # in seconds [s]~%AvlSatelliteData      availableEphemeris   # bit field~%AvlSatelliteData      availableAlmanac     # bit field~%bool                  utcIonoAvailable~%NetworkTimeOffset     networkTimeOffset~%CpuTimeOffset         computerTimeOffset~%AssuranceLevel        assurance~%AssuranceCheckValue[] assuranceCheckVal~%bool                  isStale~%================================================================================~%MSG: ros_sensor_msgs/FixType~%## Fix Type~%~%uint8 FixTypeNone = 0~%uint8 FixTypeDeadReckoning = 1~%uint8 FixType2D = 2~%uint8 FixType3D = 3~%uint8 FixTypeDRand3D = 4 ## Dead reckoning and GPS fix~%uint8 FixTypeTimeOnly = 5~%uint8 FixTypeStatic = 9~%~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/AvlSatelliteData~%uint32    fromReceiver~%uint32    fromNetwork~%uint32    fromRinex~%uint32    fromUnknown~%================================================================================~%MSG: ros_sensor_msgs/NetworkTimeOffset~%  GpsTime timeOfValidity~%  bool    dataValid~%  int32   networkDifferenceCounts~%  int32   networkDriftCounts~%  int32   oscillatorFreqEst~%  int32   networkDifferenceCmdCounts~%  int32   networkDriftCmdCounts~%  uint32  networkPpsCount~%  uint32  gpsPpsCount~%================================================================================~%MSG: ros_sensor_msgs/CpuTimeOffset~%bool    valid~%float64 secondsOffset~%================================================================================~%MSG: ros_sensor_msgs/AssuranceCheckValue~%## An assurance check value for a given prn~%~%uint32    prn~%uint32    checkVal~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RepoStatus)))
  "Returns full string definition for message of type 'RepoStatus"
  (cl:format cl:nil "std_msgs/Header   header~%Tags              tags~%NodeStatus        localNode~%NodeStatus[]      remoteNodes~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ros_sensor_msgs/Tags~%## Header structure for user defined data messages~%~%GpsTime        gpsTime~%SensorType     sensor~%ReceiverType   receiver   # String to specify GNSS receiver type~%KeyStatus      key~%string         sensorName~%SourceType     source~%bool           dataValid~%AssuranceLevel assuranceLevel~%================================================================================~%MSG: ros_sensor_msgs/GpsTime~%## GPS time structure~%uint32          gps_week        # Full GPS week from (0:0:00 Jan 06, 1980)~%float64         gps_seconds     # GPS seconds into week [sec]~%================================================================================~%MSG: ros_sensor_msgs/SensorType~%## Sensor Type~%~%uint8 SensorTypeUnknown = 0~%uint8 SensorTypeGps     = 1~%uint8 SensorTypeGlonass = 2~%uint8 SensorTypeGalileo = 4~%uint8 SensorTypeImu     = 8~%uint8 SensorRfRange     = 16~%uint8 SensorTypeVision  = 32~%~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/ReceiverType~%uint8 RECEIVER_TYPE_UBLOX = 0~%uint8 RECEIVER_TYPE_NOVATEL = 1~%uint8 RECEIVER_TYPE_DAGR = 2~%uint8 RECEIVER_TYPE_MICROGRAM = 3~%uint8 RECEIVER_TYPE_TRUTRAK = 4~%uint8 RECEIVER_TYPE_GSSIP = 5~%uint8 RECEIVER_TYPE_OTHER = 14~%uint8 RECEIVER_TYPE_UNKNOWN = 15~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/KeyStatus~%## KeyStatus~%~%uint8 UnauthorizedNotKeyed = 0~%uint8 AuthorizedNotKeyed   = 1~%uint8 Keyed                = 2~%~%uint8 status~%================================================================================~%MSG: ros_sensor_msgs/SourceType~%## Source of data~%~%uint8 SourceTypeUnknown  = 0~%uint8 SourceTypeReceiver = 1~%uint8 SourceTypeNetwork  = 2~%uint8 SourceTypeRinex    = 3~%uint8 SourceTypeAny      = 99~%~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/AssuranceLevel~%uint8  Normal   = 0~%uint8  Unknown  = 1~%uint8  Warning  = 2~%uint8  Attack   = 3~%~%uint8 level~%================================================================================~%MSG: ros_sensor_msgs/NodeStatus~%std_msgs/Header       header~%Tags                  tags~%FixType               fix~%uint8                 numSatellitesAvailable~%uint16                timeSinceLastFix     # in seconds [s]~%AvlSatelliteData      availableEphemeris   # bit field~%AvlSatelliteData      availableAlmanac     # bit field~%bool                  utcIonoAvailable~%NetworkTimeOffset     networkTimeOffset~%CpuTimeOffset         computerTimeOffset~%AssuranceLevel        assurance~%AssuranceCheckValue[] assuranceCheckVal~%bool                  isStale~%================================================================================~%MSG: ros_sensor_msgs/FixType~%## Fix Type~%~%uint8 FixTypeNone = 0~%uint8 FixTypeDeadReckoning = 1~%uint8 FixType2D = 2~%uint8 FixType3D = 3~%uint8 FixTypeDRand3D = 4 ## Dead reckoning and GPS fix~%uint8 FixTypeTimeOnly = 5~%uint8 FixTypeStatic = 9~%~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/AvlSatelliteData~%uint32    fromReceiver~%uint32    fromNetwork~%uint32    fromRinex~%uint32    fromUnknown~%================================================================================~%MSG: ros_sensor_msgs/NetworkTimeOffset~%  GpsTime timeOfValidity~%  bool    dataValid~%  int32   networkDifferenceCounts~%  int32   networkDriftCounts~%  int32   oscillatorFreqEst~%  int32   networkDifferenceCmdCounts~%  int32   networkDriftCmdCounts~%  uint32  networkPpsCount~%  uint32  gpsPpsCount~%================================================================================~%MSG: ros_sensor_msgs/CpuTimeOffset~%bool    valid~%float64 secondsOffset~%================================================================================~%MSG: ros_sensor_msgs/AssuranceCheckValue~%## An assurance check value for a given prn~%~%uint32    prn~%uint32    checkVal~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RepoStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'tags))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'localNode))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'remoteNodes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RepoStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'RepoStatus
    (cl:cons ':header (header msg))
    (cl:cons ':tags (tags msg))
    (cl:cons ':localNode (localNode msg))
    (cl:cons ':remoteNodes (remoteNodes msg))
))
