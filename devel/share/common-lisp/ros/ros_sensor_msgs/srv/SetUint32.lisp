; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-srv)


;//! \htmlinclude SetUint32-request.msg.html

(cl:defclass <SetUint32-request> (roslisp-msg-protocol:ros-message)
  ((u32
    :reader u32
    :initarg :u32
    :type cl:integer
    :initform 0))
)

(cl:defclass SetUint32-request (<SetUint32-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetUint32-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetUint32-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-srv:<SetUint32-request> is deprecated: use ros_sensor_msgs-srv:SetUint32-request instead.")))

(cl:ensure-generic-function 'u32-val :lambda-list '(m))
(cl:defmethod u32-val ((m <SetUint32-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-srv:u32-val is deprecated.  Use ros_sensor_msgs-srv:u32 instead.")
  (u32 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetUint32-request>) ostream)
  "Serializes a message object of type '<SetUint32-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u32)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u32)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u32)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u32)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetUint32-request>) istream)
  "Deserializes a message object of type '<SetUint32-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'u32)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'u32)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'u32)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'u32)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetUint32-request>)))
  "Returns string type for a service object of type '<SetUint32-request>"
  "ros_sensor_msgs/SetUint32Request")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetUint32-request)))
  "Returns string type for a service object of type 'SetUint32-request"
  "ros_sensor_msgs/SetUint32Request")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetUint32-request>)))
  "Returns md5sum for a message object of type '<SetUint32-request>"
  "9dbe221d5688a4a9812af0e2d37c83a8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetUint32-request)))
  "Returns md5sum for a message object of type 'SetUint32-request"
  "9dbe221d5688a4a9812af0e2d37c83a8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetUint32-request>)))
  "Returns full string definition for message of type '<SetUint32-request>"
  (cl:format cl:nil "uint32 u32~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetUint32-request)))
  "Returns full string definition for message of type 'SetUint32-request"
  (cl:format cl:nil "uint32 u32~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetUint32-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetUint32-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetUint32-request
    (cl:cons ':u32 (u32 msg))
))
;//! \htmlinclude SetUint32-response.msg.html

(cl:defclass <SetUint32-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass SetUint32-response (<SetUint32-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetUint32-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetUint32-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-srv:<SetUint32-response> is deprecated: use ros_sensor_msgs-srv:SetUint32-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetUint32-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-srv:success-val is deprecated.  Use ros_sensor_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetUint32-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-srv:message-val is deprecated.  Use ros_sensor_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetUint32-response>) ostream)
  "Serializes a message object of type '<SetUint32-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetUint32-response>) istream)
  "Deserializes a message object of type '<SetUint32-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetUint32-response>)))
  "Returns string type for a service object of type '<SetUint32-response>"
  "ros_sensor_msgs/SetUint32Response")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetUint32-response)))
  "Returns string type for a service object of type 'SetUint32-response"
  "ros_sensor_msgs/SetUint32Response")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetUint32-response>)))
  "Returns md5sum for a message object of type '<SetUint32-response>"
  "9dbe221d5688a4a9812af0e2d37c83a8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetUint32-response)))
  "Returns md5sum for a message object of type 'SetUint32-response"
  "9dbe221d5688a4a9812af0e2d37c83a8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetUint32-response>)))
  "Returns full string definition for message of type '<SetUint32-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetUint32-response)))
  "Returns full string definition for message of type 'SetUint32-response"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetUint32-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetUint32-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetUint32-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetUint32)))
  'SetUint32-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetUint32)))
  'SetUint32-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetUint32)))
  "Returns string type for a service object of type '<SetUint32>"
  "ros_sensor_msgs/SetUint32")