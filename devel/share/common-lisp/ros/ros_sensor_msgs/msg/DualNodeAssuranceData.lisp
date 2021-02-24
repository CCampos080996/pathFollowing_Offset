; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude DualNodeAssuranceData.msg.html

(cl:defclass <DualNodeAssuranceData> (roslisp-msg-protocol:ros-message)
  ((remoteNodeIp
    :reader remoteNodeIp
    :initarg :remoteNodeIp
    :type cl:string
    :initform "")
   (remotePosition
    :reader remotePosition
    :initarg :remotePosition
    :type ros_sensor_msgs-msg:LlhPositionTagged
    :initform (cl:make-instance 'ros_sensor_msgs-msg:LlhPositionTagged))
   (rfRange
    :reader rfRange
    :initarg :rfRange
    :type ros_sensor_msgs-msg:RfRangeStamped
    :initform (cl:make-instance 'ros_sensor_msgs-msg:RfRangeStamped))
   (nodeRange
    :reader nodeRange
    :initarg :nodeRange
    :type cl:float
    :initform 0.0)
   (rangeCheckAssuranceLevel
    :reader rangeCheckAssuranceLevel
    :initarg :rangeCheckAssuranceLevel
    :type ros_sensor_msgs-msg:AssuranceLevel
    :initform (cl:make-instance 'ros_sensor_msgs-msg:AssuranceLevel))
   (singleDifferences
    :reader singleDifferences
    :initarg :singleDifferences
    :type (cl:vector ros_sensor_msgs-msg:PrnDifference)
   :initform (cl:make-array 0 :element-type 'ros_sensor_msgs-msg:PrnDifference :initial-element (cl:make-instance 'ros_sensor_msgs-msg:PrnDifference)))
   (basePrn
    :reader basePrn
    :initarg :basePrn
    :type cl:integer
    :initform 0)
   (doubleDifferences
    :reader doubleDifferences
    :initarg :doubleDifferences
    :type (cl:vector ros_sensor_msgs-msg:PrnDifference)
   :initform (cl:make-array 0 :element-type 'ros_sensor_msgs-msg:PrnDifference :initial-element (cl:make-instance 'ros_sensor_msgs-msg:PrnDifference)))
   (diffCheckAssuranceLevel
    :reader diffCheckAssuranceLevel
    :initarg :diffCheckAssuranceLevel
    :type ros_sensor_msgs-msg:AssuranceLevel
    :initform (cl:make-instance 'ros_sensor_msgs-msg:AssuranceLevel)))
)

(cl:defclass DualNodeAssuranceData (<DualNodeAssuranceData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DualNodeAssuranceData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DualNodeAssuranceData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<DualNodeAssuranceData> is deprecated: use ros_sensor_msgs-msg:DualNodeAssuranceData instead.")))

(cl:ensure-generic-function 'remoteNodeIp-val :lambda-list '(m))
(cl:defmethod remoteNodeIp-val ((m <DualNodeAssuranceData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:remoteNodeIp-val is deprecated.  Use ros_sensor_msgs-msg:remoteNodeIp instead.")
  (remoteNodeIp m))

(cl:ensure-generic-function 'remotePosition-val :lambda-list '(m))
(cl:defmethod remotePosition-val ((m <DualNodeAssuranceData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:remotePosition-val is deprecated.  Use ros_sensor_msgs-msg:remotePosition instead.")
  (remotePosition m))

(cl:ensure-generic-function 'rfRange-val :lambda-list '(m))
(cl:defmethod rfRange-val ((m <DualNodeAssuranceData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:rfRange-val is deprecated.  Use ros_sensor_msgs-msg:rfRange instead.")
  (rfRange m))

(cl:ensure-generic-function 'nodeRange-val :lambda-list '(m))
(cl:defmethod nodeRange-val ((m <DualNodeAssuranceData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:nodeRange-val is deprecated.  Use ros_sensor_msgs-msg:nodeRange instead.")
  (nodeRange m))

(cl:ensure-generic-function 'rangeCheckAssuranceLevel-val :lambda-list '(m))
(cl:defmethod rangeCheckAssuranceLevel-val ((m <DualNodeAssuranceData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:rangeCheckAssuranceLevel-val is deprecated.  Use ros_sensor_msgs-msg:rangeCheckAssuranceLevel instead.")
  (rangeCheckAssuranceLevel m))

(cl:ensure-generic-function 'singleDifferences-val :lambda-list '(m))
(cl:defmethod singleDifferences-val ((m <DualNodeAssuranceData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:singleDifferences-val is deprecated.  Use ros_sensor_msgs-msg:singleDifferences instead.")
  (singleDifferences m))

(cl:ensure-generic-function 'basePrn-val :lambda-list '(m))
(cl:defmethod basePrn-val ((m <DualNodeAssuranceData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:basePrn-val is deprecated.  Use ros_sensor_msgs-msg:basePrn instead.")
  (basePrn m))

(cl:ensure-generic-function 'doubleDifferences-val :lambda-list '(m))
(cl:defmethod doubleDifferences-val ((m <DualNodeAssuranceData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:doubleDifferences-val is deprecated.  Use ros_sensor_msgs-msg:doubleDifferences instead.")
  (doubleDifferences m))

(cl:ensure-generic-function 'diffCheckAssuranceLevel-val :lambda-list '(m))
(cl:defmethod diffCheckAssuranceLevel-val ((m <DualNodeAssuranceData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:diffCheckAssuranceLevel-val is deprecated.  Use ros_sensor_msgs-msg:diffCheckAssuranceLevel instead.")
  (diffCheckAssuranceLevel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DualNodeAssuranceData>) ostream)
  "Serializes a message object of type '<DualNodeAssuranceData>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'remoteNodeIp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'remoteNodeIp))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'remotePosition) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rfRange) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'nodeRange))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rangeCheckAssuranceLevel) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'singleDifferences))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'singleDifferences))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'basePrn)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'basePrn)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'basePrn)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'basePrn)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'doubleDifferences))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'doubleDifferences))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'diffCheckAssuranceLevel) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DualNodeAssuranceData>) istream)
  "Deserializes a message object of type '<DualNodeAssuranceData>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'remoteNodeIp) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'remoteNodeIp) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'remotePosition) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rfRange) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'nodeRange) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rangeCheckAssuranceLevel) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'singleDifferences) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'singleDifferences)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_sensor_msgs-msg:PrnDifference))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'basePrn)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'basePrn)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'basePrn)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'basePrn)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'doubleDifferences) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'doubleDifferences)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_sensor_msgs-msg:PrnDifference))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'diffCheckAssuranceLevel) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DualNodeAssuranceData>)))
  "Returns string type for a message object of type '<DualNodeAssuranceData>"
  "ros_sensor_msgs/DualNodeAssuranceData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DualNodeAssuranceData)))
  "Returns string type for a message object of type 'DualNodeAssuranceData"
  "ros_sensor_msgs/DualNodeAssuranceData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DualNodeAssuranceData>)))
  "Returns md5sum for a message object of type '<DualNodeAssuranceData>"
  "ba2e6008c14c1601b60697a2dd872ffa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DualNodeAssuranceData)))
  "Returns md5sum for a message object of type 'DualNodeAssuranceData"
  "ba2e6008c14c1601b60697a2dd872ffa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DualNodeAssuranceData>)))
  "Returns full string definition for message of type '<DualNodeAssuranceData>"
  (cl:format cl:nil "  string             remoteNodeIp~%  LlhPositionTagged  remotePosition~%  RfRangeStamped     rfRange~%  float64            nodeRange~%  AssuranceLevel     rangeCheckAssuranceLevel~%  PrnDifference[]    singleDifferences~%  uint32             basePrn~%  PrnDifference[]    doubleDifferences~%  AssuranceLevel     diffCheckAssuranceLevel~%================================================================================~%MSG: ros_sensor_msgs/LlhPositionTagged~%## LlhPositionTagged~%~%std_msgs/Header   header~%Tags              tags~%LlhPosition       llhPosition~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ros_sensor_msgs/Tags~%## Header structure for user defined data messages~%~%GpsTime        gpsTime~%SensorType     sensor~%ReceiverType   receiver   # String to specify GNSS receiver type~%KeyStatus      key~%string         sensorName~%SourceType     source~%bool           dataValid~%AssuranceLevel assuranceLevel~%================================================================================~%MSG: ros_sensor_msgs/GpsTime~%## GPS time structure~%uint32          gps_week        # Full GPS week from (0:0:00 Jan 06, 1980)~%float64         gps_seconds     # GPS seconds into week [sec]~%================================================================================~%MSG: ros_sensor_msgs/SensorType~%## Sensor Type~%~%uint8 SensorTypeUnknown = 0~%uint8 SensorTypeGps     = 1~%uint8 SensorTypeGlonass = 2~%uint8 SensorTypeGalileo = 4~%uint8 SensorTypeImu     = 8~%uint8 SensorRfRange     = 16~%uint8 SensorTypeVision  = 32~%~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/ReceiverType~%uint8 RECEIVER_TYPE_UBLOX = 0~%uint8 RECEIVER_TYPE_NOVATEL = 1~%uint8 RECEIVER_TYPE_DAGR = 2~%uint8 RECEIVER_TYPE_MICROGRAM = 3~%uint8 RECEIVER_TYPE_TRUTRAK = 4~%uint8 RECEIVER_TYPE_GSSIP = 5~%uint8 RECEIVER_TYPE_OTHER = 14~%uint8 RECEIVER_TYPE_UNKNOWN = 15~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/KeyStatus~%## KeyStatus~%~%uint8 UnauthorizedNotKeyed = 0~%uint8 AuthorizedNotKeyed   = 1~%uint8 Keyed                = 2~%~%uint8 status~%================================================================================~%MSG: ros_sensor_msgs/SourceType~%## Source of data~%~%uint8 SourceTypeUnknown  = 0~%uint8 SourceTypeReceiver = 1~%uint8 SourceTypeNetwork  = 2~%uint8 SourceTypeRinex    = 3~%uint8 SourceTypeAny      = 99~%~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/AssuranceLevel~%uint8  Normal   = 0~%uint8  Unknown  = 1~%uint8  Warning  = 2~%uint8  Attack   = 3~%~%uint8 level~%================================================================================~%MSG: ros_sensor_msgs/LlhPosition~%# # LlhPosition~%~%float64                  latitude   # [deg]~%float64                  longitude  # [deg]~%float64                  altitude   # [m]~%uint16                   horizontalAccuracy~%uint16                   verticalAccuracy~%================================================================================~%MSG: ros_sensor_msgs/RfRangeStamped~%# Range to specified object~%std_msgs/Header   header~%RfRange           range~%================================================================================~%MSG: ros_sensor_msgs/RfRange~%# Range to specified object~%float64 range~%float64 rangeRate~%float64 rangeVariance~%float64 rangeRateVariance~%uint32  timestamp~%uint32  sourceId~%uint32  destId~%uint16  rssi~%uint16  quality~%~%================================================================================~%MSG: ros_sensor_msgs/PrnDifference~%uint32   prn~%float64  difference~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DualNodeAssuranceData)))
  "Returns full string definition for message of type 'DualNodeAssuranceData"
  (cl:format cl:nil "  string             remoteNodeIp~%  LlhPositionTagged  remotePosition~%  RfRangeStamped     rfRange~%  float64            nodeRange~%  AssuranceLevel     rangeCheckAssuranceLevel~%  PrnDifference[]    singleDifferences~%  uint32             basePrn~%  PrnDifference[]    doubleDifferences~%  AssuranceLevel     diffCheckAssuranceLevel~%================================================================================~%MSG: ros_sensor_msgs/LlhPositionTagged~%## LlhPositionTagged~%~%std_msgs/Header   header~%Tags              tags~%LlhPosition       llhPosition~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ros_sensor_msgs/Tags~%## Header structure for user defined data messages~%~%GpsTime        gpsTime~%SensorType     sensor~%ReceiverType   receiver   # String to specify GNSS receiver type~%KeyStatus      key~%string         sensorName~%SourceType     source~%bool           dataValid~%AssuranceLevel assuranceLevel~%================================================================================~%MSG: ros_sensor_msgs/GpsTime~%## GPS time structure~%uint32          gps_week        # Full GPS week from (0:0:00 Jan 06, 1980)~%float64         gps_seconds     # GPS seconds into week [sec]~%================================================================================~%MSG: ros_sensor_msgs/SensorType~%## Sensor Type~%~%uint8 SensorTypeUnknown = 0~%uint8 SensorTypeGps     = 1~%uint8 SensorTypeGlonass = 2~%uint8 SensorTypeGalileo = 4~%uint8 SensorTypeImu     = 8~%uint8 SensorRfRange     = 16~%uint8 SensorTypeVision  = 32~%~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/ReceiverType~%uint8 RECEIVER_TYPE_UBLOX = 0~%uint8 RECEIVER_TYPE_NOVATEL = 1~%uint8 RECEIVER_TYPE_DAGR = 2~%uint8 RECEIVER_TYPE_MICROGRAM = 3~%uint8 RECEIVER_TYPE_TRUTRAK = 4~%uint8 RECEIVER_TYPE_GSSIP = 5~%uint8 RECEIVER_TYPE_OTHER = 14~%uint8 RECEIVER_TYPE_UNKNOWN = 15~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/KeyStatus~%## KeyStatus~%~%uint8 UnauthorizedNotKeyed = 0~%uint8 AuthorizedNotKeyed   = 1~%uint8 Keyed                = 2~%~%uint8 status~%================================================================================~%MSG: ros_sensor_msgs/SourceType~%## Source of data~%~%uint8 SourceTypeUnknown  = 0~%uint8 SourceTypeReceiver = 1~%uint8 SourceTypeNetwork  = 2~%uint8 SourceTypeRinex    = 3~%uint8 SourceTypeAny      = 99~%~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/AssuranceLevel~%uint8  Normal   = 0~%uint8  Unknown  = 1~%uint8  Warning  = 2~%uint8  Attack   = 3~%~%uint8 level~%================================================================================~%MSG: ros_sensor_msgs/LlhPosition~%# # LlhPosition~%~%float64                  latitude   # [deg]~%float64                  longitude  # [deg]~%float64                  altitude   # [m]~%uint16                   horizontalAccuracy~%uint16                   verticalAccuracy~%================================================================================~%MSG: ros_sensor_msgs/RfRangeStamped~%# Range to specified object~%std_msgs/Header   header~%RfRange           range~%================================================================================~%MSG: ros_sensor_msgs/RfRange~%# Range to specified object~%float64 range~%float64 rangeRate~%float64 rangeVariance~%float64 rangeRateVariance~%uint32  timestamp~%uint32  sourceId~%uint32  destId~%uint16  rssi~%uint16  quality~%~%================================================================================~%MSG: ros_sensor_msgs/PrnDifference~%uint32   prn~%float64  difference~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DualNodeAssuranceData>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'remoteNodeIp))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'remotePosition))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rfRange))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rangeCheckAssuranceLevel))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'singleDifferences) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'doubleDifferences) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'diffCheckAssuranceLevel))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DualNodeAssuranceData>))
  "Converts a ROS message object to a list"
  (cl:list 'DualNodeAssuranceData
    (cl:cons ':remoteNodeIp (remoteNodeIp msg))
    (cl:cons ':remotePosition (remotePosition msg))
    (cl:cons ':rfRange (rfRange msg))
    (cl:cons ':nodeRange (nodeRange msg))
    (cl:cons ':rangeCheckAssuranceLevel (rangeCheckAssuranceLevel msg))
    (cl:cons ':singleDifferences (singleDifferences msg))
    (cl:cons ':basePrn (basePrn msg))
    (cl:cons ':doubleDifferences (doubleDifferences msg))
    (cl:cons ':diffCheckAssuranceLevel (diffCheckAssuranceLevel msg))
))
