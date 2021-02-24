; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude ReceiverType.msg.html

(cl:defclass <ReceiverType> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ReceiverType (<ReceiverType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReceiverType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReceiverType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<ReceiverType> is deprecated: use ros_sensor_msgs-msg:ReceiverType instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <ReceiverType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:type-val is deprecated.  Use ros_sensor_msgs-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ReceiverType>)))
    "Constants for message type '<ReceiverType>"
  '((:RECEIVER_TYPE_UBLOX . 0)
    (:RECEIVER_TYPE_NOVATEL . 1)
    (:RECEIVER_TYPE_DAGR . 2)
    (:RECEIVER_TYPE_MICROGRAM . 3)
    (:RECEIVER_TYPE_TRUTRAK . 4)
    (:RECEIVER_TYPE_GSSIP . 5)
    (:RECEIVER_TYPE_OTHER . 14)
    (:RECEIVER_TYPE_UNKNOWN . 15))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ReceiverType)))
    "Constants for message type 'ReceiverType"
  '((:RECEIVER_TYPE_UBLOX . 0)
    (:RECEIVER_TYPE_NOVATEL . 1)
    (:RECEIVER_TYPE_DAGR . 2)
    (:RECEIVER_TYPE_MICROGRAM . 3)
    (:RECEIVER_TYPE_TRUTRAK . 4)
    (:RECEIVER_TYPE_GSSIP . 5)
    (:RECEIVER_TYPE_OTHER . 14)
    (:RECEIVER_TYPE_UNKNOWN . 15))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReceiverType>) ostream)
  "Serializes a message object of type '<ReceiverType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReceiverType>) istream)
  "Deserializes a message object of type '<ReceiverType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReceiverType>)))
  "Returns string type for a message object of type '<ReceiverType>"
  "ros_sensor_msgs/ReceiverType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReceiverType)))
  "Returns string type for a message object of type 'ReceiverType"
  "ros_sensor_msgs/ReceiverType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReceiverType>)))
  "Returns md5sum for a message object of type '<ReceiverType>"
  "a58e9fc00f5d5355c75be34df1d73a87")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReceiverType)))
  "Returns md5sum for a message object of type 'ReceiverType"
  "a58e9fc00f5d5355c75be34df1d73a87")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReceiverType>)))
  "Returns full string definition for message of type '<ReceiverType>"
  (cl:format cl:nil "uint8 RECEIVER_TYPE_UBLOX = 0~%uint8 RECEIVER_TYPE_NOVATEL = 1~%uint8 RECEIVER_TYPE_DAGR = 2~%uint8 RECEIVER_TYPE_MICROGRAM = 3~%uint8 RECEIVER_TYPE_TRUTRAK = 4~%uint8 RECEIVER_TYPE_GSSIP = 5~%uint8 RECEIVER_TYPE_OTHER = 14~%uint8 RECEIVER_TYPE_UNKNOWN = 15~%uint8 type~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReceiverType)))
  "Returns full string definition for message of type 'ReceiverType"
  (cl:format cl:nil "uint8 RECEIVER_TYPE_UBLOX = 0~%uint8 RECEIVER_TYPE_NOVATEL = 1~%uint8 RECEIVER_TYPE_DAGR = 2~%uint8 RECEIVER_TYPE_MICROGRAM = 3~%uint8 RECEIVER_TYPE_TRUTRAK = 4~%uint8 RECEIVER_TYPE_GSSIP = 5~%uint8 RECEIVER_TYPE_OTHER = 14~%uint8 RECEIVER_TYPE_UNKNOWN = 15~%uint8 type~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReceiverType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReceiverType>))
  "Converts a ROS message object to a list"
  (cl:list 'ReceiverType
    (cl:cons ':type (type msg))
))
