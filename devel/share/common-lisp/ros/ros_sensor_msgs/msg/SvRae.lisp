; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude SvRae.msg.html

(cl:defclass <SvRae> (roslisp-msg-protocol:ros-message)
  ((prn
    :reader prn
    :initarg :prn
    :type cl:integer
    :initform 0)
   (range
    :reader range
    :initarg :range
    :type cl:float
    :initform 0.0)
   (az
    :reader az
    :initarg :az
    :type cl:float
    :initform 0.0)
   (el
    :reader el
    :initarg :el
    :type cl:float
    :initform 0.0))
)

(cl:defclass SvRae (<SvRae>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SvRae>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SvRae)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<SvRae> is deprecated: use ros_sensor_msgs-msg:SvRae instead.")))

(cl:ensure-generic-function 'prn-val :lambda-list '(m))
(cl:defmethod prn-val ((m <SvRae>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:prn-val is deprecated.  Use ros_sensor_msgs-msg:prn instead.")
  (prn m))

(cl:ensure-generic-function 'range-val :lambda-list '(m))
(cl:defmethod range-val ((m <SvRae>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:range-val is deprecated.  Use ros_sensor_msgs-msg:range instead.")
  (range m))

(cl:ensure-generic-function 'az-val :lambda-list '(m))
(cl:defmethod az-val ((m <SvRae>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:az-val is deprecated.  Use ros_sensor_msgs-msg:az instead.")
  (az m))

(cl:ensure-generic-function 'el-val :lambda-list '(m))
(cl:defmethod el-val ((m <SvRae>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:el-val is deprecated.  Use ros_sensor_msgs-msg:el instead.")
  (el m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SvRae>) ostream)
  "Serializes a message object of type '<SvRae>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'prn)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'prn)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'prn)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'prn)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'range))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'az))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'el))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SvRae>) istream)
  "Deserializes a message object of type '<SvRae>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'prn)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'prn)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'prn)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'prn)) (cl:read-byte istream))
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'az) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'el) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SvRae>)))
  "Returns string type for a message object of type '<SvRae>"
  "ros_sensor_msgs/SvRae")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SvRae)))
  "Returns string type for a message object of type 'SvRae"
  "ros_sensor_msgs/SvRae")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SvRae>)))
  "Returns md5sum for a message object of type '<SvRae>"
  "d34951c1a7060337ca1e7e3cb824c99d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SvRae)))
  "Returns md5sum for a message object of type 'SvRae"
  "d34951c1a7060337ca1e7e3cb824c99d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SvRae>)))
  "Returns full string definition for message of type '<SvRae>"
  (cl:format cl:nil "# Range, az, and el information~%~%uint32          prn            # GPS [1-32], GLONASS may be negative~%float64         range          # range to a satellite vehicle from a point [m]~%float64         az             # relative azimuth angle to a satellite vehicle from a point [deg]~%float64         el             # relateive elevation angle to a satellite vehicle from a point [deg]~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SvRae)))
  "Returns full string definition for message of type 'SvRae"
  (cl:format cl:nil "# Range, az, and el information~%~%uint32          prn            # GPS [1-32], GLONASS may be negative~%float64         range          # range to a satellite vehicle from a point [m]~%float64         az             # relative azimuth angle to a satellite vehicle from a point [deg]~%float64         el             # relateive elevation angle to a satellite vehicle from a point [deg]~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SvRae>))
  (cl:+ 0
     4
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SvRae>))
  "Converts a ROS message object to a list"
  (cl:list 'SvRae
    (cl:cons ':prn (prn msg))
    (cl:cons ':range (range msg))
    (cl:cons ':az (az msg))
    (cl:cons ':el (el msg))
))
