; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude FixStatus.msg.html

(cl:defclass <FixStatus> (roslisp-msg-protocol:ros-message)
  ((fix
    :reader fix
    :initarg :fix
    :type ros_sensor_msgs-msg:FixType
    :initform (cl:make-instance 'ros_sensor_msgs-msg:FixType))
   (numSvs
    :reader numSvs
    :initarg :numSvs
    :type cl:integer
    :initform 0)
   (ttff
    :reader ttff
    :initarg :ttff
    :type cl:float
    :initform 0.0))
)

(cl:defclass FixStatus (<FixStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FixStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FixStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<FixStatus> is deprecated: use ros_sensor_msgs-msg:FixStatus instead.")))

(cl:ensure-generic-function 'fix-val :lambda-list '(m))
(cl:defmethod fix-val ((m <FixStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:fix-val is deprecated.  Use ros_sensor_msgs-msg:fix instead.")
  (fix m))

(cl:ensure-generic-function 'numSvs-val :lambda-list '(m))
(cl:defmethod numSvs-val ((m <FixStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:numSvs-val is deprecated.  Use ros_sensor_msgs-msg:numSvs instead.")
  (numSvs m))

(cl:ensure-generic-function 'ttff-val :lambda-list '(m))
(cl:defmethod ttff-val ((m <FixStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:ttff-val is deprecated.  Use ros_sensor_msgs-msg:ttff instead.")
  (ttff m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FixStatus>) ostream)
  "Serializes a message object of type '<FixStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'fix) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numSvs)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'numSvs)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'numSvs)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'numSvs)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ttff))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FixStatus>) istream)
  "Deserializes a message object of type '<FixStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'fix) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numSvs)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'numSvs)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'numSvs)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'numSvs)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ttff) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FixStatus>)))
  "Returns string type for a message object of type '<FixStatus>"
  "ros_sensor_msgs/FixStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FixStatus)))
  "Returns string type for a message object of type 'FixStatus"
  "ros_sensor_msgs/FixStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FixStatus>)))
  "Returns md5sum for a message object of type '<FixStatus>"
  "77b3f1a3a6c728c0e4055a4f39c84ef4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FixStatus)))
  "Returns md5sum for a message object of type 'FixStatus"
  "77b3f1a3a6c728c0e4055a4f39c84ef4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FixStatus>)))
  "Returns full string definition for message of type '<FixStatus>"
  (cl:format cl:nil "# # FixStatus~%~%FixType fix~%uint32  numSvs~%float64  ttff~%================================================================================~%MSG: ros_sensor_msgs/FixType~%## Fix Type~%~%uint8 FixTypeNone = 0~%uint8 FixTypeDeadReckoning = 1~%uint8 FixType2D = 2~%uint8 FixType3D = 3~%uint8 FixTypeDRand3D = 4 ## Dead reckoning and GPS fix~%uint8 FixTypeTimeOnly = 5~%uint8 FixTypeStatic = 9~%~%uint8 type~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FixStatus)))
  "Returns full string definition for message of type 'FixStatus"
  (cl:format cl:nil "# # FixStatus~%~%FixType fix~%uint32  numSvs~%float64  ttff~%================================================================================~%MSG: ros_sensor_msgs/FixType~%## Fix Type~%~%uint8 FixTypeNone = 0~%uint8 FixTypeDeadReckoning = 1~%uint8 FixType2D = 2~%uint8 FixType3D = 3~%uint8 FixTypeDRand3D = 4 ## Dead reckoning and GPS fix~%uint8 FixTypeTimeOnly = 5~%uint8 FixTypeStatic = 9~%~%uint8 type~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FixStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'fix))
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FixStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'FixStatus
    (cl:cons ':fix (fix msg))
    (cl:cons ':numSvs (numSvs msg))
    (cl:cons ':ttff (ttff msg))
))
