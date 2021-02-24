; Auto-generated. Do not edit!


(cl:in-package tdcp-msg)


;//! \htmlinclude TdcpDiagnostics.msg.html

(cl:defclass <TdcpDiagnostics> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (gpsTime
    :reader gpsTime
    :initarg :gpsTime
    :type ros_sensor_msgs-msg:GpsTime
    :initform (cl:make-instance 'ros_sensor_msgs-msg:GpsTime))
   (numAvailableSvs
    :reader numAvailableSvs
    :initarg :numAvailableSvs
    :type cl:fixnum
    :initform 0)
   (numPsrSolSvs
    :reader numPsrSolSvs
    :initarg :numPsrSolSvs
    :type cl:fixnum
    :initform 0)
   (numTdcpSolSvs
    :reader numTdcpSolSvs
    :initarg :numTdcpSolSvs
    :type cl:fixnum
    :initform 0)
   (spsDeltaPosition
    :reader spsDeltaPosition
    :initarg :spsDeltaPosition
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (faultCheckVariable1
    :reader faultCheckVariable1
    :initarg :faultCheckVariable1
    :type cl:float
    :initform 0.0)
   (faultCheckVariable2
    :reader faultCheckVariable2
    :initarg :faultCheckVariable2
    :type cl:float
    :initform 0.0)
   (sampleTime
    :reader sampleTime
    :initarg :sampleTime
    :type cl:float
    :initform 0.0))
)

(cl:defclass TdcpDiagnostics (<TdcpDiagnostics>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TdcpDiagnostics>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TdcpDiagnostics)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tdcp-msg:<TdcpDiagnostics> is deprecated: use tdcp-msg:TdcpDiagnostics instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TdcpDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tdcp-msg:header-val is deprecated.  Use tdcp-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'gpsTime-val :lambda-list '(m))
(cl:defmethod gpsTime-val ((m <TdcpDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tdcp-msg:gpsTime-val is deprecated.  Use tdcp-msg:gpsTime instead.")
  (gpsTime m))

(cl:ensure-generic-function 'numAvailableSvs-val :lambda-list '(m))
(cl:defmethod numAvailableSvs-val ((m <TdcpDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tdcp-msg:numAvailableSvs-val is deprecated.  Use tdcp-msg:numAvailableSvs instead.")
  (numAvailableSvs m))

(cl:ensure-generic-function 'numPsrSolSvs-val :lambda-list '(m))
(cl:defmethod numPsrSolSvs-val ((m <TdcpDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tdcp-msg:numPsrSolSvs-val is deprecated.  Use tdcp-msg:numPsrSolSvs instead.")
  (numPsrSolSvs m))

(cl:ensure-generic-function 'numTdcpSolSvs-val :lambda-list '(m))
(cl:defmethod numTdcpSolSvs-val ((m <TdcpDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tdcp-msg:numTdcpSolSvs-val is deprecated.  Use tdcp-msg:numTdcpSolSvs instead.")
  (numTdcpSolSvs m))

(cl:ensure-generic-function 'spsDeltaPosition-val :lambda-list '(m))
(cl:defmethod spsDeltaPosition-val ((m <TdcpDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tdcp-msg:spsDeltaPosition-val is deprecated.  Use tdcp-msg:spsDeltaPosition instead.")
  (spsDeltaPosition m))

(cl:ensure-generic-function 'faultCheckVariable1-val :lambda-list '(m))
(cl:defmethod faultCheckVariable1-val ((m <TdcpDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tdcp-msg:faultCheckVariable1-val is deprecated.  Use tdcp-msg:faultCheckVariable1 instead.")
  (faultCheckVariable1 m))

(cl:ensure-generic-function 'faultCheckVariable2-val :lambda-list '(m))
(cl:defmethod faultCheckVariable2-val ((m <TdcpDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tdcp-msg:faultCheckVariable2-val is deprecated.  Use tdcp-msg:faultCheckVariable2 instead.")
  (faultCheckVariable2 m))

(cl:ensure-generic-function 'sampleTime-val :lambda-list '(m))
(cl:defmethod sampleTime-val ((m <TdcpDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tdcp-msg:sampleTime-val is deprecated.  Use tdcp-msg:sampleTime instead.")
  (sampleTime m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TdcpDiagnostics>) ostream)
  "Serializes a message object of type '<TdcpDiagnostics>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gpsTime) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numAvailableSvs)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'numAvailableSvs)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numPsrSolSvs)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'numPsrSolSvs)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numTdcpSolSvs)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'numTdcpSolSvs)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'spsDeltaPosition) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'faultCheckVariable1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'faultCheckVariable2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'sampleTime))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TdcpDiagnostics>) istream)
  "Deserializes a message object of type '<TdcpDiagnostics>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gpsTime) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numAvailableSvs)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'numAvailableSvs)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numPsrSolSvs)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'numPsrSolSvs)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numTdcpSolSvs)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'numTdcpSolSvs)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'spsDeltaPosition) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'faultCheckVariable1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'faultCheckVariable2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sampleTime) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TdcpDiagnostics>)))
  "Returns string type for a message object of type '<TdcpDiagnostics>"
  "tdcp/TdcpDiagnostics")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TdcpDiagnostics)))
  "Returns string type for a message object of type 'TdcpDiagnostics"
  "tdcp/TdcpDiagnostics")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TdcpDiagnostics>)))
  "Returns md5sum for a message object of type '<TdcpDiagnostics>"
  "29abe80c51328853cd49a1acdc38a46c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TdcpDiagnostics)))
  "Returns md5sum for a message object of type 'TdcpDiagnostics"
  "29abe80c51328853cd49a1acdc38a46c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TdcpDiagnostics>)))
  "Returns full string definition for message of type '<TdcpDiagnostics>"
  (cl:format cl:nil "## TdcpDiagnostics~%~%std_msgs/Header          header~%ros_sensor_msgs/GpsTime  gpsTime~%~%uint16 numAvailableSvs~%uint16 numPsrSolSvs~%uint16 numTdcpSolSvs~%~%geometry_msgs/Vector3 spsDeltaPosition~%~%float32 faultCheckVariable1~%float32 faultCheckVariable2~%~%float32 sampleTime~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ros_sensor_msgs/GpsTime~%## GPS time structure~%uint32          gps_week        # Full GPS week from (0:0:00 Jan 06, 1980)~%float64         gps_seconds     # GPS seconds into week [sec]~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TdcpDiagnostics)))
  "Returns full string definition for message of type 'TdcpDiagnostics"
  (cl:format cl:nil "## TdcpDiagnostics~%~%std_msgs/Header          header~%ros_sensor_msgs/GpsTime  gpsTime~%~%uint16 numAvailableSvs~%uint16 numPsrSolSvs~%uint16 numTdcpSolSvs~%~%geometry_msgs/Vector3 spsDeltaPosition~%~%float32 faultCheckVariable1~%float32 faultCheckVariable2~%~%float32 sampleTime~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ros_sensor_msgs/GpsTime~%## GPS time structure~%uint32          gps_week        # Full GPS week from (0:0:00 Jan 06, 1980)~%float64         gps_seconds     # GPS seconds into week [sec]~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TdcpDiagnostics>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gpsTime))
     2
     2
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'spsDeltaPosition))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TdcpDiagnostics>))
  "Converts a ROS message object to a list"
  (cl:list 'TdcpDiagnostics
    (cl:cons ':header (header msg))
    (cl:cons ':gpsTime (gpsTime msg))
    (cl:cons ':numAvailableSvs (numAvailableSvs msg))
    (cl:cons ':numPsrSolSvs (numPsrSolSvs msg))
    (cl:cons ':numTdcpSolSvs (numTdcpSolSvs msg))
    (cl:cons ':spsDeltaPosition (spsDeltaPosition msg))
    (cl:cons ':faultCheckVariable1 (faultCheckVariable1 msg))
    (cl:cons ':faultCheckVariable2 (faultCheckVariable2 msg))
    (cl:cons ':sampleTime (sampleTime msg))
))
