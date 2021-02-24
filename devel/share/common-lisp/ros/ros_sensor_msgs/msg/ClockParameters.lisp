; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude ClockParameters.msg.html

(cl:defclass <ClockParameters> (roslisp-msg-protocol:ros-message)
  ((clock_bias
    :reader clock_bias
    :initarg :clock_bias
    :type cl:float
    :initform 0.0)
   (clock_drift
    :reader clock_drift
    :initarg :clock_drift
    :type cl:float
    :initform 0.0))
)

(cl:defclass ClockParameters (<ClockParameters>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClockParameters>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClockParameters)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<ClockParameters> is deprecated: use ros_sensor_msgs-msg:ClockParameters instead.")))

(cl:ensure-generic-function 'clock_bias-val :lambda-list '(m))
(cl:defmethod clock_bias-val ((m <ClockParameters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:clock_bias-val is deprecated.  Use ros_sensor_msgs-msg:clock_bias instead.")
  (clock_bias m))

(cl:ensure-generic-function 'clock_drift-val :lambda-list '(m))
(cl:defmethod clock_drift-val ((m <ClockParameters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:clock_drift-val is deprecated.  Use ros_sensor_msgs-msg:clock_drift instead.")
  (clock_drift m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClockParameters>) ostream)
  "Serializes a message object of type '<ClockParameters>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'clock_bias))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'clock_drift))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClockParameters>) istream)
  "Deserializes a message object of type '<ClockParameters>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'clock_bias) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'clock_drift) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClockParameters>)))
  "Returns string type for a message object of type '<ClockParameters>"
  "ros_sensor_msgs/ClockParameters")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClockParameters)))
  "Returns string type for a message object of type 'ClockParameters"
  "ros_sensor_msgs/ClockParameters")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClockParameters>)))
  "Returns md5sum for a message object of type '<ClockParameters>"
  "24edc28b4670d4220f6e8a16b9ececc2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClockParameters)))
  "Returns md5sum for a message object of type 'ClockParameters"
  "24edc28b4670d4220f6e8a16b9ececc2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClockParameters>)))
  "Returns full string definition for message of type '<ClockParameters>"
  (cl:format cl:nil "## Recevier clock parameters~%~%float64 clock_bias    # Receiver clock bias [sec]~%float64 clock_drift   # Receiver clock drift [sec/sec]~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClockParameters)))
  "Returns full string definition for message of type 'ClockParameters"
  (cl:format cl:nil "## Recevier clock parameters~%~%float64 clock_bias    # Receiver clock bias [sec]~%float64 clock_drift   # Receiver clock drift [sec/sec]~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClockParameters>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClockParameters>))
  "Converts a ROS message object to a list"
  (cl:list 'ClockParameters
    (cl:cons ':clock_bias (clock_bias msg))
    (cl:cons ':clock_drift (clock_drift msg))
))
