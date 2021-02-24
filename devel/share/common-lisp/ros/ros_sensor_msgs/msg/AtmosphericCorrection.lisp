; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude AtmosphericCorrection.msg.html

(cl:defclass <AtmosphericCorrection> (roslisp-msg-protocol:ros-message)
  ((prn
    :reader prn
    :initarg :prn
    :type cl:fixnum
    :initform 0)
   (ionosphereCorrectionL1
    :reader ionosphereCorrectionL1
    :initarg :ionosphereCorrectionL1
    :type cl:float
    :initform 0.0)
   (ionosphereCorrectionL2
    :reader ionosphereCorrectionL2
    :initarg :ionosphereCorrectionL2
    :type cl:float
    :initform 0.0)
   (troposphereCorrection
    :reader troposphereCorrection
    :initarg :troposphereCorrection
    :type cl:float
    :initform 0.0))
)

(cl:defclass AtmosphericCorrection (<AtmosphericCorrection>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AtmosphericCorrection>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AtmosphericCorrection)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<AtmosphericCorrection> is deprecated: use ros_sensor_msgs-msg:AtmosphericCorrection instead.")))

(cl:ensure-generic-function 'prn-val :lambda-list '(m))
(cl:defmethod prn-val ((m <AtmosphericCorrection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:prn-val is deprecated.  Use ros_sensor_msgs-msg:prn instead.")
  (prn m))

(cl:ensure-generic-function 'ionosphereCorrectionL1-val :lambda-list '(m))
(cl:defmethod ionosphereCorrectionL1-val ((m <AtmosphericCorrection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:ionosphereCorrectionL1-val is deprecated.  Use ros_sensor_msgs-msg:ionosphereCorrectionL1 instead.")
  (ionosphereCorrectionL1 m))

(cl:ensure-generic-function 'ionosphereCorrectionL2-val :lambda-list '(m))
(cl:defmethod ionosphereCorrectionL2-val ((m <AtmosphericCorrection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:ionosphereCorrectionL2-val is deprecated.  Use ros_sensor_msgs-msg:ionosphereCorrectionL2 instead.")
  (ionosphereCorrectionL2 m))

(cl:ensure-generic-function 'troposphereCorrection-val :lambda-list '(m))
(cl:defmethod troposphereCorrection-val ((m <AtmosphericCorrection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:troposphereCorrection-val is deprecated.  Use ros_sensor_msgs-msg:troposphereCorrection instead.")
  (troposphereCorrection m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AtmosphericCorrection>) ostream)
  "Serializes a message object of type '<AtmosphericCorrection>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'prn)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'prn)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ionosphereCorrectionL1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ionosphereCorrectionL2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'troposphereCorrection))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AtmosphericCorrection>) istream)
  "Deserializes a message object of type '<AtmosphericCorrection>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'prn)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'prn)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ionosphereCorrectionL1) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ionosphereCorrectionL2) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'troposphereCorrection) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AtmosphericCorrection>)))
  "Returns string type for a message object of type '<AtmosphericCorrection>"
  "ros_sensor_msgs/AtmosphericCorrection")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AtmosphericCorrection)))
  "Returns string type for a message object of type 'AtmosphericCorrection"
  "ros_sensor_msgs/AtmosphericCorrection")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AtmosphericCorrection>)))
  "Returns md5sum for a message object of type '<AtmosphericCorrection>"
  "92e3c73c19da61c0e7d80415c20426e9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AtmosphericCorrection)))
  "Returns md5sum for a message object of type 'AtmosphericCorrection"
  "92e3c73c19da61c0e7d80415c20426e9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AtmosphericCorrection>)))
  "Returns full string definition for message of type '<AtmosphericCorrection>"
  (cl:format cl:nil "## The GPS atmospheric correction ~%~%uint16  prn                    # GPS [1-32], GLONASS may be negative~%float64 ionosphereCorrectionL1 # Pseudorange ionosphere correction (carrier correction has opposite sign) [m]~%float64 ionosphereCorrectionL2 # Pseudorange ionosphere correction (carrier correction has opposite sign) [m]~%float64 troposphereCorrection  # Troposphere correction [m]~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AtmosphericCorrection)))
  "Returns full string definition for message of type 'AtmosphericCorrection"
  (cl:format cl:nil "## The GPS atmospheric correction ~%~%uint16  prn                    # GPS [1-32], GLONASS may be negative~%float64 ionosphereCorrectionL1 # Pseudorange ionosphere correction (carrier correction has opposite sign) [m]~%float64 ionosphereCorrectionL2 # Pseudorange ionosphere correction (carrier correction has opposite sign) [m]~%float64 troposphereCorrection  # Troposphere correction [m]~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AtmosphericCorrection>))
  (cl:+ 0
     2
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AtmosphericCorrection>))
  "Converts a ROS message object to a list"
  (cl:list 'AtmosphericCorrection
    (cl:cons ':prn (prn msg))
    (cl:cons ':ionosphereCorrectionL1 (ionosphereCorrectionL1 msg))
    (cl:cons ':ionosphereCorrectionL2 (ionosphereCorrectionL2 msg))
    (cl:cons ':troposphereCorrection (troposphereCorrection msg))
))
