; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude SourceType.msg.html

(cl:defclass <SourceType> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SourceType (<SourceType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SourceType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SourceType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<SourceType> is deprecated: use ros_sensor_msgs-msg:SourceType instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <SourceType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:type-val is deprecated.  Use ros_sensor_msgs-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SourceType>)))
    "Constants for message type '<SourceType>"
  '((:SOURCETYPEUNKNOWN . 0)
    (:SOURCETYPERECEIVER . 1)
    (:SOURCETYPENETWORK . 2)
    (:SOURCETYPERINEX . 3)
    (:SOURCETYPEANY . 99))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SourceType)))
    "Constants for message type 'SourceType"
  '((:SOURCETYPEUNKNOWN . 0)
    (:SOURCETYPERECEIVER . 1)
    (:SOURCETYPENETWORK . 2)
    (:SOURCETYPERINEX . 3)
    (:SOURCETYPEANY . 99))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SourceType>) ostream)
  "Serializes a message object of type '<SourceType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SourceType>) istream)
  "Deserializes a message object of type '<SourceType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SourceType>)))
  "Returns string type for a message object of type '<SourceType>"
  "ros_sensor_msgs/SourceType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SourceType)))
  "Returns string type for a message object of type 'SourceType"
  "ros_sensor_msgs/SourceType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SourceType>)))
  "Returns md5sum for a message object of type '<SourceType>"
  "2b6f53ff512a57ec4523f25a3ccb8894")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SourceType)))
  "Returns md5sum for a message object of type 'SourceType"
  "2b6f53ff512a57ec4523f25a3ccb8894")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SourceType>)))
  "Returns full string definition for message of type '<SourceType>"
  (cl:format cl:nil "## Source of data~%~%uint8 SourceTypeUnknown  = 0~%uint8 SourceTypeReceiver = 1~%uint8 SourceTypeNetwork  = 2~%uint8 SourceTypeRinex    = 3~%uint8 SourceTypeAny      = 99~%~%uint8 type~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SourceType)))
  "Returns full string definition for message of type 'SourceType"
  (cl:format cl:nil "## Source of data~%~%uint8 SourceTypeUnknown  = 0~%uint8 SourceTypeReceiver = 1~%uint8 SourceTypeNetwork  = 2~%uint8 SourceTypeRinex    = 3~%uint8 SourceTypeAny      = 99~%~%uint8 type~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SourceType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SourceType>))
  "Converts a ROS message object to a list"
  (cl:list 'SourceType
    (cl:cons ':type (type msg))
))
