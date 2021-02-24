; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude VehicleCanData.msg.html

(cl:defclass <VehicleCanData> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (vehicleSpeed
    :reader vehicleSpeed
    :initarg :vehicleSpeed
    :type cl:float
    :initform 0.0)
   (yawRate
    :reader yawRate
    :initarg :yawRate
    :type cl:float
    :initform 0.0)
   (frontLeftWheelSpeed
    :reader frontLeftWheelSpeed
    :initarg :frontLeftWheelSpeed
    :type cl:float
    :initform 0.0)
   (frontRightWheelSpeed
    :reader frontRightWheelSpeed
    :initarg :frontRightWheelSpeed
    :type cl:float
    :initform 0.0)
   (rearLeftWheelSpeed
    :reader rearLeftWheelSpeed
    :initarg :rearLeftWheelSpeed
    :type cl:float
    :initform 0.0)
   (rearRightWheelSpeed
    :reader rearRightWheelSpeed
    :initarg :rearRightWheelSpeed
    :type cl:float
    :initform 0.0)
   (steerAngle
    :reader steerAngle
    :initarg :steerAngle
    :type cl:float
    :initform 0.0)
   (steerAngleRate
    :reader steerAngleRate
    :initarg :steerAngleRate
    :type cl:float
    :initform 0.0)
   (frontLeftTirePressure
    :reader frontLeftTirePressure
    :initarg :frontLeftTirePressure
    :type cl:float
    :initform 0.0)
   (frontRightTirePressure
    :reader frontRightTirePressure
    :initarg :frontRightTirePressure
    :type cl:float
    :initform 0.0)
   (rearLeftTirePressure
    :reader rearLeftTirePressure
    :initarg :rearLeftTirePressure
    :type cl:float
    :initform 0.0)
   (rearRightTirePressure
    :reader rearRightTirePressure
    :initarg :rearRightTirePressure
    :type cl:float
    :initform 0.0))
)

