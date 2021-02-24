; Auto-generated. Do not edit!


(cl:in-package tdcp-msg)


;//! \htmlinclude TdcpOutput.msg.html

(cl:defclass <TdcpOutput> (roslisp-msg-protocol:ros-message)
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
   (psrSolEcef
    :reader psrSolEcef
    :initarg :psrSolEcef
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (psrSolEcefCovariance
    :reader psrSolEcefCovariance
    :initarg :psrSolEcefCovariance
    :type (cl:vector cl:float)
   :initform (cl:make-array 9 :element-type 'cl:float :initial-element 0.0))
   (rpvEcef
    :reader rpvEcef
    :initarg :rpvEcef
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (rpvEcefCovariance
    :reader rpvEcefCovariance
    :initarg :rpvEcefCovariance
    :type (cl:vector cl:float)
   :initform (cl:make-array 9 :element-type 'cl:float :initial-element 0.0))
   (rpvNorm
    :reader rpvNorm
    :initarg :rpvNorm
    :type cl:float
    :initform 0.0))
)

(cl:defclass TdcpOutput (<TdcpOutput>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TdcpOutput>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TdcpOutput)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tdcp-msg:<TdcpOutput> is deprecated: use tdcp-msg:TdcpOutput instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TdcpOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tdcp-msg:header-val is deprecated.  Use tdcp-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'gpsTime-val :lambda-list '(m))
(cl:defmethod gpsTime-val ((m <TdcpOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tdcp-msg:gpsTime-val is deprecated.  Use tdcp-msg:gpsTime instead.")
  (gpsTime m))

(cl:ensure-generic-function 'psrSolEcef-val :lambda-list '(m))
(cl:defmethod psrSolEcef-val ((m <TdcpOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tdcp-msg:psrSolEcef-val is deprecated.  Use tdcp-msg:psrSolEcef instead.")
  (psrSolEcef m))

(cl:ensure-generic-function 'psrSolEcefCovariance-val :lambda-list '(m))
(cl:defmethod psrSolEcefCovariance-val ((m <TdcpOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tdcp-msg:psrSolEcefCovariance-val is deprecated.  Use tdcp-msg:psrSolEcefCovariance instead.")
  (psrSolEcefCovariance m))

(cl:ensure-generic-function 'rpvEcef-val :lambda-list '(m))
(cl:defmethod rpvEcef-val ((m <TdcpOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tdcp-msg:rpvEcef-val is deprecated.  Use tdcp-msg:rpvEcef instead.")
  (rpvEcef m))

(cl:ensure-generic-function 'rpvEcefCovariance-val :lambda-list '(m))
(cl:defmethod rpvEcefCovariance-val ((m <TdcpOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tdcp-msg:rpvEcefCovariance-val is deprecated.  Use tdcp-msg:rpvEcefCovariance instead.")
  (rpvEcefCovariance m))

(cl:ensure-generic-function 'rpvNorm-val :lambda-list '(m))
(cl:defmethod rpvNorm-val ((m <TdcpOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tdcp-msg:rpvNorm-val is deprecated.  Use tdcp-msg:rpvNorm instead.")
  (rpvNorm m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TdcpOutput>) ostream)
  "Serializes a message object of type '<TdcpOutput>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gpsTime) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'psrSolEcef) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'psrSolEcefCovariance))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rpvEcef) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'rpvEcefCovariance))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rpvNorm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TdcpOutput>) istream)
  "Deserializes a message object of type '<TdcpOutput>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gpsTime) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'psrSolEcef) istream)
  (cl:setf (cl:slot-value msg 'psrSolEcefCovariance) (cl:make-array 9))
  (cl:let ((vals (cl:slot-value msg 'psrSolEcefCovariance)))
    (cl:dotimes (i 9)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rpvEcef) istream)
  (cl:setf (cl:slot-value msg 'rpvEcefCovariance) (cl:make-array 9))
  (cl:let ((vals (cl:slot-value msg 'rpvEcefCovariance)))
    (cl:dotimes (i 9)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rpvNorm) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TdcpOutput>)))
  "Returns string type for a message object of type '<TdcpOutput>"
  "tdcp/TdcpOutput")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TdcpOutput)))
  "Returns string type for a message object of type 'TdcpOutput"
  "tdcp/TdcpOutput")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TdcpOutput>)))
  "Returns md5sum for a message object of type '<TdcpOutput>"
  "2353195a8a8998915590d5121e0ba66f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TdcpOutput)))
  "Returns md5sum for a message object of type 'TdcpOutput"
  "2353195a8a8998915590d5121e0ba66f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TdcpOutput>)))
  "Returns full string definition for message of type '<TdcpOutput>"
  (cl:format cl:nil "## TdcpOutput~%~%std_msgs/Header          header~%ros_sensor_msgs/GpsTime  gpsTime~%geometry_msgs/Vector3    psrSolEcef~%float32[9]               psrSolEcefCovariance~%geometry_msgs/Vector3    rpvEcef~%float32[9]               rpvEcefCovariance~%float32                  rpvNorm~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ros_sensor_msgs/GpsTime~%## GPS time structure~%uint32          gps_week        # Full GPS week from (0:0:00 Jan 06, 1980)~%float64         gps_seconds     # GPS seconds into week [sec]~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TdcpOutput)))
  "Returns full string definition for message of type 'TdcpOutput"
  (cl:format cl:nil "## TdcpOutput~%~%std_msgs/Header          header~%ros_sensor_msgs/GpsTime  gpsTime~%geometry_msgs/Vector3    psrSolEcef~%float32[9]               psrSolEcefCovariance~%geometry_msgs/Vector3    rpvEcef~%float32[9]               rpvEcefCovariance~%float32                  rpvNorm~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ros_sensor_msgs/GpsTime~%## GPS time structure~%uint32          gps_week        # Full GPS week from (0:0:00 Jan 06, 1980)~%float64         gps_seconds     # GPS seconds into week [sec]~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TdcpOutput>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gpsTime))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'psrSolEcef))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'psrSolEcefCovariance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rpvEcef))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'rpvEcefCovariance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TdcpOutput>))
  "Converts a ROS message object to a list"
  (cl:list 'TdcpOutput
    (cl:cons ':header (header msg))
    (cl:cons ':gpsTime (gpsTime msg))
    (cl:cons ':psrSolEcef (psrSolEcef msg))
    (cl:cons ':psrSolEcefCovariance (psrSolEcefCovariance msg))
    (cl:cons ':rpvEcef (rpvEcef msg))
    (cl:cons ':rpvEcefCovariance (rpvEcefCovariance msg))
    (cl:cons ':rpvNorm (rpvNorm msg))
))
