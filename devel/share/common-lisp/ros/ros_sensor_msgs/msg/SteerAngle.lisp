; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude SteerAngle.msg.html

(cl:defclass <SteerAngle> (roslisp-msg-protocol:ros-message)
  ((steer_angle
    :reader steer_angle
    :initarg :steer_angle
    :type cl:float
    :initform 0.0)
   (steer_angle_variance
    :reader steer_angle_variance
    :initarg :steer_angle_variance
    :type cl:float
    :initform 0.0)
   (steer_angle_rate
    :reader steer_angle_rate
    :initarg :steer_angle_rate
    :type cl:float
    :initform 0.0)
   (steer_angle_rate_variance
    :reader steer_angle_rate_variance
    :initarg :steer_angle_rate_variance
    :type cl:float
    :initform 0.0)
   (wheel_name
    :reader wheel_name
    :initarg :wheel_name
    :type cl:string
    :initform ""))
)

(cl:defclass SteerAngle (<SteerAngle>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SteerAngle>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SteerAngle)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<SteerAngle> is deprecated: use ros_sensor_msgs-msg:SteerAngle instead.")))

(cl:ensure-generic-function 'steer_angle-val :lambda-list '(m))
(cl:defmethod steer_angle-val ((m <SteerAngle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:steer_angle-val is deprecated.  Use ros_sensor_msgs-msg:steer_angle instead.")
  (steer_angle m))

(cl:ensure-generic-function 'steer_angle_variance-val :lambda-list '(m))
(cl:defmethod steer_angle_variance-val ((m <SteerAngle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:steer_angle_variance-val is deprecated.  Use ros_sensor_msgs-msg:steer_angle_variance instead.")
  (steer_angle_variance m))

(cl:ensure-generic-function 'steer_angle_rate-val :lambda-list '(m))
(cl:defmethod steer_angle_rate-val ((m <SteerAngle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:steer_angle_rate-val is deprecated.  Use ros_sensor_msgs-msg:steer_angle_rate instead.")
  (steer_angle_rate m))

(cl:ensure-generic-function 'steer_angle_rate_variance-val :lambda-list '(m))
(cl:defmethod steer_angle_rate_variance-val ((m <SteerAngle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:steer_angle_rate_variance-val is deprecated.  Use ros_sensor_msgs-msg:steer_angle_rate_variance instead.")
  (steer_angle_rate_variance m))

(cl:ensure-generic-function 'wheel_name-val :lambda-list '(m))
(cl:defmethod wheel_name-val ((m <SteerAngle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:wheel_name-val is deprecated.  Use ros_sensor_msgs-msg:wheel_name instead.")
  (wheel_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SteerAngle>) ostream)
  "Serializes a message object of type '<SteerAngle>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'steer_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'steer_angle_variance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'steer_angle_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'steer_angle_rate_variance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'wheel_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'wheel_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SteerAngle>) istream)
  "Deserializes a message object of type '<SteerAngle>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steer_angle) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steer_angle_variance) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steer_angle_rate) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steer_angle_rate_variance) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'wheel_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'wheel_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SteerAngle>)))
  "Returns string type for a message object of type '<SteerAngle>"
  "ros_sensor_msgs/SteerAngle")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SteerAngle)))
  "Returns string type for a message object of type 'SteerAngle"
  "ros_sensor_msgs/SteerAngle")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SteerAngle>)))
  "Returns md5sum for a message object of type '<SteerAngle>"
  "c00ba70d13b583019559e4ba72c1a15a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SteerAngle)))
  "Returns md5sum for a message object of type 'SteerAngle"
  "c00ba70d13b583019559e4ba72c1a15a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SteerAngle>)))
  "Returns full string definition for message of type '<SteerAngle>"
  (cl:format cl:nil "float64    steer_angle				 # rad~%float64    steer_angle_variance 	 # rad^2~%float64    steer_angle_rate          # rad/s~%float64    steer_angle_rate_variance # (rad/s)^2~%string     wheel_name~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SteerAngle)))
  "Returns full string definition for message of type 'SteerAngle"
  (cl:format cl:nil "float64    steer_angle				 # rad~%float64    steer_angle_variance 	 # rad^2~%float64    steer_angle_rate          # rad/s~%float64    steer_angle_rate_variance # (rad/s)^2~%string     wheel_name~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SteerAngle>))
  (cl:+ 0
     8
     8
     8
     8
     4 (cl:length (cl:slot-value msg 'wheel_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SteerAngle>))
  "Converts a ROS message object to a list"
  (cl:list 'SteerAngle
    (cl:cons ':steer_angle (steer_angle msg))
    (cl:cons ':steer_angle_variance (steer_angle_variance msg))
    (cl:cons ':steer_angle_rate (steer_angle_rate msg))
    (cl:cons ':steer_angle_rate_variance (steer_angle_rate_variance msg))
    (cl:cons ':wheel_name (wheel_name msg))
))