(cl:defclass VehicleCanData (<VehicleCanData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleCanData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleCanData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<VehicleCanData> is deprecated: use ros_sensor_msgs-msg:VehicleCanData instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <VehicleCanData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:header-val is deprecated.  Use ros_sensor_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'vehicleSpeed-val :lambda-list '(m))
(cl:defmethod vehicleSpeed-val ((m <VehicleCanData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:vehicleSpeed-val is deprecated.  Use ros_sensor_msgs-msg:vehicleSpeed instead.")
  (vehicleSpeed m))

(cl:ensure-generic-function 'yawRate-val :lambda-list '(m))
(cl:defmethod yawRate-val ((m <VehicleCanData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:yawRate-val is deprecated.  Use ros_sensor_msgs-msg:yawRate instead.")
  (yawRate m))

(cl:ensure-generic-function 'frontLeftWheelSpeed-val :lambda-list '(m))
(cl:defmethod frontLeftWheelSpeed-val ((m <VehicleCanData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:frontLeftWheelSpeed-val is deprecated.  Use ros_sensor_msgs-msg:frontLeftWheelSpeed instead.")
  (frontLeftWheelSpeed m))

(cl:ensure-generic-function 'frontRightWheelSpeed-val :lambda-list '(m))
(cl:defmethod frontRightWheelSpeed-val ((m <VehicleCanData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:frontRightWheelSpeed-val is deprecated.  Use ros_sensor_msgs-msg:frontRightWheelSpeed instead.")
  (frontRightWheelSpeed m))

(cl:ensure-generic-function 'rearLeftWheelSpeed-val :lambda-list '(m))
(cl:defmethod rearLeftWheelSpeed-val ((m <VehicleCanData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:rearLeftWheelSpeed-val is deprecated.  Use ros_sensor_msgs-msg:rearLeftWheelSpeed instead.")
  (rearLeftWheelSpeed m))

(cl:ensure-generic-function 'rearRightWheelSpeed-val :lambda-list '(m))
(cl:defmethod rearRightWheelSpeed-val ((m <VehicleCanData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:rearRightWheelSpeed-val is deprecated.  Use ros_sensor_msgs-msg:rearRightWheelSpeed instead.")
  (rearRightWheelSpeed m))

(cl:ensure-generic-function 'steerAngle-val :lambda-list '(m))
(cl:defmethod steerAngle-val ((m <VehicleCanData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:steerAngle-val is deprecated.  Use ros_sensor_msgs-msg:steerAngle instead.")
  (steerAngle m))

(cl:ensure-generic-function 'steerAngleRate-val :lambda-list '(m))
(cl:defmethod steerAngleRate-val ((m <VehicleCanData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:steerAngleRate-val is deprecated.  Use ros_sensor_msgs-msg:steerAngleRate instead.")
  (steerAngleRate m))

(cl:ensure-generic-function 'frontLeftTirePressure-val :lambda-list '(m))
(cl:defmethod frontLeftTirePressure-val ((m <VehicleCanData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:frontLeftTirePressure-val is deprecated.  Use ros_sensor_msgs-msg:frontLeftTirePressure instead.")
  (frontLeftTirePressure m))

(cl:ensure-generic-function 'frontRightTirePressure-val :lambda-list '(m))
(cl:defmethod frontRightTirePressure-val ((m <VehicleCanData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:frontRightTirePressure-val is deprecated.  Use ros_sensor_msgs-msg:frontRightTirePressure instead.")
  (frontRightTirePressure m))

(cl:ensure-generic-function 'rearLeftTirePressure-val :lambda-list '(m))
(cl:defmethod rearLeftTirePressure-val ((m <VehicleCanData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:rearLeftTirePressure-val is deprecated.  Use ros_sensor_msgs-msg:rearLeftTirePressure instead.")
  (rearLeftTirePressure m))

(cl:ensure-generic-function 'rearRightTirePressure-val :lambda-list '(m))
(cl:defmethod rearRightTirePressure-val ((m <VehicleCanData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:rearRightTirePressure-val is deprecated.  Use ros_sensor_msgs-msg:rearRightTirePressure instead.")
  (rearRightTirePressure m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleCanData>) ostream)
  "Serializes a message object of type '<VehicleCanData>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vehicleSpeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yawRate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'frontLeftWheelSpeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'frontRightWheelSpeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rearLeftWheelSpeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rearRightWheelSpeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'steerAngle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'steerAngleRate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'frontLeftTirePressure))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'frontRightTirePressure))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rearLeftTirePressure))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rearRightTirePressure))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleCanData>) istream)
  "Deserializes a message object of type '<VehicleCanData>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vehicleSpeed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yawRate) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'frontLeftWheelSpeed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'frontRightWheelSpeed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rearLeftWheelSpeed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rearRightWheelSpeed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steerAngle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steerAngleRate) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'frontLeftTirePressure) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'frontRightTirePressure) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rearLeftTirePressure) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rearRightTirePressure) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleCanData>)))
  "Returns string type for a message object of type '<VehicleCanData>"
  "ros_sensor_msgs/VehicleCanData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleCanData)))
  "Returns string type for a message object of type 'VehicleCanData"
  "ros_sensor_msgs/VehicleCanData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleCanData>)))
  "Returns md5sum for a message object of type '<VehicleCanData>"
  "75538c77ee37258cf3ed3bf6d0bd45c3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleCanData)))
  "Returns md5sum for a message object of type 'VehicleCanData"
  "75538c77ee37258cf3ed3bf6d0bd45c3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleCanData>)))
  "Returns full string definition for message of type '<VehicleCanData>"
  (cl:format cl:nil "## Message for vehicle data from CAN bus~%std_msgs/Header   header~%~%float32 vehicleSpeed~%float32 yawRate~%~%float32 frontLeftWheelSpeed~%float32 frontRightWheelSpeed~%float32 rearLeftWheelSpeed~%float32 rearRightWheelSpeed~%~%float32 steerAngle~%float32 steerAngleRate~%~%float32 frontLeftTirePressure~%float32 frontRightTirePressure~%float32 rearLeftTirePressure~%float32 rearRightTirePressure~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleCanData)))
  "Returns full string definition for message of type 'VehicleCanData"
  (cl:format cl:nil "## Message for vehicle data from CAN bus~%std_msgs/Header   header~%~%float32 vehicleSpeed~%float32 yawRate~%~%float32 frontLeftWheelSpeed~%float32 frontRightWheelSpeed~%float32 rearLeftWheelSpeed~%float32 rearRightWheelSpeed~%~%float32 steerAngle~%float32 steerAngleRate~%~%float32 frontLeftTirePressure~%float32 frontRightTirePressure~%float32 rearLeftTirePressure~%float32 rearRightTirePressure~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleCanData>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleCanData>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleCanData
    (cl:cons ':header (header msg))
    (cl:cons ':vehicleSpeed (vehicleSpeed msg))
    (cl:cons ':yawRate (yawRate msg))
    (cl:cons ':frontLeftWheelSpeed (frontLeftWheelSpeed msg))
    (cl:cons ':frontRightWheelSpeed (frontRightWheelSpeed msg))
    (cl:cons ':rearLeftWheelSpeed (rearLeftWheelSpeed msg))
    (cl:cons ':rearRightWheelSpeed (rearRightWheelSpeed msg))
    (cl:cons ':steerAngle (steerAngle msg))
    (cl:cons ':steerAngleRate (steerAngleRate msg))
    (cl:cons ':frontLeftTirePressure (frontLeftTirePressure msg))
    (cl:cons ':frontRightTirePressure (frontRightTirePressure msg))
    (cl:cons ':rearLeftTirePressure (rearLeftTirePressure msg))
    (cl:cons ':rearRightTirePressure (rearRightTirePressure msg))
))
