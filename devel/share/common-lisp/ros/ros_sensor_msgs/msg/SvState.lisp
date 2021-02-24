; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude SvState.msg.html

(cl:defclass <SvState> (roslisp-msg-protocol:ros-message)
  ((prn
    :reader prn
    :initarg :prn
    :type cl:fixnum
    :initform 0)
   (position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (velocity
    :reader velocity
    :initarg :velocity
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist))
   (svClockCorrection
    :reader svClockCorrection
    :initarg :svClockCorrection
    :type cl:float
    :initform 0.0))
)

(cl:defclass SvState (<SvState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SvState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SvState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<SvState> is deprecated: use ros_sensor_msgs-msg:SvState instead.")))

(cl:ensure-generic-function 'prn-val :lambda-list '(m))
(cl:defmethod prn-val ((m <SvState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:prn-val is deprecated.  Use ros_sensor_msgs-msg:prn instead.")
  (prn m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <SvState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:position-val is deprecated.  Use ros_sensor_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <SvState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:velocity-val is deprecated.  Use ros_sensor_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'svClockCorrection-val :lambda-list '(m))
(cl:defmethod svClockCorrection-val ((m <SvState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:svClockCorrection-val is deprecated.  Use ros_sensor_msgs-msg:svClockCorrection instead.")
  (svClockCorrection m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SvState>) ostream)
  "Serializes a message object of type '<SvState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'prn)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'prn)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'svClockCorrection))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SvState>) istream)
  "Deserializes a message object of type '<SvState>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'prn)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'prn)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'svClockCorrection) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SvState>)))
  "Returns string type for a message object of type '<SvState>"
  "ros_sensor_msgs/SvState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SvState)))
  "Returns string type for a message object of type 'SvState"
  "ros_sensor_msgs/SvState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SvState>)))
  "Returns md5sum for a message object of type '<SvState>"
  "f2297006b8e3021b7976c30f47c3e4ff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SvState)))
  "Returns md5sum for a message object of type 'SvState"
  "f2297006b8e3021b7976c30f47c3e4ff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SvState>)))
  "Returns full string definition for message of type '<SvState>"
  (cl:format cl:nil "## Satellite vehicle state information~%~%uint16                prn                 # GPS [1-32], GLONASS may be negative~%geometry_msgs/Point   position            # Satellite position in ECEF [m]~%geometry_msgs/Twist   velocity            # Satellite velocity in ECEF [m/s]~%float64               svClockCorrection   # Satellite clock correction [m]~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SvState)))
  "Returns full string definition for message of type 'SvState"
  (cl:format cl:nil "## Satellite vehicle state information~%~%uint16                prn                 # GPS [1-32], GLONASS may be negative~%geometry_msgs/Point   position            # Satellite position in ECEF [m]~%geometry_msgs/Twist   velocity            # Satellite velocity in ECEF [m/s]~%float64               svClockCorrection   # Satellite clock correction [m]~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SvState>))
  (cl:+ 0
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SvState>))
  "Converts a ROS message object to a list"
  (cl:list 'SvState
    (cl:cons ':prn (prn msg))
    (cl:cons ':position (position msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':svClockCorrection (svClockCorrection msg))
))
