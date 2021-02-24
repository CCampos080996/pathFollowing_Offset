; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude ChannelStatusTagged.msg.html

(cl:defclass <ChannelStatusTagged> (roslisp-msg-protocol:ros-message)
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
   (statuses
    :reader statuses
    :initarg :statuses
    :type (cl:vector ros_sensor_msgs-msg:ChannelStatus)
   :initform (cl:make-array 0 :element-type 'ros_sensor_msgs-msg:ChannelStatus :initial-element (cl:make-instance 'ros_sensor_msgs-msg:ChannelStatus))))
)

(cl:defclass ChannelStatusTagged (<ChannelStatusTagged>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChannelStatusTagged>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChannelStatusTagged)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<ChannelStatusTagged> is deprecated: use ros_sensor_msgs-msg:ChannelStatusTagged instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ChannelStatusTagged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:header-val is deprecated.  Use ros_sensor_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'tags-val :lambda-list '(m))
(cl:defmethod tags-val ((m <ChannelStatusTagged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:tags-val is deprecated.  Use ros_sensor_msgs-msg:tags instead.")
  (tags m))

(cl:ensure-generic-function 'statuses-val :lambda-list '(m))
(cl:defmethod statuses-val ((m <ChannelStatusTagged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:statuses-val is deprecated.  Use ros_sensor_msgs-msg:statuses instead.")
  (statuses m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChannelStatusTagged>) ostream)
  "Serializes a message object of type '<ChannelStatusTagged>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'tags) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'statuses))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'statuses))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChannelStatusTagged>) istream)
  "Deserializes a message object of type '<ChannelStatusTagged>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'tags) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'statuses) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'statuses)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_sensor_msgs-msg:ChannelStatus))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChannelStatusTagged>)))
  "Returns string type for a message object of type '<ChannelStatusTagged>"
  "ros_sensor_msgs/ChannelStatusTagged")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChannelStatusTagged)))
  "Returns string type for a message object of type 'ChannelStatusTagged"
  "ros_sensor_msgs/ChannelStatusTagged")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChannelStatusTagged>)))
  "Returns md5sum for a message object of type '<ChannelStatusTagged>"
  "3dc859a31141b6210ae035a86d43ca23")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChannelStatusTagged)))
  "Returns md5sum for a message object of type 'ChannelStatusTagged"
  "3dc859a31141b6210ae035a86d43ca23")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChannelStatusTagged>)))
  "Returns full string definition for message of type '<ChannelStatusTagged>"
  (cl:format cl:nil "## ChannelStatusTagged~%~%std_msgs/Header   header~%Tags              tags~%ChannelStatus[]   statuses~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ros_sensor_msgs/Tags~%## Header structure for user defined data messages~%~%GpsTime        gpsTime~%SensorType     sensor~%ReceiverType   receiver   # String to specify GNSS receiver type~%KeyStatus      key~%string         sensorName~%SourceType     source~%bool           dataValid~%AssuranceLevel assuranceLevel~%================================================================================~%MSG: ros_sensor_msgs/GpsTime~%## GPS time structure~%uint32          gps_week        # Full GPS week from (0:0:00 Jan 06, 1980)~%float64         gps_seconds     # GPS seconds into week [sec]~%================================================================================~%MSG: ros_sensor_msgs/SensorType~%## Sensor Type~%~%uint8 SensorTypeUnknown = 0~%uint8 SensorTypeGps     = 1~%uint8 SensorTypeGlonass = 2~%uint8 SensorTypeGalileo = 4~%uint8 SensorTypeImu     = 8~%uint8 SensorRfRange     = 16~%uint8 SensorTypeVision  = 32~%~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/ReceiverType~%uint8 RECEIVER_TYPE_UBLOX = 0~%uint8 RECEIVER_TYPE_NOVATEL = 1~%uint8 RECEIVER_TYPE_DAGR = 2~%uint8 RECEIVER_TYPE_MICROGRAM = 3~%uint8 RECEIVER_TYPE_TRUTRAK = 4~%uint8 RECEIVER_TYPE_GSSIP = 5~%uint8 RECEIVER_TYPE_OTHER = 14~%uint8 RECEIVER_TYPE_UNKNOWN = 15~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/KeyStatus~%## KeyStatus~%~%uint8 UnauthorizedNotKeyed = 0~%uint8 AuthorizedNotKeyed   = 1~%uint8 Keyed                = 2~%~%uint8 status~%================================================================================~%MSG: ros_sensor_msgs/SourceType~%## Source of data~%~%uint8 SourceTypeUnknown  = 0~%uint8 SourceTypeReceiver = 1~%uint8 SourceTypeNetwork  = 2~%uint8 SourceTypeRinex    = 3~%uint8 SourceTypeAny      = 99~%~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/AssuranceLevel~%uint8  Normal   = 0~%uint8  Unknown  = 1~%uint8  Warning  = 2~%uint8  Attack   = 3~%~%uint8 level~%================================================================================~%MSG: ros_sensor_msgs/ChannelStatus~%###Channel Status~%~%uint32         prn~%uint32         receiverChannel~%uint32         carrierToNoise   # db-Hz~%float32        azimuth~%float32        elevation~%TrackingStatus tracking~%CodeType       code~%FrequencyType  frequency~%bool           usedInSolution~%================================================================================~%MSG: ros_sensor_msgs/TrackingStatus~%## Tracking Status~%~%uint8 Idle                        = 0~%uint8 SearchingCa                 = 1~%uint8 SearchingPy                 = 2~%uint8 CodeLock                    = 3~%uint8 CarrierLock                 = 4~%uint8 CarrierTrackDataCollect     = 5~%uint8 SequentialResynchronization = 6~%uint8 Reacquisition               = 7~%uint8 Unusable                    = 8~%~%uint8 status~%================================================================================~%MSG: ros_sensor_msgs/CodeType~%## Code Type~%~%uint8 CodeTypeUnknown         = 0~%uint8 CodeTypeGpsCa           = 1~%uint8 CodeTypeGpsP            = 2~%uint8 CodeTypeGpsPCodeless    = 3~%uint8 CodeTypeGpsY            = 4~%uint8 CodeTypeGpsC            = 5~%uint8 CodeTypeGpsCCodeless    = 6~%uint8 CodeTypeGpsM            = 8~%uint8 CodeTypeGpsMPrime       = 9~%~%uint8 CodeTypeGlonass  = 16~%uint8 CodeTypeGalileo  = 32~%~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/FrequencyType~%## Frequency Type~%~%uint8 FrequencyTypeUnknown      = 0~%uint8 FrequencyTypeL1           = 1~%uint8 FrequencyTypeL2           = 2~%uint8 FrequencyTypeL5           = 3~%uint8 FrequencyTypeGalileoE1    = 4~%uint8 FrequencyTypeGalileoE5    = 5~%uint8 FrequencyTypeGalileoE6    = 6~%uint8 FrequencyTypeGalileoC     = 7~%uint8 FrequencyTypeGlonassL1F   = 8~%uint8 FrequencyTypeGlonassL2F   = 9~%uint8 FrequencyTypeGlonassL1C   = 10~%uint8 FrequencyTypeGlonassL2C   = 11~%uint8 FrequencyTypeGlonassL3C   = 12~%~%uint8 type~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChannelStatusTagged)))
  "Returns full string definition for message of type 'ChannelStatusTagged"
  (cl:format cl:nil "## ChannelStatusTagged~%~%std_msgs/Header   header~%Tags              tags~%ChannelStatus[]   statuses~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ros_sensor_msgs/Tags~%## Header structure for user defined data messages~%~%GpsTime        gpsTime~%SensorType     sensor~%ReceiverType   receiver   # String to specify GNSS receiver type~%KeyStatus      key~%string         sensorName~%SourceType     source~%bool           dataValid~%AssuranceLevel assuranceLevel~%================================================================================~%MSG: ros_sensor_msgs/GpsTime~%## GPS time structure~%uint32          gps_week        # Full GPS week from (0:0:00 Jan 06, 1980)~%float64         gps_seconds     # GPS seconds into week [sec]~%================================================================================~%MSG: ros_sensor_msgs/SensorType~%## Sensor Type~%~%uint8 SensorTypeUnknown = 0~%uint8 SensorTypeGps     = 1~%uint8 SensorTypeGlonass = 2~%uint8 SensorTypeGalileo = 4~%uint8 SensorTypeImu     = 8~%uint8 SensorRfRange     = 16~%uint8 SensorTypeVision  = 32~%~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/ReceiverType~%uint8 RECEIVER_TYPE_UBLOX = 0~%uint8 RECEIVER_TYPE_NOVATEL = 1~%uint8 RECEIVER_TYPE_DAGR = 2~%uint8 RECEIVER_TYPE_MICROGRAM = 3~%uint8 RECEIVER_TYPE_TRUTRAK = 4~%uint8 RECEIVER_TYPE_GSSIP = 5~%uint8 RECEIVER_TYPE_OTHER = 14~%uint8 RECEIVER_TYPE_UNKNOWN = 15~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/KeyStatus~%## KeyStatus~%~%uint8 UnauthorizedNotKeyed = 0~%uint8 AuthorizedNotKeyed   = 1~%uint8 Keyed                = 2~%~%uint8 status~%================================================================================~%MSG: ros_sensor_msgs/SourceType~%## Source of data~%~%uint8 SourceTypeUnknown  = 0~%uint8 SourceTypeReceiver = 1~%uint8 SourceTypeNetwork  = 2~%uint8 SourceTypeRinex    = 3~%uint8 SourceTypeAny      = 99~%~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/AssuranceLevel~%uint8  Normal   = 0~%uint8  Unknown  = 1~%uint8  Warning  = 2~%uint8  Attack   = 3~%~%uint8 level~%================================================================================~%MSG: ros_sensor_msgs/ChannelStatus~%###Channel Status~%~%uint32         prn~%uint32         receiverChannel~%uint32         carrierToNoise   # db-Hz~%float32        azimuth~%float32        elevation~%TrackingStatus tracking~%CodeType       code~%FrequencyType  frequency~%bool           usedInSolution~%================================================================================~%MSG: ros_sensor_msgs/TrackingStatus~%## Tracking Status~%~%uint8 Idle                        = 0~%uint8 SearchingCa                 = 1~%uint8 SearchingPy                 = 2~%uint8 CodeLock                    = 3~%uint8 CarrierLock                 = 4~%uint8 CarrierTrackDataCollect     = 5~%uint8 SequentialResynchronization = 6~%uint8 Reacquisition               = 7~%uint8 Unusable                    = 8~%~%uint8 status~%================================================================================~%MSG: ros_sensor_msgs/CodeType~%## Code Type~%~%uint8 CodeTypeUnknown         = 0~%uint8 CodeTypeGpsCa           = 1~%uint8 CodeTypeGpsP            = 2~%uint8 CodeTypeGpsPCodeless    = 3~%uint8 CodeTypeGpsY            = 4~%uint8 CodeTypeGpsC            = 5~%uint8 CodeTypeGpsCCodeless    = 6~%uint8 CodeTypeGpsM            = 8~%uint8 CodeTypeGpsMPrime       = 9~%~%uint8 CodeTypeGlonass  = 16~%uint8 CodeTypeGalileo  = 32~%~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/FrequencyType~%## Frequency Type~%~%uint8 FrequencyTypeUnknown      = 0~%uint8 FrequencyTypeL1           = 1~%uint8 FrequencyTypeL2           = 2~%uint8 FrequencyTypeL5           = 3~%uint8 FrequencyTypeGalileoE1    = 4~%uint8 FrequencyTypeGalileoE5    = 5~%uint8 FrequencyTypeGalileoE6    = 6~%uint8 FrequencyTypeGalileoC     = 7~%uint8 FrequencyTypeGlonassL1F   = 8~%uint8 FrequencyTypeGlonassL2F   = 9~%uint8 FrequencyTypeGlonassL1C   = 10~%uint8 FrequencyTypeGlonassL2C   = 11~%uint8 FrequencyTypeGlonassL3C   = 12~%~%uint8 type~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChannelStatusTagged>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'tags))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'statuses) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChannelStatusTagged>))
  "Converts a ROS message object to a list"
  (cl:list 'ChannelStatusTagged
    (cl:cons ':header (header msg))
    (cl:cons ':tags (tags msg))
    (cl:cons ':statuses (statuses msg))
))
