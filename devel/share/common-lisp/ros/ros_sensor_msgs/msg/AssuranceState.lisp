; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude AssuranceState.msg.html

(cl:defclass <AssuranceState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (localPosition
    :reader localPosition
    :initarg :localPosition
    :type ros_sensor_msgs-msg:LlhPositionTagged
    :initform (cl:make-instance 'ros_sensor_msgs-msg:LlhPositionTagged))
   (dualNodeData
    :reader dualNodeData
    :initarg :dualNodeData
    :type (cl:vector ros_sensor_msgs-msg:DualNodeAssuranceData)
   :initform (cl:make-array 0 :element-type 'ros_sensor_msgs-msg:DualNodeAssuranceData :initial-element (cl:make-instance 'ros_sensor_msgs-msg:DualNodeAssuranceData)))
   (singleNodeData
    :reader singleNodeData
    :initarg :singleNodeData
    :type ros_sensor_msgs-msg:SingleNodeAssuranceData
    :initform (cl:make-instance 'ros_sensor_msgs-msg:SingleNodeAssuranceData))
   (prnAssuranceValues
    :reader prnAssuranceValues
    :initarg :prnAssuranceValues
    :type (cl:vector ros_sensor_msgs-msg:AssuranceCheckValue)
   :initform (cl:make-array 0 :element-type 'ros_sensor_msgs-msg:AssuranceCheckValue :initial-element (cl:make-instance 'ros_sensor_msgs-msg:AssuranceCheckValue)))
   (assuranceLevel
    :reader assuranceLevel
    :initarg :assuranceLevel
    :type ros_sensor_msgs-msg:AssuranceLevel
    :initform (cl:make-instance 'ros_sensor_msgs-msg:AssuranceLevel))
   (filteredLevel
    :reader filteredLevel
    :initarg :filteredLevel
    :type cl:float
    :initform 0.0))
)

(cl:defclass AssuranceState (<AssuranceState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AssuranceState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AssuranceState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<AssuranceState> is deprecated: use ros_sensor_msgs-msg:AssuranceState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <AssuranceState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:header-val is deprecated.  Use ros_sensor_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'localPosition-val :lambda-list '(m))
(cl:defmethod localPosition-val ((m <AssuranceState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:localPosition-val is deprecated.  Use ros_sensor_msgs-msg:localPosition instead.")
  (localPosition m))

(cl:ensure-generic-function 'dualNodeData-val :lambda-list '(m))
(cl:defmethod dualNodeData-val ((m <AssuranceState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:dualNodeData-val is deprecated.  Use ros_sensor_msgs-msg:dualNodeData instead.")
  (dualNodeData m))

(cl:ensure-generic-function 'singleNodeData-val :lambda-list '(m))
(cl:defmethod singleNodeData-val ((m <AssuranceState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:singleNodeData-val is deprecated.  Use ros_sensor_msgs-msg:singleNodeData instead.")
  (singleNodeData m))

(cl:ensure-generic-function 'prnAssuranceValues-val :lambda-list '(m))
(cl:defmethod prnAssuranceValues-val ((m <AssuranceState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:prnAssuranceValues-val is deprecated.  Use ros_sensor_msgs-msg:prnAssuranceValues instead.")
  (prnAssuranceValues m))

(cl:ensure-generic-function 'assuranceLevel-val :lambda-list '(m))
(cl:defmethod assuranceLevel-val ((m <AssuranceState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:assuranceLevel-val is deprecated.  Use ros_sensor_msgs-msg:assuranceLevel instead.")
  (assuranceLevel m))

(cl:ensure-generic-function 'filteredLevel-val :lambda-list '(m))
(cl:defmethod filteredLevel-val ((m <AssuranceState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:filteredLevel-val is deprecated.  Use ros_sensor_msgs-msg:filteredLevel instead.")
  (filteredLevel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AssuranceState>) ostream)
  "Serializes a message object of type '<AssuranceState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'localPosition) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'dualNodeData))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'dualNodeData))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'singleNodeData) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'prnAssuranceValues))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'prnAssuranceValues))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'assuranceLevel) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'filteredLevel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AssuranceState>) istream)
  "Deserializes a message object of type '<AssuranceState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'localPosition) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'dualNodeData) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'dualNodeData)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_sensor_msgs-msg:DualNodeAssuranceData))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'singleNodeData) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'prnAssuranceValues) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'prnAssuranceValues)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_sensor_msgs-msg:AssuranceCheckValue))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'assuranceLevel) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'filteredLevel) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AssuranceState>)))
  "Returns string type for a message object of type '<AssuranceState>"
  "ros_sensor_msgs/AssuranceState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AssuranceState)))
  "Returns string type for a message object of type 'AssuranceState"
  "ros_sensor_msgs/AssuranceState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AssuranceState>)))
  "Returns md5sum for a message object of type '<AssuranceState>"
  "1b5a45d7bfb7095220320d230d9c3c4a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AssuranceState)))
  "Returns md5sum for a message object of type 'AssuranceState"
  "1b5a45d7bfb7095220320d230d9c3c4a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AssuranceState>)))
  "Returns full string definition for message of type '<AssuranceState>"
  (cl:format cl:nil "  std_msgs/Header            header~%  LlhPositionTagged          localPosition~%  DualNodeAssuranceData[]    dualNodeData~%  SingleNodeAssuranceData    singleNodeData~%  AssuranceCheckValue[]      prnAssuranceValues~%  AssuranceLevel             assuranceLevel~%  float64                    filteredLevel~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ros_sensor_msgs/LlhPositionTagged~%## LlhPositionTagged~%~%std_msgs/Header   header~%Tags              tags~%LlhPosition       llhPosition~%================================================================================~%MSG: ros_sensor_msgs/Tags~%## Header structure for user defined data messages~%~%GpsTime        gpsTime~%SensorType     sensor~%ReceiverType   receiver   # String to specify GNSS receiver type~%KeyStatus      key~%string         sensorName~%SourceType     source~%bool           dataValid~%AssuranceLevel assuranceLevel~%================================================================================~%MSG: ros_sensor_msgs/GpsTime~%## GPS time structure~%uint32          gps_week        # Full GPS week from (0:0:00 Jan 06, 1980)~%float64         gps_seconds     # GPS seconds into week [sec]~%================================================================================~%MSG: ros_sensor_msgs/SensorType~%## Sensor Type~%~%uint8 SensorTypeUnknown = 0~%uint8 SensorTypeGps     = 1~%uint8 SensorTypeGlonass = 2~%uint8 SensorTypeGalileo = 4~%uint8 SensorTypeImu     = 8~%uint8 SensorRfRange     = 16~%uint8 SensorTypeVision  = 32~%~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/ReceiverType~%uint8 RECEIVER_TYPE_UBLOX = 0~%uint8 RECEIVER_TYPE_NOVATEL = 1~%uint8 RECEIVER_TYPE_DAGR = 2~%uint8 RECEIVER_TYPE_MICROGRAM = 3~%uint8 RECEIVER_TYPE_TRUTRAK = 4~%uint8 RECEIVER_TYPE_GSSIP = 5~%uint8 RECEIVER_TYPE_OTHER = 14~%uint8 RECEIVER_TYPE_UNKNOWN = 15~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/KeyStatus~%## KeyStatus~%~%uint8 UnauthorizedNotKeyed = 0~%uint8 AuthorizedNotKeyed   = 1~%uint8 Keyed                = 2~%~%uint8 status~%================================================================================~%MSG: ros_sensor_msgs/SourceType~%## Source of data~%~%uint8 SourceTypeUnknown  = 0~%uint8 SourceTypeReceiver = 1~%uint8 SourceTypeNetwork  = 2~%uint8 SourceTypeRinex    = 3~%uint8 SourceTypeAny      = 99~%~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/AssuranceLevel~%uint8  Normal   = 0~%uint8  Unknown  = 1~%uint8  Warning  = 2~%uint8  Attack   = 3~%~%uint8 level~%================================================================================~%MSG: ros_sensor_msgs/LlhPosition~%# # LlhPosition~%~%float64                  latitude   # [deg]~%float64                  longitude  # [deg]~%float64                  altitude   # [m]~%uint16                   horizontalAccuracy~%uint16                   verticalAccuracy~%================================================================================~%MSG: ros_sensor_msgs/DualNodeAssuranceData~%  string             remoteNodeIp~%  LlhPositionTagged  remotePosition~%  RfRangeStamped     rfRange~%  float64            nodeRange~%  AssuranceLevel     rangeCheckAssuranceLevel~%  PrnDifference[]    singleDifferences~%  uint32             basePrn~%  PrnDifference[]    doubleDifferences~%  AssuranceLevel     diffCheckAssuranceLevel~%================================================================================~%MSG: ros_sensor_msgs/RfRangeStamped~%# Range to specified object~%std_msgs/Header   header~%RfRange           range~%================================================================================~%MSG: ros_sensor_msgs/RfRange~%# Range to specified object~%float64 range~%float64 rangeRate~%float64 rangeVariance~%float64 rangeRateVariance~%uint32  timestamp~%uint32  sourceId~%uint32  destId~%uint16  rssi~%uint16  quality~%~%================================================================================~%MSG: ros_sensor_msgs/PrnDifference~%uint32   prn~%float64  difference~%================================================================================~%MSG: ros_sensor_msgs/SingleNodeAssuranceData~%PrnDifference[]  pseudoDopplerDiffs~%AssuranceLevel   pseudoDopplerDiffAssuranceLevel~%PrnDifference[]  carrierToNoiseCheckData~%AssuranceLevel   cnoCheckAssuranceLevel~%================================================================================~%MSG: ros_sensor_msgs/AssuranceCheckValue~%## An assurance check value for a given prn~%~%uint32    prn~%uint32    checkVal~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AssuranceState)))
  "Returns full string definition for message of type 'AssuranceState"
  (cl:format cl:nil "  std_msgs/Header            header~%  LlhPositionTagged          localPosition~%  DualNodeAssuranceData[]    dualNodeData~%  SingleNodeAssuranceData    singleNodeData~%  AssuranceCheckValue[]      prnAssuranceValues~%  AssuranceLevel             assuranceLevel~%  float64                    filteredLevel~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ros_sensor_msgs/LlhPositionTagged~%## LlhPositionTagged~%~%std_msgs/Header   header~%Tags              tags~%LlhPosition       llhPosition~%================================================================================~%MSG: ros_sensor_msgs/Tags~%## Header structure for user defined data messages~%~%GpsTime        gpsTime~%SensorType     sensor~%ReceiverType   receiver   # String to specify GNSS receiver type~%KeyStatus      key~%string         sensorName~%SourceType     source~%bool           dataValid~%AssuranceLevel assuranceLevel~%================================================================================~%MSG: ros_sensor_msgs/GpsTime~%## GPS time structure~%uint32          gps_week        # Full GPS week from (0:0:00 Jan 06, 1980)~%float64         gps_seconds     # GPS seconds into week [sec]~%================================================================================~%MSG: ros_sensor_msgs/SensorType~%## Sensor Type~%~%uint8 SensorTypeUnknown = 0~%uint8 SensorTypeGps     = 1~%uint8 SensorTypeGlonass = 2~%uint8 SensorTypeGalileo = 4~%uint8 SensorTypeImu     = 8~%uint8 SensorRfRange     = 16~%uint8 SensorTypeVision  = 32~%~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/ReceiverType~%uint8 RECEIVER_TYPE_UBLOX = 0~%uint8 RECEIVER_TYPE_NOVATEL = 1~%uint8 RECEIVER_TYPE_DAGR = 2~%uint8 RECEIVER_TYPE_MICROGRAM = 3~%uint8 RECEIVER_TYPE_TRUTRAK = 4~%uint8 RECEIVER_TYPE_GSSIP = 5~%uint8 RECEIVER_TYPE_OTHER = 14~%uint8 RECEIVER_TYPE_UNKNOWN = 15~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/KeyStatus~%## KeyStatus~%~%uint8 UnauthorizedNotKeyed = 0~%uint8 AuthorizedNotKeyed   = 1~%uint8 Keyed                = 2~%~%uint8 status~%================================================================================~%MSG: ros_sensor_msgs/SourceType~%## Source of data~%~%uint8 SourceTypeUnknown  = 0~%uint8 SourceTypeReceiver = 1~%uint8 SourceTypeNetwork  = 2~%uint8 SourceTypeRinex    = 3~%uint8 SourceTypeAny      = 99~%~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/AssuranceLevel~%uint8  Normal   = 0~%uint8  Unknown  = 1~%uint8  Warning  = 2~%uint8  Attack   = 3~%~%uint8 level~%================================================================================~%MSG: ros_sensor_msgs/LlhPosition~%# # LlhPosition~%~%float64                  latitude   # [deg]~%float64                  longitude  # [deg]~%float64                  altitude   # [m]~%uint16                   horizontalAccuracy~%uint16                   verticalAccuracy~%================================================================================~%MSG: ros_sensor_msgs/DualNodeAssuranceData~%  string             remoteNodeIp~%  LlhPositionTagged  remotePosition~%  RfRangeStamped     rfRange~%  float64            nodeRange~%  AssuranceLevel     rangeCheckAssuranceLevel~%  PrnDifference[]    singleDifferences~%  uint32             basePrn~%  PrnDifference[]    doubleDifferences~%  AssuranceLevel     diffCheckAssuranceLevel~%================================================================================~%MSG: ros_sensor_msgs/RfRangeStamped~%# Range to specified object~%std_msgs/Header   header~%RfRange           range~%================================================================================~%MSG: ros_sensor_msgs/RfRange~%# Range to specified object~%float64 range~%float64 rangeRate~%float64 rangeVariance~%float64 rangeRateVariance~%uint32  timestamp~%uint32  sourceId~%uint32  destId~%uint16  rssi~%uint16  quality~%~%================================================================================~%MSG: ros_sensor_msgs/PrnDifference~%uint32   prn~%float64  difference~%================================================================================~%MSG: ros_sensor_msgs/SingleNodeAssuranceData~%PrnDifference[]  pseudoDopplerDiffs~%AssuranceLevel   pseudoDopplerDiffAssuranceLevel~%PrnDifference[]  carrierToNoiseCheckData~%AssuranceLevel   cnoCheckAssuranceLevel~%================================================================================~%MSG: ros_sensor_msgs/AssuranceCheckValue~%## An assurance check value for a given prn~%~%uint32    prn~%uint32    checkVal~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AssuranceState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'localPosition))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'dualNodeData) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'singleNodeData))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'prnAssuranceValues) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'assuranceLevel))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AssuranceState>))
  "Converts a ROS message object to a list"
  (cl:list 'AssuranceState
    (cl:cons ':header (header msg))
    (cl:cons ':localPosition (localPosition msg))
    (cl:cons ':dualNodeData (dualNodeData msg))
    (cl:cons ':singleNodeData (singleNodeData msg))
    (cl:cons ':prnAssuranceValues (prnAssuranceValues msg))
    (cl:cons ':assuranceLevel (assuranceLevel msg))
    (cl:cons ':filteredLevel (filteredLevel msg))
))
