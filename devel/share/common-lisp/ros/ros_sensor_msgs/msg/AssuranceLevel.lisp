; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude AssuranceLevel.msg.html

(cl:defclass <AssuranceLevel> (roslisp-msg-protocol:ros-message)
  ((level
    :reader level
    :initarg :level
    :type cl:fixnum
    :initform 0))
)

(cl:defclass AssuranceLevel (<AssuranceLevel>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AssuranceLevel>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AssuranceLevel)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<AssuranceLevel> is deprecated: use ros_sensor_msgs-msg:AssuranceLevel instead.")))

(cl:ensure-generic-function 'level-val :lambda-list '(m))
(cl:defmethod level-val ((m <AssuranceLevel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:level-val is deprecated.  Use ros_sensor_msgs-msg:level instead.")
  (level m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AssuranceLevel>)))
    "Constants for message type '<AssuranceLevel>"
  '((:NORMAL . 0)
    (:UNKNOWN . 1)
    (:WARNING . 2)
    (:ATTACK . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AssuranceLevel)))
    "Constants for message type 'AssuranceLevel"
  '((:NORMAL . 0)
    (:UNKNOWN . 1)
    (:WARNING . 2)
    (:ATTACK . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AssuranceLevel>) ostream)
  "Serializes a message object of type '<AssuranceLevel>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'level)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AssuranceLevel>) istream)
  "Deserializes a message object of type '<AssuranceLevel>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'level)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AssuranceLevel>)))
  "Returns string type for a message object of type '<AssuranceLevel>"
  "ros_sensor_msgs/AssuranceLevel")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AssuranceLevel)))
  "Returns string type for a message object of type 'AssuranceLevel"
  "ros_sensor_msgs/AssuranceLevel")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AssuranceLevel>)))
  "Returns md5sum for a message object of type '<AssuranceLevel>"
  "328f14617c5691e821d262464da48397")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AssuranceLevel)))
  "Returns md5sum for a message object of type 'AssuranceLevel"
  "328f14617c5691e821d262464da48397")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AssuranceLevel>)))
  "Returns full string definition for message of type '<AssuranceLevel>"
  (cl:format cl:nil "uint8  Normal   = 0~%uint8  Unknown  = 1~%uint8  Warning  = 2~%uint8  Attack   = 3~%~%uint8 level~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AssuranceLevel)))
  "Returns full string definition for message of type 'AssuranceLevel"
  (cl:format cl:nil "uint8  Normal   = 0~%uint8  Unknown  = 1~%uint8  Warning  = 2~%uint8  Attack   = 3~%~%uint8 level~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AssuranceLevel>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AssuranceLevel>))
  "Converts a ROS message object to a list"
  (cl:list 'AssuranceLevel
    (cl:cons ':level (level msg))
))
