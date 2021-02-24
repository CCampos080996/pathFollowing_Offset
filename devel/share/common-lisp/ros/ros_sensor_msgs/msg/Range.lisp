; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude Range.msg.html

(cl:defclass <Range> (roslisp-msg-protocol:ros-message)
  ((end_point_id
    :reader end_point_id
    :initarg :end_point_id
    :type cl:string
    :initform "")
   (range
    :reader range
    :initarg :range
    :type cl:float
    :initform 0.0))
)

(cl:defclass Range (<Range>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Range>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Range)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<Range> is deprecated: use ros_sensor_msgs-msg:Range instead.")))

(cl:ensure-generic-function 'end_point_id-val :lambda-list '(m))
(cl:defmethod end_point_id-val ((m <Range>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:end_point_id-val is deprecated.  Use ros_sensor_msgs-msg:end_point_id instead.")
  (end_point_id m))

(cl:ensure-generic-function 'range-val :lambda-list '(m))
(cl:defmethod range-val ((m <Range>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:range-val is deprecated.  Use ros_sensor_msgs-msg:range instead.")
  (range m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Range>) ostream)
  "Serializes a message object of type '<Range>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'end_point_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'end_point_id))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'range))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Range>) istream)
  "Deserializes a message object of type '<Range>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'end_point_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'end_point_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'range) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Range>)))
  "Returns string type for a message object of type '<Range>"
  "ros_sensor_msgs/Range")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Range)))
  "Returns string type for a message object of type 'Range"
  "ros_sensor_msgs/Range")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Range>)))
  "Returns md5sum for a message object of type '<Range>"
  "e5ee2cd940f60a30182714cdfd9f49b4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Range)))
  "Returns md5sum for a message object of type 'Range"
  "e5ee2cd940f60a30182714cdfd9f49b4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Range>)))
  "Returns full string definition for message of type '<Range>"
  (cl:format cl:nil "# Range to specified object~%string  end_point_id~%float64 range~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Range)))
  "Returns full string definition for message of type 'Range"
  (cl:format cl:nil "# Range to specified object~%string  end_point_id~%float64 range~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Range>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'end_point_id))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Range>))
  "Converts a ROS message object to a list"
  (cl:list 'Range
    (cl:cons ':end_point_id (end_point_id msg))
    (cl:cons ':range (range msg))
))
