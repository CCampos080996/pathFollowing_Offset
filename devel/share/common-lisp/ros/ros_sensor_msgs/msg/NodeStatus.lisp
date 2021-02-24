; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude NodeStatus.msg.html

(cl:defclass <NodeStatus> (roslisp-msg-protocol:ros-message)
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
   (fix
    :reader fix
    :initarg :fix
    :type ros_sensor_msgs-msg:FixType
    :initform (cl:make-instance 'ros_sensor_msgs-msg:FixType))
   (numSatellitesAvailable
    :reader numSatellitesAvailable
    :initarg :numSatellitesAvailable
    :type cl:fixnum
    :initform 0)
   (timeSinceLastFix
    :reader timeSinceLastFix
    :initarg :timeSinceLastFix
    :type cl:fixnum
    :initform 0)
   (availableEphemeris
    :reader availableEphemeris
    :initarg :availableEphemeris
    :type ros_sensor_msgs-msg:AvlSatelliteData
    :initform (cl:make-instance 'ros_sensor_msgs-msg:AvlSatelliteData))
   (availableAlmanac
    :reader availableAlmanac
    :initarg :availableAlmanac
    :type ros_sensor_msgs-msg:AvlSatelliteData
    :initform (cl:make-instance 'ros_sensor_msgs-msg:AvlSatelliteData))
   (utcIonoAvailable
    :reader utcIonoAvailable
    :initarg :utcIonoAvailable
    :type cl:boolean
    :initform cl:nil)
   (networkTimeOffset
    :reader networkTimeOffset
    :initarg :networkTimeOffset
    :type ros_sensor_msgs-msg:NetworkTimeOffset
    :initform (cl:make-instance 'ros_sensor_msgs-msg:NetworkTimeOffset))
   (computerTimeOffset
    :reader computerTimeOffset
    :initarg :computerTimeOffset
    :type ros_sensor_msgs-msg:CpuTimeOffset
    :initform (cl:make-instance 'ros_sensor_msgs-msg:CpuTimeOffset))
   (assurance
    :reader assurance
    :initarg :assurance
    :type ros_sensor_msgs-msg:AssuranceLevel
    :initform (cl:make-instance 'ros_sensor_msgs-msg:AssuranceLevel))
   (assuranceCheckVal
    :reader assuranceCheckVal
    :initarg :assuranceCheckVal
    :type (cl:vector ros_sensor_msgs-msg:AssuranceCheckValue)
   :initform (cl:make-array 0 :element-type 'ros_sensor_msgs-msg:AssuranceCheckValue :initial-element (cl:make-instance 'ros_sensor_msgs-msg:AssuranceCheckValue)))
   (isStale
    :reader isStale
    :initarg :isStale
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass NodeStatus (<NodeStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NodeStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NodeStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<NodeStatus> is deprecated: use ros_sensor_msgs-msg:NodeStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <NodeStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:header-val is deprecated.  Use ros_sensor_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'tags-val :lambda-list '(m))
(cl:defmethod tags-val ((m <NodeStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:tags-val is deprecated.  Use ros_sensor_msgs-msg:tags instead.")
  (tags m))

(cl:ensure-generic-function 'fix-val :lambda-list '(m))
(cl:defmethod fix-val ((m <NodeStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:fix-val is deprecated.  Use ros_sensor_msgs-msg:fix instead.")
  (fix m))

(cl:ensure-generic-function 'numSatellitesAvailable-val :lambda-list '(m))
(cl:defmethod numSatellitesAvailable-val ((m <NodeStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:numSatellitesAvailable-val is deprecated.  Use ros_sensor_msgs-msg:numSatellitesAvailable instead.")
  (numSatellitesAvailable m))

(cl:ensure-generic-function 'timeSinceLastFix-val :lambda-list '(m))
(cl:defmethod timeSinceLastFix-val ((m <NodeStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:timeSinceLastFix-val is deprecated.  Use ros_sensor_msgs-msg:timeSinceLastFix instead.")
  (timeSinceLastFix m))

(cl:ensure-generic-function 'availableEphemeris-val :lambda-list '(m))
(cl:defmethod availableEphemeris-val ((m <NodeStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:availableEphemeris-val is deprecated.  Use ros_sensor_msgs-msg:availableEphemeris instead.")
  (availableEphemeris m))

(cl:ensure-generic-function 'availableAlmanac-val :lambda-list '(m))
(cl:defmethod availableAlmanac-val ((m <NodeStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:availableAlmanac-val is deprecated.  Use ros_sensor_msgs-msg:availableAlmanac instead.")
  (availableAlmanac m))

(cl:ensure-generic-function 'utcIonoAvailable-val :lambda-list '(m))
(cl:defmethod utcIonoAvailable-val ((m <NodeStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:utcIonoAvailable-val is deprecated.  Use ros_sensor_msgs-msg:utcIonoAvailable instead.")
  (utcIonoAvailable m))

(cl:ensure-generic-function 'networkTimeOffset-val :lambda-list '(m))
(cl:defmethod networkTimeOffset-val ((m <NodeStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:networkTimeOffset-val is deprecated.  Use ros_sensor_msgs-msg:networkTimeOffset instead.")
  (networkTimeOffset m))

(cl:ensure-generic-function 'computerTimeOffset-val :lambda-list '(m))
(cl:defmethod computerTimeOffset-val ((m <NodeStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:computerTimeOffset-val is deprecated.  Use ros_sensor_msgs-msg:computerTimeOffset instead.")
  (computerTimeOffset m))

(cl:ensure-generic-function 'assurance-val :lambda-list '(m))
(cl:defmethod assurance-val ((m <NodeStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:assurance-val is deprecated.  Use ros_sensor_msgs-msg:assurance instead.")
  (assurance m))

(cl:ensure-generic-function 'assuranceCheckVal-val :lambda-list '(m))
(cl:defmethod assuranceCheckVal-val ((m <NodeStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:assuranceCheckVal-val is deprecated.  Use ros_sensor_msgs-msg:assuranceCheckVal instead.")
  (assuranceCheckVal m))

(cl:ensure-generic-function 'isStale-val :lambda-list '(m))
(cl:defmethod isStale-val ((m <NodeStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:isStale-val is deprecated.  Use ros_sensor_msgs-msg:isStale instead.")
  (isStale m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NodeStatus>) ostream)
  "Serializes a message object of type '<NodeStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'tags) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'fix) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numSatellitesAvailable)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timeSinceLastFix)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timeSinceLastFix)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'availableEphemeris) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'availableAlmanac) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'utcIonoAvailable) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'networkTimeOffset) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'computerTimeOffset) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'assurance) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'assuranceCheckVal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'assuranceCheckVal))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isStale) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NodeStatus>) istream)
  "Deserializes a message object of type '<NodeStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'tags) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'fix) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numSatellitesAvailable)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timeSinceLastFix)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timeSinceLastFix)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'availableEphemeris) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'availableAlmanac) istream)
    (cl:setf (cl:slot-value msg 'utcIonoAvailable) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'networkTimeOffset) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'computerTimeOffset) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'assurance) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'assuranceCheckVal) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'assuranceCheckVal)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_sensor_msgs-msg:AssuranceCheckValue))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 'isStale) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NodeStatus>)))
  "Returns string type for a message object of type '<NodeStatus>"
  "ros_sensor_msgs/NodeStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NodeStatus)))
  "Returns string type for a message object of type 'NodeStatus"
  "ros_sensor_msgs/NodeStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NodeStatus>)))
  "Returns md5sum for a message object of type '<NodeStatus>"
  "278b370fcaf1e9224bd8b33acea7e9ca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NodeStatus)))
  "Returns md5sum for a message object of type 'NodeStatus"
  "278b370fcaf1e9224bd8b33acea7e9ca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NodeStatus>)))
  "Returns full string definition for message of type '<NodeStatus>"
  (cl:format cl:nil "std_msgs/Header       header~%Tags                  tags~%FixType               fix~%uint8                 numSatellitesAvailable~%uint16                timeSinceLastFix     # in seconds [s]~%AvlSatelliteData      availableEphemeris   # bit field~%AvlSatelliteData      availableAlmanac     # bit field~%bool                  utcIonoAvailable~%NetworkTimeOffset     networkTimeOffset~%CpuTimeOffset         computerTimeOffset~%AssuranceLevel        assurance~%AssuranceCheckValue[] assuranceCheckVal~%bool                  isStale~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ros_sensor_msgs/Tags~%## Header structure for user defined data messages~%~%GpsTime        gpsTime~%SensorType     sensor~%ReceiverType   receiver   # String to specify GNSS receiver type~%KeyStatus      key~%string         sensorName~%SourceType     source~%bool           dataValid~%AssuranceLevel assuranceLevel~%================================================================================~%MSG: ros_sensor_msgs/GpsTime~%## GPS time structure~%uint32          gps_week        # Full GPS week from (0:0:00 Jan 06, 1980)~%float64         gps_seconds     # GPS seconds into week [sec]~%================================================================================~%MSG: ros_sensor_msgs/SensorType~%## Sensor Type~%~%uint8 SensorTypeUnknown = 0~%uint8 SensorTypeGps     = 1~%uint8 SensorTypeGlonass = 2~%uint8 SensorTypeGalileo = 4~%uint8 SensorTypeImu     = 8~%uint8 SensorRfRange     = 16~%uint8 SensorTypeVision  = 32~%~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/ReceiverType~%uint8 RECEIVER_TYPE_UBLOX = 0~%uint8 RECEIVER_TYPE_NOVATEL = 1~%uint8 RECEIVER_TYPE_DAGR = 2~%uint8 RECEIVER_TYPE_MICROGRAM = 3~%uint8 RECEIVER_TYPE_TRUTRAK = 4~%uint8 RECEIVER_TYPE_GSSIP = 5~%uint8 RECEIVER_TYPE_OTHER = 14~%uint8 RECEIVER_TYPE_UNKNOWN = 15~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/KeyStatus~%## KeyStatus~%~%uint8 UnauthorizedNotKeyed = 0~%uint8 AuthorizedNotKeyed   = 1~%uint8 Keyed                = 2~%~%uint8 status~%================================================================================~%MSG: ros_sensor_msgs/SourceType~%## Source of data~%~%uint8 SourceTypeUnknown  = 0~%uint8 SourceTypeReceiver = 1~%uint8 SourceTypeNetwork  = 2~%uint8 SourceTypeRinex    = 3~%uint8 SourceTypeAny      = 99~%~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/AssuranceLevel~%uint8  Normal   = 0~%uint8  Unknown  = 1~%uint8  Warning  = 2~%uint8  Attack   = 3~%~%uint8 level~%================================================================================~%MSG: ros_sensor_msgs/FixType~%## Fix Type~%~%uint8 FixTypeNone = 0~%uint8 FixTypeDeadReckoning = 1~%uint8 FixType2D = 2~%uint8 FixType3D = 3~%uint8 FixTypeDRand3D = 4 ## Dead reckoning and GPS fix~%uint8 FixTypeTimeOnly = 5~%uint8 FixTypeStatic = 9~%~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/AvlSatelliteData~%uint32    fromReceiver~%uint32    fromNetwork~%uint32    fromRinex~%uint32    fromUnknown~%================================================================================~%MSG: ros_sensor_msgs/NetworkTimeOffset~%  GpsTime timeOfValidity~%  bool    dataValid~%  int32   networkDifferenceCounts~%  int32   networkDriftCounts~%  int32   oscillatorFreqEst~%  int32   networkDifferenceCmdCounts~%  int32   networkDriftCmdCounts~%  uint32  networkPpsCount~%  uint32  gpsPpsCount~%================================================================================~%MSG: ros_sensor_msgs/CpuTimeOffset~%bool    valid~%float64 secondsOffset~%================================================================================~%MSG: ros_sensor_msgs/AssuranceCheckValue~%## An assurance check value for a given prn~%~%uint32    prn~%uint32    checkVal~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NodeStatus)))
  "Returns full string definition for message of type 'NodeStatus"
  (cl:format cl:nil "std_msgs/Header       header~%Tags                  tags~%FixType               fix~%uint8                 numSatellitesAvailable~%uint16                timeSinceLastFix     # in seconds [s]~%AvlSatelliteData      availableEphemeris   # bit field~%AvlSatelliteData      availableAlmanac     # bit field~%bool                  utcIonoAvailable~%NetworkTimeOffset     networkTimeOffset~%CpuTimeOffset         computerTimeOffset~%AssuranceLevel        assurance~%AssuranceCheckValue[] assuranceCheckVal~%bool                  isStale~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ros_sensor_msgs/Tags~%## Header structure for user defined data messages~%~%GpsTime        gpsTime~%SensorType     sensor~%ReceiverType   receiver   # String to specify GNSS receiver type~%KeyStatus      key~%string         sensorName~%SourceType     source~%bool           dataValid~%AssuranceLevel assuranceLevel~%================================================================================~%MSG: ros_sensor_msgs/GpsTime~%## GPS time structure~%uint32          gps_week        # Full GPS week from (0:0:00 Jan 06, 1980)~%float64         gps_seconds     # GPS seconds into week [sec]~%================================================================================~%MSG: ros_sensor_msgs/SensorType~%## Sensor Type~%~%uint8 SensorTypeUnknown = 0~%uint8 SensorTypeGps     = 1~%uint8 SensorTypeGlonass = 2~%uint8 SensorTypeGalileo = 4~%uint8 SensorTypeImu     = 8~%uint8 SensorRfRange     = 16~%uint8 SensorTypeVision  = 32~%~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/ReceiverType~%uint8 RECEIVER_TYPE_UBLOX = 0~%uint8 RECEIVER_TYPE_NOVATEL = 1~%uint8 RECEIVER_TYPE_DAGR = 2~%uint8 RECEIVER_TYPE_MICROGRAM = 3~%uint8 RECEIVER_TYPE_TRUTRAK = 4~%uint8 RECEIVER_TYPE_GSSIP = 5~%uint8 RECEIVER_TYPE_OTHER = 14~%uint8 RECEIVER_TYPE_UNKNOWN = 15~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/KeyStatus~%## KeyStatus~%~%uint8 UnauthorizedNotKeyed = 0~%uint8 AuthorizedNotKeyed   = 1~%uint8 Keyed                = 2~%~%uint8 status~%================================================================================~%MSG: ros_sensor_msgs/SourceType~%## Source of data~%~%uint8 SourceTypeUnknown  = 0~%uint8 SourceTypeReceiver = 1~%uint8 SourceTypeNetwork  = 2~%uint8 SourceTypeRinex    = 3~%uint8 SourceTypeAny      = 99~%~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/AssuranceLevel~%uint8  Normal   = 0~%uint8  Unknown  = 1~%uint8  Warning  = 2~%uint8  Attack   = 3~%~%uint8 level~%================================================================================~%MSG: ros_sensor_msgs/FixType~%## Fix Type~%~%uint8 FixTypeNone = 0~%uint8 FixTypeDeadReckoning = 1~%uint8 FixType2D = 2~%uint8 FixType3D = 3~%uint8 FixTypeDRand3D = 4 ## Dead reckoning and GPS fix~%uint8 FixTypeTimeOnly = 5~%uint8 FixTypeStatic = 9~%~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/AvlSatelliteData~%uint32    fromReceiver~%uint32    fromNetwork~%uint32    fromRinex~%uint32    fromUnknown~%================================================================================~%MSG: ros_sensor_msgs/NetworkTimeOffset~%  GpsTime timeOfValidity~%  bool    dataValid~%  int32   networkDifferenceCounts~%  int32   networkDriftCounts~%  int32   oscillatorFreqEst~%  int32   networkDifferenceCmdCounts~%  int32   networkDriftCmdCounts~%  uint32  networkPpsCount~%  uint32  gpsPpsCount~%================================================================================~%MSG: ros_sensor_msgs/CpuTimeOffset~%bool    valid~%float64 secondsOffset~%================================================================================~%MSG: ros_sensor_msgs/AssuranceCheckValue~%## An assurance check value for a given prn~%~%uint32    prn~%uint32    checkVal~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NodeStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'tags))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'fix))
     1
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'availableEphemeris))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'availableAlmanac))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'networkTimeOffset))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'computerTimeOffset))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'assurance))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'assuranceCheckVal) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NodeStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'NodeStatus
    (cl:cons ':header (header msg))
    (cl:cons ':tags (tags msg))
    (cl:cons ':fix (fix msg))
    (cl:cons ':numSatellitesAvailable (numSatellitesAvailable msg))
    (cl:cons ':timeSinceLastFix (timeSinceLastFix msg))
    (cl:cons ':availableEphemeris (availableEphemeris msg))
    (cl:cons ':availableAlmanac (availableAlmanac msg))
    (cl:cons ':utcIonoAvailable (utcIonoAvailable msg))
    (cl:cons ':networkTimeOffset (networkTimeOffset msg))
    (cl:cons ':computerTimeOffset (computerTimeOffset msg))
    (cl:cons ':assurance (assurance msg))
    (cl:cons ':assuranceCheckVal (assuranceCheckVal msg))
    (cl:cons ':isStale (isStale msg))
))
