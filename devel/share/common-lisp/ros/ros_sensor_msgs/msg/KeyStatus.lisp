; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude KeyStatus.msg.html

(cl:defclass <KeyStatus> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass KeyStatus (<KeyStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KeyStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KeyStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<KeyStatus> is deprecated: use ros_sensor_msgs-msg:KeyStatus instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <KeyStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:status-val is deprecated.  Use ros_sensor_msgs-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<KeyStatus>)))
    "Constants for message type '<KeyStatus>"
  '((:UNAUTHORIZEDNOTKEYED . 0)
    (:AUTHORIZEDNOTKEYED . 1)
    (:KEYED . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'KeyStatus)))
    "Constants for message type 'KeyStatus"
  '((:UNAUTHORIZEDNOTKEYED . 0)
    (:AUTHORIZEDNOTKEYED . 1)
    (:KEYED . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KeyStatus>) ostream)
  "Serializes a message object of type '<KeyStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KeyStatus>) istream)
  "Deserializes a message object of type '<KeyStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KeyStatus>)))
  "Returns string type for a message object of type '<KeyStatus>"
  "ros_sensor_msgs/KeyStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KeyStatus)))
  "Returns string type for a message object of type 'KeyStatus"
  "ros_sensor_msgs/KeyStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KeyStatus>)))
  "Returns md5sum for a message object of type '<KeyStatus>"
  "b61a75ec1147486d8b30386cbf362aa3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KeyStatus)))
  "Returns md5sum for a message object of type 'KeyStatus"
  "b61a75ec1147486d8b30386cbf362aa3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KeyStatus>)))
  "Returns full string definition for message of type '<KeyStatus>"
  (cl:format cl:nil "## KeyStatus~%~%uint8 UnauthorizedNotKeyed = 0~%uint8 AuthorizedNotKeyed   = 1~%uint8 Keyed                = 2~%~%uint8 status~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KeyStatus)))
  "Returns full string definition for message of type 'KeyStatus"
  (cl:format cl:nil "## KeyStatus~%~%uint8 UnauthorizedNotKeyed = 0~%uint8 AuthorizedNotKeyed   = 1~%uint8 Keyed                = 2~%~%uint8 status~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KeyStatus>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KeyStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'KeyStatus
    (cl:cons ':status (status msg))
))
