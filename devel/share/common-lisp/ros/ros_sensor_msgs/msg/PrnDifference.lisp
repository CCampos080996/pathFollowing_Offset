; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude PrnDifference.msg.html

(cl:defclass <PrnDifference> (roslisp-msg-protocol:ros-message)
  ((prn
    :reader prn
    :initarg :prn
    :type cl:integer
    :initform 0)
   (difference
    :reader difference
    :initarg :difference
    :type cl:float
    :initform 0.0))
)

(cl:defclass PrnDifference (<PrnDifference>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PrnDifference>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PrnDifference)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<PrnDifference> is deprecated: use ros_sensor_msgs-msg:PrnDifference instead.")))

(cl:ensure-generic-function 'prn-val :lambda-list '(m))
(cl:defmethod prn-val ((m <PrnDifference>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:prn-val is deprecated.  Use ros_sensor_msgs-msg:prn instead.")
  (prn m))

(cl:ensure-generic-function 'difference-val :lambda-list '(m))
(cl:defmethod difference-val ((m <PrnDifference>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:difference-val is deprecated.  Use ros_sensor_msgs-msg:difference instead.")
  (difference m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PrnDifference>) ostream)
  "Serializes a message object of type '<PrnDifference>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'prn)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'prn)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'prn)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'prn)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'difference))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PrnDifference>) istream)
  "Deserializes a message object of type '<PrnDifference>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'prn)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'prn)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'prn)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'prn)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'difference) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PrnDifference>)))
  "Returns string type for a message object of type '<PrnDifference>"
  "ros_sensor_msgs/PrnDifference")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PrnDifference)))
  "Returns string type for a message object of type 'PrnDifference"
  "ros_sensor_msgs/PrnDifference")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PrnDifference>)))
  "Returns md5sum for a message object of type '<PrnDifference>"
  "c858497f90c1f6e07daed8d782b2a3cd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PrnDifference)))
  "Returns md5sum for a message object of type 'PrnDifference"
  "c858497f90c1f6e07daed8d782b2a3cd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PrnDifference>)))
  "Returns full string definition for message of type '<PrnDifference>"
  (cl:format cl:nil "uint32   prn~%float64  difference~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PrnDifference)))
  "Returns full string definition for message of type 'PrnDifference"
  (cl:format cl:nil "uint32   prn~%float64  difference~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PrnDifference>))
  (cl:+ 0
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PrnDifference>))
  "Converts a ROS message object to a list"
  (cl:list 'PrnDifference
    (cl:cons ':prn (prn msg))
    (cl:cons ':difference (difference msg))
))
