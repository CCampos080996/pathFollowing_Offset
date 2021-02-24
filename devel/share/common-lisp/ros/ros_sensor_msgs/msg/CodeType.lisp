; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude CodeType.msg.html

(cl:defclass <CodeType> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CodeType (<CodeType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CodeType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CodeType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<CodeType> is deprecated: use ros_sensor_msgs-msg:CodeType instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <CodeType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:type-val is deprecated.  Use ros_sensor_msgs-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CodeType>)))
    "Constants for message type '<CodeType>"
  '((:CODETYPEUNKNOWN . 0)
    (:CODETYPEGPSCA . 1)
    (:CODETYPEGPSP . 2)
    (:CODETYPEGPSPCODELESS . 3)
    (:CODETYPEGPSY . 4)
    (:CODETYPEGPSC . 5)
    (:CODETYPEGPSCCODELESS . 6)
    (:CODETYPEGPSM . 8)
    (:CODETYPEGPSMPRIME . 9)
    (:CODETYPEGLONASS . 16)
    (:CODETYPEGALILEO . 32))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CodeType)))
    "Constants for message type 'CodeType"
  '((:CODETYPEUNKNOWN . 0)
    (:CODETYPEGPSCA . 1)
    (:CODETYPEGPSP . 2)
    (:CODETYPEGPSPCODELESS . 3)
    (:CODETYPEGPSY . 4)
    (:CODETYPEGPSC . 5)
    (:CODETYPEGPSCCODELESS . 6)
    (:CODETYPEGPSM . 8)
    (:CODETYPEGPSMPRIME . 9)
    (:CODETYPEGLONASS . 16)
    (:CODETYPEGALILEO . 32))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CodeType>) ostream)
  "Serializes a message object of type '<CodeType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CodeType>) istream)
  "Deserializes a message object of type '<CodeType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CodeType>)))
  "Returns string type for a message object of type '<CodeType>"
  "ros_sensor_msgs/CodeType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CodeType)))
  "Returns string type for a message object of type 'CodeType"
  "ros_sensor_msgs/CodeType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CodeType>)))
  "Returns md5sum for a message object of type '<CodeType>"
  "499f851ef67c04bdd8c13b2eb63a144a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CodeType)))
  "Returns md5sum for a message object of type 'CodeType"
  "499f851ef67c04bdd8c13b2eb63a144a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CodeType>)))
  "Returns full string definition for message of type '<CodeType>"
  (cl:format cl:nil "## Code Type~%~%uint8 CodeTypeUnknown         = 0~%uint8 CodeTypeGpsCa           = 1~%uint8 CodeTypeGpsP            = 2~%uint8 CodeTypeGpsPCodeless    = 3~%uint8 CodeTypeGpsY            = 4~%uint8 CodeTypeGpsC            = 5~%uint8 CodeTypeGpsCCodeless    = 6~%uint8 CodeTypeGpsM            = 8~%uint8 CodeTypeGpsMPrime       = 9~%~%uint8 CodeTypeGlonass  = 16~%uint8 CodeTypeGalileo  = 32~%~%uint8 type~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CodeType)))
  "Returns full string definition for message of type 'CodeType"
  (cl:format cl:nil "## Code Type~%~%uint8 CodeTypeUnknown         = 0~%uint8 CodeTypeGpsCa           = 1~%uint8 CodeTypeGpsP            = 2~%uint8 CodeTypeGpsPCodeless    = 3~%uint8 CodeTypeGpsY            = 4~%uint8 CodeTypeGpsC            = 5~%uint8 CodeTypeGpsCCodeless    = 6~%uint8 CodeTypeGpsM            = 8~%uint8 CodeTypeGpsMPrime       = 9~%~%uint8 CodeTypeGlonass  = 16~%uint8 CodeTypeGalileo  = 32~%~%uint8 type~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CodeType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CodeType>))
  "Converts a ROS message object to a list"
  (cl:list 'CodeType
    (cl:cons ':type (type msg))
))
