; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude AtmosphericCorrectionTagged.msg.html

(cl:defclass <AtmosphericCorrectionTagged> (roslisp-msg-protocol:ros-message)
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
   (corrections
    :reader corrections
    :initarg :corrections
    :type (cl:vector ros_sensor_msgs-msg:AtmosphericCorrection)
   :initform (cl:make-array 0 :element-type 'ros_sensor_msgs-msg:AtmosphericCorrection :initial-element (cl:make-instance 'ros_sensor_msgs-msg:AtmosphericCorrection))))
)

(cl:defclass AtmosphericCorrectionTagged (<AtmosphericCorrectionTagged>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AtmosphericCorrectionTagged>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AtmosphericCorrectionTagged)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<AtmosphericCorrectionTagged> is deprecated: use ros_sensor_msgs-msg:AtmosphericCorrectionTagged instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <AtmosphericCorrectionTagged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:header-val is deprecated.  Use ros_sensor_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'tags-val :lambda-list '(m))
(cl:defmethod tags-val ((m <AtmosphericCorrectionTagged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:tags-val is deprecated.  Use ros_sensor_msgs-msg:tags instead.")
  (tags m))

(cl:ensure-generic-function 'corrections-val :lambda-list '(m))
(cl:defmethod corrections-val ((m <AtmosphericCorrectionTagged>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:corrections-val is deprecated.  Use ros_sensor_msgs-msg:corrections instead.")
  (corrections m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AtmosphericCorrectionTagged>) ostream)
  "Serializes a message object of type '<AtmosphericCorrectionTagged>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'tags) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'corrections))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'corrections))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AtmosphericCorrectionTagged>) istream)
  "Deserializes a message object of type '<AtmosphericCorrectionTagged>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'tags) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'corrections) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'corrections)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_sensor_msgs-msg:AtmosphericCorrection))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AtmosphericCorrectionTagged>)))
  "Returns string type for a message object of type '<AtmosphericCorrectionTagged>"
  "ros_sensor_msgs/AtmosphericCorrectionTagged")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AtmosphericCorrectionTagged)))
  "Returns string type for a message object of type 'AtmosphericCorrectionTagged"
  "ros_sensor_msgs/AtmosphericCorrectionTagged")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AtmosphericCorrectionTagged>)))
  "Returns md5sum for a message object of type '<AtmosphericCorrectionTagged>"
  "c4cbb8962ede7e719304cc228b702e29")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AtmosphericCorrectionTagged)))
  "Returns md5sum for a message object of type 'AtmosphericCorrectionTagged"
  "c4cbb8962ede7e719304cc228b702e29")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AtmosphericCorrectionTagged>)))
  "Returns full string definition for message of type '<AtmosphericCorrectionTagged>"
  (cl:format cl:nil "## Atmospheric correction with header~%~%std_msgs/Header header~%Tags            tags~%AtmosphericCorrection[] corrections~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ros_sensor_msgs/Tags~%## Header structure for user defined data messages~%~%GpsTime        gpsTime~%SensorType     sensor~%ReceiverType   receiver   # String to specify GNSS receiver type~%KeyStatus      key~%string         sensorName~%SourceType     source~%bool           dataValid~%AssuranceLevel assuranceLevel~%================================================================================~%MSG: ros_sensor_msgs/GpsTime~%## GPS time structure~%uint32          gps_week        # Full GPS week from (0:0:00 Jan 06, 1980)~%float64         gps_seconds     # GPS seconds into week [sec]~%================================================================================~%MSG: ros_sensor_msgs/SensorType~%## Sensor Type~%~%uint8 SensorTypeUnknown = 0~%uint8 SensorTypeGps     = 1~%uint8 SensorTypeGlonass = 2~%uint8 SensorTypeGalileo = 4~%uint8 SensorTypeImu     = 8~%uint8 SensorRfRange     = 16~%uint8 SensorTypeVision  = 32~%~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/ReceiverType~%uint8 RECEIVER_TYPE_UBLOX = 0~%uint8 RECEIVER_TYPE_NOVATEL = 1~%uint8 RECEIVER_TYPE_DAGR = 2~%uint8 RECEIVER_TYPE_MICROGRAM = 3~%uint8 RECEIVER_TYPE_TRUTRAK = 4~%uint8 RECEIVER_TYPE_GSSIP = 5~%uint8 RECEIVER_TYPE_OTHER = 14~%uint8 RECEIVER_TYPE_UNKNOWN = 15~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/KeyStatus~%## KeyStatus~%~%uint8 UnauthorizedNotKeyed = 0~%uint8 AuthorizedNotKeyed   = 1~%uint8 Keyed                = 2~%~%uint8 status~%================================================================================~%MSG: ros_sensor_msgs/SourceType~%## Source of data~%~%uint8 SourceTypeUnknown  = 0~%uint8 SourceTypeReceiver = 1~%uint8 SourceTypeNetwork  = 2~%uint8 SourceTypeRinex    = 3~%uint8 SourceTypeAny      = 99~%~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/AssuranceLevel~%uint8  Normal   = 0~%uint8  Unknown  = 1~%uint8  Warning  = 2~%uint8  Attack   = 3~%~%uint8 level~%================================================================================~%MSG: ros_sensor_msgs/AtmosphericCorrection~%## The GPS atmospheric correction ~%~%uint16  prn                    # GPS [1-32], GLONASS may be negative~%float64 ionosphereCorrectionL1 # Pseudorange ionosphere correction (carrier correction has opposite sign) [m]~%float64 ionosphereCorrectionL2 # Pseudorange ionosphere correction (carrier correction has opposite sign) [m]~%float64 troposphereCorrection  # Troposphere correction [m]~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AtmosphericCorrectionTagged)))
  "Returns full string definition for message of type 'AtmosphericCorrectionTagged"
  (cl:format cl:nil "## Atmospheric correction with header~%~%std_msgs/Header header~%Tags            tags~%AtmosphericCorrection[] corrections~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ros_sensor_msgs/Tags~%## Header structure for user defined data messages~%~%GpsTime        gpsTime~%SensorType     sensor~%ReceiverType   receiver   # String to specify GNSS receiver type~%KeyStatus      key~%string         sensorName~%SourceType     source~%bool           dataValid~%AssuranceLevel assuranceLevel~%================================================================================~%MSG: ros_sensor_msgs/GpsTime~%## GPS time structure~%uint32          gps_week        # Full GPS week from (0:0:00 Jan 06, 1980)~%float64         gps_seconds     # GPS seconds into week [sec]~%================================================================================~%MSG: ros_sensor_msgs/SensorType~%## Sensor Type~%~%uint8 SensorTypeUnknown = 0~%uint8 SensorTypeGps     = 1~%uint8 SensorTypeGlonass = 2~%uint8 SensorTypeGalileo = 4~%uint8 SensorTypeImu     = 8~%uint8 SensorRfRange     = 16~%uint8 SensorTypeVision  = 32~%~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/ReceiverType~%uint8 RECEIVER_TYPE_UBLOX = 0~%uint8 RECEIVER_TYPE_NOVATEL = 1~%uint8 RECEIVER_TYPE_DAGR = 2~%uint8 RECEIVER_TYPE_MICROGRAM = 3~%uint8 RECEIVER_TYPE_TRUTRAK = 4~%uint8 RECEIVER_TYPE_GSSIP = 5~%uint8 RECEIVER_TYPE_OTHER = 14~%uint8 RECEIVER_TYPE_UNKNOWN = 15~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/KeyStatus~%## KeyStatus~%~%uint8 UnauthorizedNotKeyed = 0~%uint8 AuthorizedNotKeyed   = 1~%uint8 Keyed                = 2~%~%uint8 status~%================================================================================~%MSG: ros_sensor_msgs/SourceType~%## Source of data~%~%uint8 SourceTypeUnknown  = 0~%uint8 SourceTypeReceiver = 1~%uint8 SourceTypeNetwork  = 2~%uint8 SourceTypeRinex    = 3~%uint8 SourceTypeAny      = 99~%~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/AssuranceLevel~%uint8  Normal   = 0~%uint8  Unknown  = 1~%uint8  Warning  = 2~%uint8  Attack   = 3~%~%uint8 level~%================================================================================~%MSG: ros_sensor_msgs/AtmosphericCorrection~%## The GPS atmospheric correction ~%~%uint16  prn                    # GPS [1-32], GLONASS may be negative~%float64 ionosphereCorrectionL1 # Pseudorange ionosphere correction (carrier correction has opposite sign) [m]~%float64 ionosphereCorrectionL2 # Pseudorange ionosphere correction (carrier correction has opposite sign) [m]~%float64 troposphereCorrection  # Troposphere correction [m]~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AtmosphericCorrectionTagged>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'tags))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'corrections) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AtmosphericCorrectionTagged>))
  "Converts a ROS message object to a list"
  (cl:list 'AtmosphericCorrectionTagged
    (cl:cons ':header (header msg))
    (cl:cons ':tags (tags msg))
    (cl:cons ':corrections (corrections msg))
))
