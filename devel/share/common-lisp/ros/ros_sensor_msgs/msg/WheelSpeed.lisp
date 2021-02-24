; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude WheelSpeed.msg.html

(cl:defclass <WheelSpeed> (roslisp-msg-protocol:ros-message)
  ((wheel_speed
    :reader wheel_speed
    :initarg :wheel_speed
    :type cl:float
    :initform 0.0)
   (wheel_speed_variance
    :reader wheel_speed_variance
    :initarg :wheel_speed_variance
    :type cl:float
    :initform 0.0)
   (wheel_name
    :reader wheel_name
    :initarg :wheel_name
    :type cl:string
    :initform ""))
)

(cl:defclass WheelSpeed (<WheelSpeed>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WheelSpeed>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WheelSpeed)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<WheelSpeed> is deprecated: use ros_sensor_msgs-msg:WheelSpeed instead.")))

(cl:ensure-generic-function 'wheel_speed-val :lambda-list '(m))
(cl:defmethod wheel_speed-val ((m <WheelSpeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:wheel_speed-val is deprecated.  Use ros_sensor_msgs-msg:wheel_speed instead.")
  (wheel_speed m))

(cl:ensure-generic-function 'wheel_speed_variance-val :lambda-list '(m))
(cl:defmethod wheel_speed_variance-val ((m <WheelSpeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:wheel_speed_variance-val is deprecated.  Use ros_sensor_msgs-msg:wheel_speed_variance instead.")
  (wheel_speed_variance m))

(cl:ensure-generic-function 'wheel_name-val :lambda-list '(m))
(cl:defmethod wheel_name-val ((m <WheelSpeed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:wheel_name-val is deprecated.  Use ros_sensor_msgs-msg:wheel_name instead.")
  (wheel_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WheelSpeed>) ostream)
  "Serializes a message object of type '<WheelSpeed>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'wheel_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'wheel_speed_variance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'wheel_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'wheel_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WheelSpeed>) istream)
  "Deserializes a message object of type '<WheelSpeed>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wheel_speed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wheel_speed_variance) (roslisp-utils:decode-single-float-bits bits)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WheelSpeed>)))
  "Returns string type for a message object of type '<WheelSpeed>"
  "ros_sensor_msgs/WheelSpeed")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WheelSpeed)))
  "Returns string type for a message object of type 'WheelSpeed"
  "ros_sensor_msgs/WheelSpeed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WheelSpeed>)))
  "Returns md5sum for a message object of type '<WheelSpeed>"
  "a79d594773fea65f5c40acf76550658c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WheelSpeed)))
  "Returns md5sum for a message object of type 'WheelSpeed"
  "a79d594773fea65f5c40acf76550658c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WheelSpeed>)))
  "Returns full string definition for message of type '<WheelSpeed>"
  (cl:format cl:nil "float64 	wheel_speed				    # m/s~%float32 	wheel_speed_variance 	# (m/s)^2~%string    wheel_name~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WheelSpeed)))
  "Returns full string definition for message of type 'WheelSpeed"
  (cl:format cl:nil "float64 	wheel_speed				    # m/s~%float32 	wheel_speed_variance 	# (m/s)^2~%string    wheel_name~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WheelSpeed>))
  (cl:+ 0
     8
     4
     4 (cl:length (cl:slot-value msg 'wheel_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WheelSpeed>))
  "Converts a ROS message object to a list"
  (cl:list 'WheelSpeed
    (cl:cons ':wheel_speed (wheel_speed msg))
    (cl:cons ':wheel_speed_variance (wheel_speed_variance msg))
    (cl:cons ':wheel_name (wheel_name msg))
))
