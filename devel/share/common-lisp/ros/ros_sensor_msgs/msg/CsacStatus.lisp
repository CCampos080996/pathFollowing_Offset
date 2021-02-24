; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude CsacStatus.msg.html

(cl:defclass <CsacStatus> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CsacStatus (<CsacStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CsacStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CsacStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<CsacStatus> is deprecated: use ros_sensor_msgs-msg:CsacStatus instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <CsacStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:status-val is deprecated.  Use ros_sensor_msgs-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CsacStatus>)))
    "Constants for message type '<CsacStatus>"
  '((:INITIALIZATION . 0)
    (:STEERING . 1)
    (:LOCKED . 2)
    (:UNKNOWN . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CsacStatus)))
    "Constants for message type 'CsacStatus"
  '((:INITIALIZATION . 0)
    (:STEERING . 1)
    (:LOCKED . 2)
    (:UNKNOWN . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CsacStatus>) ostream)
  "Serializes a message object of type '<CsacStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CsacStatus>) istream)
  "Deserializes a message object of type '<CsacStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CsacStatus>)))
  "Returns string type for a message object of type '<CsacStatus>"
  "ros_sensor_msgs/CsacStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CsacStatus)))
  "Returns string type for a message object of type 'CsacStatus"
  "ros_sensor_msgs/CsacStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CsacStatus>)))
  "Returns md5sum for a message object of type '<CsacStatus>"
  "1736dd09b796bd8043d007e2b2955c9a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CsacStatus)))
  "Returns md5sum for a message object of type 'CsacStatus"
  "1736dd09b796bd8043d007e2b2955c9a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CsacStatus>)))
  "Returns full string definition for message of type '<CsacStatus>"
  (cl:format cl:nil "## CsacStatus~%~%uint8 Initialization = 0~%uint8 Steering       = 1~%uint8 Locked         = 2~%uint8 Unknown        = 3~%~%uint8 status~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CsacStatus)))
  "Returns full string definition for message of type 'CsacStatus"
  (cl:format cl:nil "## CsacStatus~%~%uint8 Initialization = 0~%uint8 Steering       = 1~%uint8 Locked         = 2~%uint8 Unknown        = 3~%~%uint8 status~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CsacStatus>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CsacStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'CsacStatus
    (cl:cons ':status (status msg))
))
