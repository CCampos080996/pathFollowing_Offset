; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude FilterOutput.msg.html

(cl:defclass <FilterOutput> (roslisp-msg-protocol:ros-message)
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
   (xyzPos
    :reader xyzPos
    :initarg :xyzPos
    :type ros_sensor_msgs-msg:CartesianState
    :initform (cl:make-instance 'ros_sensor_msgs-msg:CartesianState))
   (xyzVel
    :reader xyzVel
    :initarg :xyzVel
    :type ros_sensor_msgs-msg:CartesianState
    :initform (cl:make-instance 'ros_sensor_msgs-msg:CartesianState))
   (eulerAngles
    :reader eulerAngles
    :initarg :eulerAngles
    :type ros_sensor_msgs-msg:EulerState
    :initform (cl:make-instance 'ros_sensor_msgs-msg:EulerState))
   (gyroBias
    :reader gyroBias
    :initarg :gyroBias
    :type ros_sensor_msgs-msg:EulerState
    :initform (cl:make-instance 'ros_sensor_msgs-msg:EulerState))
   (accelBias
    :reader accelBias
    :initarg :accelBias
    :type ros_sensor_msgs-msg:CartesianState
    :initform (cl:make-instance 'ros_sensor_msgs-msg:CartesianState))
   (clockBias
    :reader clockBias
    :initarg :clockBias
    :type cl:float
    :initform 0.0)
   (clockDrift
    :reader clockDrift
    :initarg :clockDrift
    :type cl:float
    :initform 0.0)
   (clockCovariance
    :reader clockCovariance
    :initarg :clockCovariance
    :type (cl:vector cl:float)
   :initform (cl:make-array 4 :element-type 'cl:float :initial-element 0.0))
   (rangeCorrection
    :reader rangeCorrection
    :initarg :rangeCorrection
    :type cl:float
    :initform 0.0))
)

(cl:defclass FilterOutput (<FilterOutput>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FilterOutput>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FilterOutput)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<FilterOutput> is deprecated: use ros_sensor_msgs-msg:FilterOutput instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <FilterOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:header-val is deprecated.  Use ros_sensor_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'tags-val :lambda-list '(m))
(cl:defmethod tags-val ((m <FilterOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:tags-val is deprecated.  Use ros_sensor_msgs-msg:tags instead.")
  (tags m))

(cl:ensure-generic-function 'xyzPos-val :lambda-list '(m))
(cl:defmethod xyzPos-val ((m <FilterOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:xyzPos-val is deprecated.  Use ros_sensor_msgs-msg:xyzPos instead.")
  (xyzPos m))

(cl:ensure-generic-function 'xyzVel-val :lambda-list '(m))
(cl:defmethod xyzVel-val ((m <FilterOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:xyzVel-val is deprecated.  Use ros_sensor_msgs-msg:xyzVel instead.")
  (xyzVel m))

(cl:ensure-generic-function 'eulerAngles-val :lambda-list '(m))
(cl:defmethod eulerAngles-val ((m <FilterOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:eulerAngles-val is deprecated.  Use ros_sensor_msgs-msg:eulerAngles instead.")
  (eulerAngles m))

(cl:ensure-generic-function 'gyroBias-val :lambda-list '(m))
(cl:defmethod gyroBias-val ((m <FilterOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:gyroBias-val is deprecated.  Use ros_sensor_msgs-msg:gyroBias instead.")
  (gyroBias m))

(cl:ensure-generic-function 'accelBias-val :lambda-list '(m))
(cl:defmethod accelBias-val ((m <FilterOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:accelBias-val is deprecated.  Use ros_sensor_msgs-msg:accelBias instead.")
  (accelBias m))

(cl:ensure-generic-function 'clockBias-val :lambda-list '(m))
(cl:defmethod clockBias-val ((m <FilterOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:clockBias-val is deprecated.  Use ros_sensor_msgs-msg:clockBias instead.")
  (clockBias m))

(cl:ensure-generic-function 'clockDrift-val :lambda-list '(m))
(cl:defmethod clockDrift-val ((m <FilterOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:clockDrift-val is deprecated.  Use ros_sensor_msgs-msg:clockDrift instead.")
  (clockDrift m))

(cl:ensure-generic-function 'clockCovariance-val :lambda-list '(m))
(cl:defmethod clockCovariance-val ((m <FilterOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:clockCovariance-val is deprecated.  Use ros_sensor_msgs-msg:clockCovariance instead.")
  (clockCovariance m))

(cl:ensure-generic-function 'rangeCorrection-val :lambda-list '(m))
(cl:defmethod rangeCorrection-val ((m <FilterOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:rangeCorrection-val is deprecated.  Use ros_sensor_msgs-msg:rangeCorrection instead.")
  (rangeCorrection m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FilterOutput>) ostream)
  "Serializes a message object of type '<FilterOutput>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'tags) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'xyzPos) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'xyzVel) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'eulerAngles) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gyroBias) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'accelBias) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'clockBias))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'clockDrift))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'clockCovariance))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rangeCorrection))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FilterOutput>) istream)
  "Deserializes a message object of type '<FilterOutput>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'tags) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'xyzPos) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'xyzVel) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'eulerAngles) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gyroBias) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'accelBias) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'clockBias) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'clockDrift) (roslisp-utils:decode-double-float-bits bits)))
  (cl:setf (cl:slot-value msg 'clockCovariance) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'clockCovariance)))
    (cl:dotimes (i 4)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rangeCorrection) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FilterOutput>)))
  "Returns string type for a message object of type '<FilterOutput>"
  "ros_sensor_msgs/FilterOutput")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FilterOutput)))
  "Returns string type for a message object of type 'FilterOutput"
  "ros_sensor_msgs/FilterOutput")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FilterOutput>)))
  "Returns md5sum for a message object of type '<FilterOutput>"
  "5695b591302f0d1858c9347aee166c94")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FilterOutput)))
  "Returns md5sum for a message object of type 'FilterOutput"
  "5695b591302f0d1858c9347aee166c94")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FilterOutput>)))
  "Returns full string definition for message of type '<FilterOutput>"
  (cl:format cl:nil "~%std_msgs/Header   header~%~%Tags              tags~%~%CartesianState    xyzPos~%CartesianState    xyzVel~%EulerState        eulerAngles~%EulerState        gyroBias~%CartesianState    accelBias~%~%float64 clockBias~%float64 clockDrift~%float64[4] clockCovariance~%~%float64 rangeCorrection~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ros_sensor_msgs/Tags~%## Header structure for user defined data messages~%~%GpsTime        gpsTime~%SensorType     sensor~%ReceiverType   receiver   # String to specify GNSS receiver type~%KeyStatus      key~%string         sensorName~%SourceType     source~%bool           dataValid~%AssuranceLevel assuranceLevel~%================================================================================~%MSG: ros_sensor_msgs/GpsTime~%## GPS time structure~%uint32          gps_week        # Full GPS week from (0:0:00 Jan 06, 1980)~%float64         gps_seconds     # GPS seconds into week [sec]~%================================================================================~%MSG: ros_sensor_msgs/SensorType~%## Sensor Type~%~%uint8 SensorTypeUnknown = 0~%uint8 SensorTypeGps     = 1~%uint8 SensorTypeGlonass = 2~%uint8 SensorTypeGalileo = 4~%uint8 SensorTypeImu     = 8~%uint8 SensorRfRange     = 16~%uint8 SensorTypeVision  = 32~%~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/ReceiverType~%uint8 RECEIVER_TYPE_UBLOX = 0~%uint8 RECEIVER_TYPE_NOVATEL = 1~%uint8 RECEIVER_TYPE_DAGR = 2~%uint8 RECEIVER_TYPE_MICROGRAM = 3~%uint8 RECEIVER_TYPE_TRUTRAK = 4~%uint8 RECEIVER_TYPE_GSSIP = 5~%uint8 RECEIVER_TYPE_OTHER = 14~%uint8 RECEIVER_TYPE_UNKNOWN = 15~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/KeyStatus~%## KeyStatus~%~%uint8 UnauthorizedNotKeyed = 0~%uint8 AuthorizedNotKeyed   = 1~%uint8 Keyed                = 2~%~%uint8 status~%================================================================================~%MSG: ros_sensor_msgs/SourceType~%## Source of data~%~%uint8 SourceTypeUnknown  = 0~%uint8 SourceTypeReceiver = 1~%uint8 SourceTypeNetwork  = 2~%uint8 SourceTypeRinex    = 3~%uint8 SourceTypeAny      = 99~%~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/AssuranceLevel~%uint8  Normal   = 0~%uint8  Unknown  = 1~%uint8  Warning  = 2~%uint8  Attack   = 3~%~%uint8 level~%================================================================================~%MSG: ros_sensor_msgs/CartesianState~%## XYZ position and associated covariance~%~%float64       x~%float64       y~%float64       z~%~%float64[9] covariance~%================================================================================~%MSG: ros_sensor_msgs/EulerState~%## XYZ velocity and associated covariance~%~%float64       roll~%float64       pitch~%float64       yaw~%~%float64[9] covariance~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FilterOutput)))
  "Returns full string definition for message of type 'FilterOutput"
  (cl:format cl:nil "~%std_msgs/Header   header~%~%Tags              tags~%~%CartesianState    xyzPos~%CartesianState    xyzVel~%EulerState        eulerAngles~%EulerState        gyroBias~%CartesianState    accelBias~%~%float64 clockBias~%float64 clockDrift~%float64[4] clockCovariance~%~%float64 rangeCorrection~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ros_sensor_msgs/Tags~%## Header structure for user defined data messages~%~%GpsTime        gpsTime~%SensorType     sensor~%ReceiverType   receiver   # String to specify GNSS receiver type~%KeyStatus      key~%string         sensorName~%SourceType     source~%bool           dataValid~%AssuranceLevel assuranceLevel~%================================================================================~%MSG: ros_sensor_msgs/GpsTime~%## GPS time structure~%uint32          gps_week        # Full GPS week from (0:0:00 Jan 06, 1980)~%float64         gps_seconds     # GPS seconds into week [sec]~%================================================================================~%MSG: ros_sensor_msgs/SensorType~%## Sensor Type~%~%uint8 SensorTypeUnknown = 0~%uint8 SensorTypeGps     = 1~%uint8 SensorTypeGlonass = 2~%uint8 SensorTypeGalileo = 4~%uint8 SensorTypeImu     = 8~%uint8 SensorRfRange     = 16~%uint8 SensorTypeVision  = 32~%~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/ReceiverType~%uint8 RECEIVER_TYPE_UBLOX = 0~%uint8 RECEIVER_TYPE_NOVATEL = 1~%uint8 RECEIVER_TYPE_DAGR = 2~%uint8 RECEIVER_TYPE_MICROGRAM = 3~%uint8 RECEIVER_TYPE_TRUTRAK = 4~%uint8 RECEIVER_TYPE_GSSIP = 5~%uint8 RECEIVER_TYPE_OTHER = 14~%uint8 RECEIVER_TYPE_UNKNOWN = 15~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/KeyStatus~%## KeyStatus~%~%uint8 UnauthorizedNotKeyed = 0~%uint8 AuthorizedNotKeyed   = 1~%uint8 Keyed                = 2~%~%uint8 status~%================================================================================~%MSG: ros_sensor_msgs/SourceType~%## Source of data~%~%uint8 SourceTypeUnknown  = 0~%uint8 SourceTypeReceiver = 1~%uint8 SourceTypeNetwork  = 2~%uint8 SourceTypeRinex    = 3~%uint8 SourceTypeAny      = 99~%~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/AssuranceLevel~%uint8  Normal   = 0~%uint8  Unknown  = 1~%uint8  Warning  = 2~%uint8  Attack   = 3~%~%uint8 level~%================================================================================~%MSG: ros_sensor_msgs/CartesianState~%## XYZ position and associated covariance~%~%float64       x~%float64       y~%float64       z~%~%float64[9] covariance~%================================================================================~%MSG: ros_sensor_msgs/EulerState~%## XYZ velocity and associated covariance~%~%float64       roll~%float64       pitch~%float64       yaw~%~%float64[9] covariance~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FilterOutput>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'tags))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'xyzPos))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'xyzVel))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'eulerAngles))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gyroBias))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'accelBias))
     8
     8
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'clockCovariance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FilterOutput>))
  "Converts a ROS message object to a list"
  (cl:list 'FilterOutput
    (cl:cons ':header (header msg))
    (cl:cons ':tags (tags msg))
    (cl:cons ':xyzPos (xyzPos msg))
    (cl:cons ':xyzVel (xyzVel msg))
    (cl:cons ':eulerAngles (eulerAngles msg))
    (cl:cons ':gyroBias (gyroBias msg))
    (cl:cons ':accelBias (accelBias msg))
    (cl:cons ':clockBias (clockBias msg))
    (cl:cons ':clockDrift (clockDrift msg))
    (cl:cons ':clockCovariance (clockCovariance msg))
    (cl:cons ':rangeCorrection (rangeCorrection msg))
))
