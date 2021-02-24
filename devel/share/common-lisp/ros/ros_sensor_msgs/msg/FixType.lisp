; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude FixType.msg.html

(cl:defclass <FixType> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass FixType (<FixType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FixType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FixType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<FixType> is deprecated: use ros_sensor_msgs-msg:FixType instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <FixType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:type-val is deprecated.  Use ros_sensor_msgs-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<FixType>)))
    "Constants for message type '<FixType>"
  '((:FIXTYPENONE . 0)
    (:FIXTYPEDEADRECKONING . 1)
    (:FIXTYPE2D . 2)
    (:FIXTYPE3D . 3)
    (:FIXTYPEDRAND3D . 4)
    (:FIXTYPETIMEONLY . 5)
    (:FIXTYPESTATIC . 9))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'FixType)))
    "Constants for message type 'FixType"
  '((:FIXTYPENONE . 0)
    (:FIXTYPEDEADRECKONING . 1)
    (:FIXTYPE2D . 2)
    (:FIXTYPE3D . 3)
    (:FIXTYPEDRAND3D . 4)
    (:FIXTYPETIMEONLY . 5)
    (:FIXTYPESTATIC . 9))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FixType>) ostream)
  "Serializes a message object of type '<FixType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FixType>) istream)
  "Deserializes a message object of type '<FixType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FixType>)))
  "Returns string type for a message object of type '<FixType>"
  "ros_sensor_msgs/FixType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FixType)))
  "Returns string type for a message object of type 'FixType"
  "ros_sensor_msgs/FixType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FixType>)))
  "Returns md5sum for a message object of type '<FixType>"
  "171bfb899da24646b348c07601ff9a6a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FixType)))
  "Returns md5sum for a message object of type 'FixType"
  "171bfb899da24646b348c07601ff9a6a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FixType>)))
  "Returns full string definition for message of type '<FixType>"
  (cl:format cl:nil "## Fix Type~%~%uint8 FixTypeNone = 0~%uint8 FixTypeDeadReckoning = 1~%uint8 FixType2D = 2~%uint8 FixType3D = 3~%uint8 FixTypeDRand3D = 4 ## Dead reckoning and GPS fix~%uint8 FixTypeTimeOnly = 5~%uint8 FixTypeStatic = 9~%~%uint8 type~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FixType)))
  "Returns full string definition for message of type 'FixType"
  (cl:format cl:nil "## Fix Type~%~%uint8 FixTypeNone = 0~%uint8 FixTypeDeadReckoning = 1~%uint8 FixType2D = 2~%uint8 FixType3D = 3~%uint8 FixTypeDRand3D = 4 ## Dead reckoning and GPS fix~%uint8 FixTypeTimeOnly = 5~%uint8 FixTypeStatic = 9~%~%uint8 type~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FixType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FixType>))
  "Converts a ROS message object to a list"
  (cl:list 'FixType
    (cl:cons ':type (type msg))
))
