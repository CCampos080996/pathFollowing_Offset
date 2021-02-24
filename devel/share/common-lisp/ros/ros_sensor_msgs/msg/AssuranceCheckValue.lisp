; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude AssuranceCheckValue.msg.html

(cl:defclass <AssuranceCheckValue> (roslisp-msg-protocol:ros-message)
  ((prn
    :reader prn
    :initarg :prn
    :type cl:integer
    :initform 0)
   (checkVal
    :reader checkVal
    :initarg :checkVal
    :type cl:integer
    :initform 0))
)

(cl:defclass AssuranceCheckValue (<AssuranceCheckValue>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AssuranceCheckValue>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AssuranceCheckValue)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<AssuranceCheckValue> is deprecated: use ros_sensor_msgs-msg:AssuranceCheckValue instead.")))

(cl:ensure-generic-function 'prn-val :lambda-list '(m))
(cl:defmethod prn-val ((m <AssuranceCheckValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:prn-val is deprecated.  Use ros_sensor_msgs-msg:prn instead.")
  (prn m))

(cl:ensure-generic-function 'checkVal-val :lambda-list '(m))
(cl:defmethod checkVal-val ((m <AssuranceCheckValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:checkVal-val is deprecated.  Use ros_sensor_msgs-msg:checkVal instead.")
  (checkVal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AssuranceCheckValue>) ostream)
  "Serializes a message object of type '<AssuranceCheckValue>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'prn)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'prn)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'prn)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'prn)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'checkVal)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'checkVal)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'checkVal)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'checkVal)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AssuranceCheckValue>) istream)
  "Deserializes a message object of type '<AssuranceCheckValue>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'prn)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'prn)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'prn)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'prn)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'checkVal)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'checkVal)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'checkVal)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'checkVal)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AssuranceCheckValue>)))
  "Returns string type for a message object of type '<AssuranceCheckValue>"
  "ros_sensor_msgs/AssuranceCheckValue")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AssuranceCheckValue)))
  "Returns string type for a message object of type 'AssuranceCheckValue"
  "ros_sensor_msgs/AssuranceCheckValue")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AssuranceCheckValue>)))
  "Returns md5sum for a message object of type '<AssuranceCheckValue>"
  "a70b393a62ceefc4ae65dcd785400bfb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AssuranceCheckValue)))
  "Returns md5sum for a message object of type 'AssuranceCheckValue"
  "a70b393a62ceefc4ae65dcd785400bfb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AssuranceCheckValue>)))
  "Returns full string definition for message of type '<AssuranceCheckValue>"
  (cl:format cl:nil "## An assurance check value for a given prn~%~%uint32    prn~%uint32    checkVal~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AssuranceCheckValue)))
  "Returns full string definition for message of type 'AssuranceCheckValue"
  (cl:format cl:nil "## An assurance check value for a given prn~%~%uint32    prn~%uint32    checkVal~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AssuranceCheckValue>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AssuranceCheckValue>))
  "Converts a ROS message object to a list"
  (cl:list 'AssuranceCheckValue
    (cl:cons ':prn (prn msg))
    (cl:cons ':checkVal (checkVal msg))
))
