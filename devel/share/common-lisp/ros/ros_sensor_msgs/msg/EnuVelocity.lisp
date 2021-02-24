; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude EnuVelocity.msg.html

(cl:defclass <EnuVelocity> (roslisp-msg-protocol:ros-message)
  ((eastVelocity
    :reader eastVelocity
    :initarg :eastVelocity
    :type cl:float
    :initform 0.0)
   (northVelocity
    :reader northVelocity
    :initarg :northVelocity
    :type cl:float
    :initform 0.0)
   (upVelocity
    :reader upVelocity
    :initarg :upVelocity
    :type cl:float
    :initform 0.0)
   (horizontalAccuracy
    :reader horizontalAccuracy
    :initarg :horizontalAccuracy
    :type cl:float
    :initform 0.0)
   (verticalAccuracy
    :reader verticalAccuracy
    :initarg :verticalAccuracy
    :type cl:float
    :initform 0.0))
)

(cl:defclass EnuVelocity (<EnuVelocity>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EnuVelocity>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EnuVelocity)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<EnuVelocity> is deprecated: use ros_sensor_msgs-msg:EnuVelocity instead.")))

(cl:ensure-generic-function 'eastVelocity-val :lambda-list '(m))
(cl:defmethod eastVelocity-val ((m <EnuVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:eastVelocity-val is deprecated.  Use ros_sensor_msgs-msg:eastVelocity instead.")
  (eastVelocity m))

(cl:ensure-generic-function 'northVelocity-val :lambda-list '(m))
(cl:defmethod northVelocity-val ((m <EnuVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:northVelocity-val is deprecated.  Use ros_sensor_msgs-msg:northVelocity instead.")
  (northVelocity m))

(cl:ensure-generic-function 'upVelocity-val :lambda-list '(m))
(cl:defmethod upVelocity-val ((m <EnuVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:upVelocity-val is deprecated.  Use ros_sensor_msgs-msg:upVelocity instead.")
  (upVelocity m))

(cl:ensure-generic-function 'horizontalAccuracy-val :lambda-list '(m))
(cl:defmethod horizontalAccuracy-val ((m <EnuVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:horizontalAccuracy-val is deprecated.  Use ros_sensor_msgs-msg:horizontalAccuracy instead.")
  (horizontalAccuracy m))

(cl:ensure-generic-function 'verticalAccuracy-val :lambda-list '(m))
(cl:defmethod verticalAccuracy-val ((m <EnuVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:verticalAccuracy-val is deprecated.  Use ros_sensor_msgs-msg:verticalAccuracy instead.")
  (verticalAccuracy m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EnuVelocity>) ostream)
  "Serializes a message object of type '<EnuVelocity>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'eastVelocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'northVelocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'upVelocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'horizontalAccuracy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'verticalAccuracy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EnuVelocity>) istream)
  "Deserializes a message object of type '<EnuVelocity>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'eastVelocity) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'northVelocity) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'upVelocity) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'horizontalAccuracy) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'verticalAccuracy) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EnuVelocity>)))
  "Returns string type for a message object of type '<EnuVelocity>"
  "ros_sensor_msgs/EnuVelocity")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EnuVelocity)))
  "Returns string type for a message object of type 'EnuVelocity"
  "ros_sensor_msgs/EnuVelocity")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EnuVelocity>)))
  "Returns md5sum for a message object of type '<EnuVelocity>"
  "35b89ee4c05fa6d6175468cce6ddc8fd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EnuVelocity)))
  "Returns md5sum for a message object of type 'EnuVelocity"
  "35b89ee4c05fa6d6175468cce6ddc8fd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EnuVelocity>)))
  "Returns full string definition for message of type '<EnuVelocity>"
  (cl:format cl:nil "float64					 eastVelocity~%float64                  northVelocity~%float64                  upVelocity~%float32                  horizontalAccuracy~%float32                  verticalAccuracy    ~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EnuVelocity)))
  "Returns full string definition for message of type 'EnuVelocity"
  (cl:format cl:nil "float64					 eastVelocity~%float64                  northVelocity~%float64                  upVelocity~%float32                  horizontalAccuracy~%float32                  verticalAccuracy    ~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EnuVelocity>))
  (cl:+ 0
     8
     8
     8
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EnuVelocity>))
  "Converts a ROS message object to a list"
  (cl:list 'EnuVelocity
    (cl:cons ':eastVelocity (eastVelocity msg))
    (cl:cons ':northVelocity (northVelocity msg))
    (cl:cons ':upVelocity (upVelocity msg))
    (cl:cons ':horizontalAccuracy (horizontalAccuracy msg))
    (cl:cons ':verticalAccuracy (verticalAccuracy msg))
))
