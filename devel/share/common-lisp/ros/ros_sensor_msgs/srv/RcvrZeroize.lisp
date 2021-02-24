; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-srv)


;//! \htmlinclude RcvrZeroize-request.msg.html

(cl:defclass <RcvrZeroize-request> (roslisp-msg-protocol:ros-message)
  ((clear_keys
    :reader clear_keys
    :initarg :clear_keys
    :type cl:boolean
    :initform cl:nil)
   (clear_rcvr_data
    :reader clear_rcvr_data
    :initarg :clear_rcvr_data
    :type cl:boolean
    :initform cl:nil)
   (clear_position_and_time
    :reader clear_position_and_time
    :initarg :clear_position_and_time
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RcvrZeroize-request (<RcvrZeroize-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RcvrZeroize-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RcvrZeroize-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-srv:<RcvrZeroize-request> is deprecated: use ros_sensor_msgs-srv:RcvrZeroize-request instead.")))

(cl:ensure-generic-function 'clear_keys-val :lambda-list '(m))
(cl:defmethod clear_keys-val ((m <RcvrZeroize-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-srv:clear_keys-val is deprecated.  Use ros_sensor_msgs-srv:clear_keys instead.")
  (clear_keys m))

(cl:ensure-generic-function 'clear_rcvr_data-val :lambda-list '(m))
(cl:defmethod clear_rcvr_data-val ((m <RcvrZeroize-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-srv:clear_rcvr_data-val is deprecated.  Use ros_sensor_msgs-srv:clear_rcvr_data instead.")
  (clear_rcvr_data m))

(cl:ensure-generic-function 'clear_position_and_time-val :lambda-list '(m))
(cl:defmethod clear_position_and_time-val ((m <RcvrZeroize-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-srv:clear_position_and_time-val is deprecated.  Use ros_sensor_msgs-srv:clear_position_and_time instead.")
  (clear_position_and_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RcvrZeroize-request>) ostream)
  "Serializes a message object of type '<RcvrZeroize-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'clear_keys) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'clear_rcvr_data) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'clear_position_and_time) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RcvrZeroize-request>) istream)
  "Deserializes a message object of type '<RcvrZeroize-request>"
    (cl:setf (cl:slot-value msg 'clear_keys) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'clear_rcvr_data) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'clear_position_and_time) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RcvrZeroize-request>)))
  "Returns string type for a service object of type '<RcvrZeroize-request>"
  "ros_sensor_msgs/RcvrZeroizeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RcvrZeroize-request)))
  "Returns string type for a service object of type 'RcvrZeroize-request"
  "ros_sensor_msgs/RcvrZeroizeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RcvrZeroize-request>)))
  "Returns md5sum for a message object of type '<RcvrZeroize-request>"
  "1a6092fd53941ce04a5c576a57bbdbb6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RcvrZeroize-request)))
  "Returns md5sum for a message object of type 'RcvrZeroize-request"
  "1a6092fd53941ce04a5c576a57bbdbb6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RcvrZeroize-request>)))
  "Returns full string definition for message of type '<RcvrZeroize-request>"
  (cl:format cl:nil "bool clear_keys~%bool clear_rcvr_data~%bool clear_position_and_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RcvrZeroize-request)))
  "Returns full string definition for message of type 'RcvrZeroize-request"
  (cl:format cl:nil "bool clear_keys~%bool clear_rcvr_data~%bool clear_position_and_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RcvrZeroize-request>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RcvrZeroize-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RcvrZeroize-request
    (cl:cons ':clear_keys (clear_keys msg))
    (cl:cons ':clear_rcvr_data (clear_rcvr_data msg))
    (cl:cons ':clear_position_and_time (clear_position_and_time msg))
))
;//! \htmlinclude RcvrZeroize-response.msg.html

(cl:defclass <RcvrZeroize-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass RcvrZeroize-response (<RcvrZeroize-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RcvrZeroize-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RcvrZeroize-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-srv:<RcvrZeroize-response> is deprecated: use ros_sensor_msgs-srv:RcvrZeroize-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <RcvrZeroize-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-srv:success-val is deprecated.  Use ros_sensor_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <RcvrZeroize-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-srv:message-val is deprecated.  Use ros_sensor_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RcvrZeroize-response>) ostream)
  "Serializes a message object of type '<RcvrZeroize-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RcvrZeroize-response>) istream)
  "Deserializes a message object of type '<RcvrZeroize-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RcvrZeroize-response>)))
  "Returns string type for a service object of type '<RcvrZeroize-response>"
  "ros_sensor_msgs/RcvrZeroizeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RcvrZeroize-response)))
  "Returns string type for a service object of type 'RcvrZeroize-response"
  "ros_sensor_msgs/RcvrZeroizeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RcvrZeroize-response>)))
  "Returns md5sum for a message object of type '<RcvrZeroize-response>"
  "1a6092fd53941ce04a5c576a57bbdbb6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RcvrZeroize-response)))
  "Returns md5sum for a message object of type 'RcvrZeroize-response"
  "1a6092fd53941ce04a5c576a57bbdbb6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RcvrZeroize-response>)))
  "Returns full string definition for message of type '<RcvrZeroize-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RcvrZeroize-response)))
  "Returns full string definition for message of type 'RcvrZeroize-response"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RcvrZeroize-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RcvrZeroize-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RcvrZeroize-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RcvrZeroize)))
  'RcvrZeroize-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RcvrZeroize)))
  'RcvrZeroize-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RcvrZeroize)))
  "Returns string type for a service object of type '<RcvrZeroize>"
  "ros_sensor_msgs/RcvrZeroize")