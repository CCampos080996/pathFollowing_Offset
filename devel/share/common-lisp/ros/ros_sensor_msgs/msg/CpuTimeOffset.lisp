; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude CpuTimeOffset.msg.html

(cl:defclass <CpuTimeOffset> (roslisp-msg-protocol:ros-message)
  ((valid
    :reader valid
    :initarg :valid
    :type cl:boolean
    :initform cl:nil)
   (secondsOffset
    :reader secondsOffset
    :initarg :secondsOffset
    :type cl:float
    :initform 0.0))
)

(cl:defclass CpuTimeOffset (<CpuTimeOffset>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CpuTimeOffset>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CpuTimeOffset)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<CpuTimeOffset> is deprecated: use ros_sensor_msgs-msg:CpuTimeOffset instead.")))

(cl:ensure-generic-function 'valid-val :lambda-list '(m))
(cl:defmethod valid-val ((m <CpuTimeOffset>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:valid-val is deprecated.  Use ros_sensor_msgs-msg:valid instead.")
  (valid m))

(cl:ensure-generic-function 'secondsOffset-val :lambda-list '(m))
(cl:defmethod secondsOffset-val ((m <CpuTimeOffset>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:secondsOffset-val is deprecated.  Use ros_sensor_msgs-msg:secondsOffset instead.")
  (secondsOffset m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CpuTimeOffset>) ostream)
  "Serializes a message object of type '<CpuTimeOffset>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'valid) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'secondsOffset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CpuTimeOffset>) istream)
  "Deserializes a message object of type '<CpuTimeOffset>"
    (cl:setf (cl:slot-value msg 'valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'secondsOffset) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CpuTimeOffset>)))
  "Returns string type for a message object of type '<CpuTimeOffset>"
  "ros_sensor_msgs/CpuTimeOffset")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CpuTimeOffset)))
  "Returns string type for a message object of type 'CpuTimeOffset"
  "ros_sensor_msgs/CpuTimeOffset")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CpuTimeOffset>)))
  "Returns md5sum for a message object of type '<CpuTimeOffset>"
  "fe6721beec4e50ad7c1762c7c1827237")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CpuTimeOffset)))
  "Returns md5sum for a message object of type 'CpuTimeOffset"
  "fe6721beec4e50ad7c1762c7c1827237")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CpuTimeOffset>)))
  "Returns full string definition for message of type '<CpuTimeOffset>"
  (cl:format cl:nil "bool    valid~%float64 secondsOffset~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CpuTimeOffset)))
  "Returns full string definition for message of type 'CpuTimeOffset"
  (cl:format cl:nil "bool    valid~%float64 secondsOffset~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CpuTimeOffset>))
  (cl:+ 0
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CpuTimeOffset>))
  "Converts a ROS message object to a list"
  (cl:list 'CpuTimeOffset
    (cl:cons ':valid (valid msg))
    (cl:cons ':secondsOffset (secondsOffset msg))
))
