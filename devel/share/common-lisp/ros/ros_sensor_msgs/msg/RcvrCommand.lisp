; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude RcvrCommand.msg.html

(cl:defclass <RcvrCommand> (roslisp-msg-protocol:ros-message)
  ((rcvr_cmd
    :reader rcvr_cmd
    :initarg :rcvr_cmd
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RcvrCommand (<RcvrCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RcvrCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RcvrCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<RcvrCommand> is deprecated: use ros_sensor_msgs-msg:RcvrCommand instead.")))

(cl:ensure-generic-function 'rcvr_cmd-val :lambda-list '(m))
(cl:defmethod rcvr_cmd-val ((m <RcvrCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:rcvr_cmd-val is deprecated.  Use ros_sensor_msgs-msg:rcvr_cmd instead.")
  (rcvr_cmd m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RcvrCommand>)))
    "Constants for message type '<RcvrCommand>"
  '((:ZEROIZE . 0)
    (:CLEAR_SAAS_KEYS . 1)
    (:COLD_RESET . 2)
    (:WARM_RESET . 3)
    (:HOT_RESET . 4)
    (:CONNECT . 5)
    (:DISCONNECT . 6))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RcvrCommand)))
    "Constants for message type 'RcvrCommand"
  '((:ZEROIZE . 0)
    (:CLEAR_SAAS_KEYS . 1)
    (:COLD_RESET . 2)
    (:WARM_RESET . 3)
    (:HOT_RESET . 4)
    (:CONNECT . 5)
    (:DISCONNECT . 6))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RcvrCommand>) ostream)
  "Serializes a message object of type '<RcvrCommand>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rcvr_cmd)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RcvrCommand>) istream)
  "Deserializes a message object of type '<RcvrCommand>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rcvr_cmd)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RcvrCommand>)))
  "Returns string type for a message object of type '<RcvrCommand>"
  "ros_sensor_msgs/RcvrCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RcvrCommand)))
  "Returns string type for a message object of type 'RcvrCommand"
  "ros_sensor_msgs/RcvrCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RcvrCommand>)))
  "Returns md5sum for a message object of type '<RcvrCommand>"
  "1e0d96ca5be79f9b64d93ff7047bbbe8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RcvrCommand)))
  "Returns md5sum for a message object of type 'RcvrCommand"
  "1e0d96ca5be79f9b64d93ff7047bbbe8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RcvrCommand>)))
  "Returns full string definition for message of type '<RcvrCommand>"
  (cl:format cl:nil "uint8 ZEROIZE = 0~%uint8 CLEAR_SAAS_KEYS = 1~%uint8 COLD_RESET = 2~%uint8 WARM_RESET = 3~%uint8 HOT_RESET = 4~%uint8 CONNECT = 5~%uint8 DISCONNECT = 6~%~%uint8 rcvr_cmd~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RcvrCommand)))
  "Returns full string definition for message of type 'RcvrCommand"
  (cl:format cl:nil "uint8 ZEROIZE = 0~%uint8 CLEAR_SAAS_KEYS = 1~%uint8 COLD_RESET = 2~%uint8 WARM_RESET = 3~%uint8 HOT_RESET = 4~%uint8 CONNECT = 5~%uint8 DISCONNECT = 6~%~%uint8 rcvr_cmd~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RcvrCommand>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RcvrCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'RcvrCommand
    (cl:cons ':rcvr_cmd (rcvr_cmd msg))
))
