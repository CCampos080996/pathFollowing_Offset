; Auto-generated. Do not edit!


(cl:in-package drtk-msg)


;//! \htmlinclude DrtkOutput.msg.html

(cl:defclass <DrtkOutput> (roslisp-msg-protocol:ros-message)
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
   (localPositionEcef
    :reader localPositionEcef
    :initarg :localPositionEcef
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (rpvEcef
    :reader rpvEcef
    :initarg :rpvEcef
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (rpvFixedInteger
    :reader rpvFixedInteger
    :initarg :rpvFixedInteger
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (rpvFloatInteger
    :reader rpvFloatInteger
    :initarg :rpvFloatInteger
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (rpvDifferentialPseudorange
    :reader rpvDifferentialPseudorange
    :initarg :rpvDifferentialPseudorange
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (rpvPositionDifference
    :reader rpvPositionDifference
    :initarg :rpvPositionDifference
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (rpvEcefCovariance
    :reader rpvEcefCovariance
    :initarg :rpvEcefCovariance
    :type (cl:vector cl:float)
   :initform (cl:make-array 9 :element-type 'cl:float :initial-element 0.0))
   (rpvFixedIntegerCov
    :reader rpvFixedIntegerCov
    :initarg :rpvFixedIntegerCov
    :type (cl:vector cl:float)
   :initform (cl:make-array 9 :element-type 'cl:float :initial-element 0.0))
   (rpvFloatIntegerCov
    :reader rpvFloatIntegerCov
    :initarg :rpvFloatIntegerCov
    :type (cl:vector cl:float)
   :initform (cl:make-array 9 :element-type 'cl:float :initial-element 0.0))
   (rpvDifferentialPseudorangeCov
    :reader rpvDifferentialPseudorangeCov
    :initarg :rpvDifferentialPseudorangeCov
    :type (cl:vector cl:float)
   :initform (cl:make-array 9 :element-type 'cl:float :initial-element 0.0))
   (rpvNorm
    :reader rpvNorm
    :initarg :rpvNorm
    :type cl:float
    :initform 0.0)
   (rpvFixedIntegerNorm
    :reader rpvFixedIntegerNorm
    :initarg :rpvFixedIntegerNorm
    :type cl:float
    :initform 0.0)
   (rpvFloatIntegerNorm
    :reader rpvFloatIntegerNorm
    :initarg :rpvFloatIntegerNorm
    :type cl:float
    :initform 0.0)
   (rpvDifferentialPseudorangeNorm
    :reader rpvDifferentialPseudorangeNorm
    :initarg :rpvDifferentialPseudorangeNorm
    :type cl:float
    :initform 0.0)
   (rpvPositionDifferenceNorm
    :reader rpvPositionDifferenceNorm
    :initarg :rpvPositionDifferenceNorm
    :type cl:float
    :initform 0.0)
   (outputState
    :reader outputState
    :initarg :outputState
    :type drtk-msg:DrtkOutputState
    :initform (cl:make-instance 'drtk-msg:DrtkOutputState)))
)

(cl:defclass DrtkOutput (<DrtkOutput>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DrtkOutput>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DrtkOutput)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name drtk-msg:<DrtkOutput> is deprecated: use drtk-msg:DrtkOutput instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DrtkOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drtk-msg:header-val is deprecated.  Use drtk-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'gpsTime-val :lambda-list '(m))
(cl:defmethod gpsTime-val ((m <DrtkOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drtk-msg:gpsTime-val is deprecated.  Use drtk-msg:gpsTime instead.")
  (gpsTime m))

(cl:ensure-generic-function 'localPositionEcef-val :lambda-list '(m))
(cl:defmethod localPositionEcef-val ((m <DrtkOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drtk-msg:localPositionEcef-val is deprecated.  Use drtk-msg:localPositionEcef instead.")
  (localPositionEcef m))

(cl:ensure-generic-function 'rpvEcef-val :lambda-list '(m))
(cl:defmethod rpvEcef-val ((m <DrtkOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drtk-msg:rpvEcef-val is deprecated.  Use drtk-msg:rpvEcef instead.")
  (rpvEcef m))

(cl:ensure-generic-function 'rpvFixedInteger-val :lambda-list '(m))
(cl:defmethod rpvFixedInteger-val ((m <DrtkOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drtk-msg:rpvFixedInteger-val is deprecated.  Use drtk-msg:rpvFixedInteger instead.")
  (rpvFixedInteger m))

(cl:ensure-generic-function 'rpvFloatInteger-val :lambda-list '(m))
(cl:defmethod rpvFloatInteger-val ((m <DrtkOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drtk-msg:rpvFloatInteger-val is deprecated.  Use drtk-msg:rpvFloatInteger instead.")
  (rpvFloatInteger m))

(cl:ensure-generic-function 'rpvDifferentialPseudorange-val :lambda-list '(m))
(cl:defmethod rpvDifferentialPseudorange-val ((m <DrtkOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drtk-msg:rpvDifferentialPseudorange-val is deprecated.  Use drtk-msg:rpvDifferentialPseudorange instead.")
  (rpvDifferentialPseudorange m))

(cl:ensure-generic-function 'rpvPositionDifference-val :lambda-list '(m))
(cl:defmethod rpvPositionDifference-val ((m <DrtkOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drtk-msg:rpvPositionDifference-val is deprecated.  Use drtk-msg:rpvPositionDifference instead.")
  (rpvPositionDifference m))

(cl:ensure-generic-function 'rpvEcefCovariance-val :lambda-list '(m))
(cl:defmethod rpvEcefCovariance-val ((m <DrtkOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drtk-msg:rpvEcefCovariance-val is deprecated.  Use drtk-msg:rpvEcefCovariance instead.")
  (rpvEcefCovariance m))

(cl:ensure-generic-function 'rpvFixedIntegerCov-val :lambda-list '(m))
(cl:defmethod rpvFixedIntegerCov-val ((m <DrtkOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drtk-msg:rpvFixedIntegerCov-val is deprecated.  Use drtk-msg:rpvFixedIntegerCov instead.")
  (rpvFixedIntegerCov m))

(cl:ensure-generic-function 'rpvFloatIntegerCov-val :lambda-list '(m))
(cl:defmethod rpvFloatIntegerCov-val ((m <DrtkOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drtk-msg:rpvFloatIntegerCov-val is deprecated.  Use drtk-msg:rpvFloatIntegerCov instead.")
  (rpvFloatIntegerCov m))

(cl:ensure-generic-function 'rpvDifferentialPseudorangeCov-val :lambda-list '(m))
(cl:defmethod rpvDifferentialPseudorangeCov-val ((m <DrtkOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drtk-msg:rpvDifferentialPseudorangeCov-val is deprecated.  Use drtk-msg:rpvDifferentialPseudorangeCov instead.")
  (rpvDifferentialPseudorangeCov m))

(cl:ensure-generic-function 'rpvNorm-val :lambda-list '(m))
(cl:defmethod rpvNorm-val ((m <DrtkOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drtk-msg:rpvNorm-val is deprecated.  Use drtk-msg:rpvNorm instead.")
  (rpvNorm m))

(cl:ensure-generic-function 'rpvFixedIntegerNorm-val :lambda-list '(m))
(cl:defmethod rpvFixedIntegerNorm-val ((m <DrtkOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drtk-msg:rpvFixedIntegerNorm-val is deprecated.  Use drtk-msg:rpvFixedIntegerNorm instead.")
  (rpvFixedIntegerNorm m))

(cl:ensure-generic-function 'rpvFloatIntegerNorm-val :lambda-list '(m))
(cl:defmethod rpvFloatIntegerNorm-val ((m <DrtkOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drtk-msg:rpvFloatIntegerNorm-val is deprecated.  Use drtk-msg:rpvFloatIntegerNorm instead.")
  (rpvFloatIntegerNorm m))

(cl:ensure-generic-function 'rpvDifferentialPseudorangeNorm-val :lambda-list '(m))
(cl:defmethod rpvDifferentialPseudorangeNorm-val ((m <DrtkOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drtk-msg:rpvDifferentialPseudorangeNorm-val is deprecated.  Use drtk-msg:rpvDifferentialPseudorangeNorm instead.")
  (rpvDifferentialPseudorangeNorm m))

(cl:ensure-generic-function 'rpvPositionDifferenceNorm-val :lambda-list '(m))
(cl:defmethod rpvPositionDifferenceNorm-val ((m <DrtkOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drtk-msg:rpvPositionDifferenceNorm-val is deprecated.  Use drtk-msg:rpvPositionDifferenceNorm instead.")
  (rpvPositionDifferenceNorm m))

(cl:ensure-generic-function 'outputState-val :lambda-list '(m))
(cl:defmethod outputState-val ((m <DrtkOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drtk-msg:outputState-val is deprecated.  Use drtk-msg:outputState instead.")
  (outputState m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DrtkOutput>) ostream)
  "Serializes a message object of type '<DrtkOutput>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gpsTime) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'localPositionEcef) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rpvEcef) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rpvFixedInteger) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rpvFloatInteger) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rpvDifferentialPseudorange) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rpvPositionDifference) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'rpvEcefCovariance))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'rpvFixedIntegerCov))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'rpvFloatIntegerCov))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'rpvDifferentialPseudorangeCov))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rpvNorm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rpvFixedIntegerNorm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rpvFloatIntegerNorm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rpvDifferentialPseudorangeNorm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rpvPositionDifferenceNorm))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'outputState) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DrtkOutput>) istream)
  "Deserializes a message object of type '<DrtkOutput>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gpsTime) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'localPositionEcef) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rpvEcef) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rpvFixedInteger) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rpvFloatInteger) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rpvDifferentialPseudorange) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rpvPositionDifference) istream)
  (cl:setf (cl:slot-value msg 'rpvEcefCovariance) (cl:make-array 9))
  (cl:let ((vals (cl:slot-value msg 'rpvEcefCovariance)))
    (cl:dotimes (i 9)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'rpvFixedIntegerCov) (cl:make-array 9))
  (cl:let ((vals (cl:slot-value msg 'rpvFixedIntegerCov)))
    (cl:dotimes (i 9)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'rpvFloatIntegerCov) (cl:make-array 9))
  (cl:let ((vals (cl:slot-value msg 'rpvFloatIntegerCov)))
    (cl:dotimes (i 9)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'rpvDifferentialPseudorangeCov) (cl:make-array 9))
  (cl:let ((vals (cl:slot-value msg 'rpvDifferentialPseudorangeCov)))
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rpvFixedIntegerNorm) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rpvFloatIntegerNorm) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rpvDifferentialPseudorangeNorm) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rpvPositionDifferenceNorm) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'outputState) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DrtkOutput>)))
  "Returns string type for a message object of type '<DrtkOutput>"
  "drtk/DrtkOutput")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DrtkOutput)))
  "Returns string type for a message object of type 'DrtkOutput"
  "drtk/DrtkOutput")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DrtkOutput>)))
  "Returns md5sum for a message object of type '<DrtkOutput>"
  "534ac48f552f8772bee2064b837fb96a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DrtkOutput)))
  "Returns md5sum for a message object of type 'DrtkOutput"
  "534ac48f552f8772bee2064b837fb96a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DrtkOutput>)))
  "Returns full string definition for message of type '<DrtkOutput>"
  (cl:format cl:nil "## DrtkOutput~%~%std_msgs/Header   header~%ros_sensor_msgs/GpsTime  gpsTime~%~%geometry_msgs/Point      localPositionEcef~%~%geometry_msgs/Vector3    rpvEcef~%geometry_msgs/Vector3    rpvFixedInteger~%geometry_msgs/Vector3    rpvFloatInteger~%geometry_msgs/Vector3    rpvDifferentialPseudorange~%geometry_msgs/Vector3    rpvPositionDifference~%~%float32[9]               rpvEcefCovariance~%float32[9]               rpvFixedIntegerCov~%float32[9]               rpvFloatIntegerCov~%float32[9]               rpvDifferentialPseudorangeCov~%~%float32                  rpvNorm~%float32                  rpvFixedIntegerNorm~%float32                  rpvFloatIntegerNorm~%float32                  rpvDifferentialPseudorangeNorm~%float32                  rpvPositionDifferenceNorm~%~%DrtkOutputState          outputState~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ros_sensor_msgs/GpsTime~%## GPS time structure~%uint32          gps_week        # Full GPS week from (0:0:00 Jan 06, 1980)~%float64         gps_seconds     # GPS seconds into week [sec]~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: drtk/DrtkOutputState~%# DrtkOutputState~%~%uint8 Unknown = 0~%uint8 PositionDifferenceSolution = 1~%uint8 PseudorangeOnlySolution = 2~%uint8 LowPrecisionSolution = 3~%uint8 HighPrecisionSolution = 4 ~%~%uint8 state~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DrtkOutput)))
  "Returns full string definition for message of type 'DrtkOutput"
  (cl:format cl:nil "## DrtkOutput~%~%std_msgs/Header   header~%ros_sensor_msgs/GpsTime  gpsTime~%~%geometry_msgs/Point      localPositionEcef~%~%geometry_msgs/Vector3    rpvEcef~%geometry_msgs/Vector3    rpvFixedInteger~%geometry_msgs/Vector3    rpvFloatInteger~%geometry_msgs/Vector3    rpvDifferentialPseudorange~%geometry_msgs/Vector3    rpvPositionDifference~%~%float32[9]               rpvEcefCovariance~%float32[9]               rpvFixedIntegerCov~%float32[9]               rpvFloatIntegerCov~%float32[9]               rpvDifferentialPseudorangeCov~%~%float32                  rpvNorm~%float32                  rpvFixedIntegerNorm~%float32                  rpvFloatIntegerNorm~%float32                  rpvDifferentialPseudorangeNorm~%float32                  rpvPositionDifferenceNorm~%~%DrtkOutputState          outputState~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ros_sensor_msgs/GpsTime~%## GPS time structure~%uint32          gps_week        # Full GPS week from (0:0:00 Jan 06, 1980)~%float64         gps_seconds     # GPS seconds into week [sec]~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: drtk/DrtkOutputState~%# DrtkOutputState~%~%uint8 Unknown = 0~%uint8 PositionDifferenceSolution = 1~%uint8 PseudorangeOnlySolution = 2~%uint8 LowPrecisionSolution = 3~%uint8 HighPrecisionSolution = 4 ~%~%uint8 state~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DrtkOutput>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gpsTime))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'localPositionEcef))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rpvEcef))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rpvFixedInteger))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rpvFloatInteger))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rpvDifferentialPseudorange))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rpvPositionDifference))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'rpvEcefCovariance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'rpvFixedIntegerCov) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'rpvFloatIntegerCov) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'rpvDifferentialPseudorangeCov) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     4
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'outputState))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DrtkOutput>))
  "Converts a ROS message object to a list"
  (cl:list 'DrtkOutput
    (cl:cons ':header (header msg))
    (cl:cons ':gpsTime (gpsTime msg))
    (cl:cons ':localPositionEcef (localPositionEcef msg))
    (cl:cons ':rpvEcef (rpvEcef msg))
    (cl:cons ':rpvFixedInteger (rpvFixedInteger msg))
    (cl:cons ':rpvFloatInteger (rpvFloatInteger msg))
    (cl:cons ':rpvDifferentialPseudorange (rpvDifferentialPseudorange msg))
    (cl:cons ':rpvPositionDifference (rpvPositionDifference msg))
    (cl:cons ':rpvEcefCovariance (rpvEcefCovariance msg))
    (cl:cons ':rpvFixedIntegerCov (rpvFixedIntegerCov msg))
    (cl:cons ':rpvFloatIntegerCov (rpvFloatIntegerCov msg))
    (cl:cons ':rpvDifferentialPseudorangeCov (rpvDifferentialPseudorangeCov msg))
    (cl:cons ':rpvNorm (rpvNorm msg))
    (cl:cons ':rpvFixedIntegerNorm (rpvFixedIntegerNorm msg))
    (cl:cons ':rpvFloatIntegerNorm (rpvFloatIntegerNorm msg))
    (cl:cons ':rpvDifferentialPseudorangeNorm (rpvDifferentialPseudorangeNorm msg))
    (cl:cons ':rpvPositionDifferenceNorm (rpvPositionDifferenceNorm msg))
    (cl:cons ':outputState (outputState msg))
))
