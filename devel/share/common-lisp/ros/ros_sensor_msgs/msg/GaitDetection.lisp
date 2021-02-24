; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude GaitDetection.msg.html

(cl:defclass <GaitDetection> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (zeroAccBool
    :reader zeroAccBool
    :initarg :zeroAccBool
    :type cl:boolean
    :initform cl:nil)
   (underLocalAccStdBool
    :reader underLocalAccStdBool
    :initarg :underLocalAccStdBool
    :type cl:boolean
    :initform cl:nil)
   (zeroAngVelBool
    :reader zeroAngVelBool
    :initarg :zeroAngVelBool
    :type cl:boolean
    :initform cl:nil)
   (stepDetectedBool
    :reader stepDetectedBool
    :initarg :stepDetectedBool
    :type cl:boolean
    :initform cl:nil)
   (posBwrtLinR
    :reader posBwrtLinR
    :initarg :posBwrtLinR
    :type ros_sensor_msgs-msg:Vector3Cov
    :initform (cl:make-instance 'ros_sensor_msgs-msg:Vector3Cov))
   (stepLength
    :reader stepLength
    :initarg :stepLength
    :type cl:float
    :initform 0.0)
   (stepHeight
    :reader stepHeight
    :initarg :stepHeight
    :type cl:float
    :initform 0.0)
   (stepAngle
    :reader stepAngle
    :initarg :stepAngle
    :type cl:float
    :initform 0.0))
)

(cl:defclass GaitDetection (<GaitDetection>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GaitDetection>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GaitDetection)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<GaitDetection> is deprecated: use ros_sensor_msgs-msg:GaitDetection instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GaitDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:header-val is deprecated.  Use ros_sensor_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'zeroAccBool-val :lambda-list '(m))
(cl:defmethod zeroAccBool-val ((m <GaitDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:zeroAccBool-val is deprecated.  Use ros_sensor_msgs-msg:zeroAccBool instead.")
  (zeroAccBool m))

(cl:ensure-generic-function 'underLocalAccStdBool-val :lambda-list '(m))
(cl:defmethod underLocalAccStdBool-val ((m <GaitDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:underLocalAccStdBool-val is deprecated.  Use ros_sensor_msgs-msg:underLocalAccStdBool instead.")
  (underLocalAccStdBool m))

(cl:ensure-generic-function 'zeroAngVelBool-val :lambda-list '(m))
(cl:defmethod zeroAngVelBool-val ((m <GaitDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:zeroAngVelBool-val is deprecated.  Use ros_sensor_msgs-msg:zeroAngVelBool instead.")
  (zeroAngVelBool m))

(cl:ensure-generic-function 'stepDetectedBool-val :lambda-list '(m))
(cl:defmethod stepDetectedBool-val ((m <GaitDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:stepDetectedBool-val is deprecated.  Use ros_sensor_msgs-msg:stepDetectedBool instead.")
  (stepDetectedBool m))

(cl:ensure-generic-function 'posBwrtLinR-val :lambda-list '(m))
(cl:defmethod posBwrtLinR-val ((m <GaitDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:posBwrtLinR-val is deprecated.  Use ros_sensor_msgs-msg:posBwrtLinR instead.")
  (posBwrtLinR m))

(cl:ensure-generic-function 'stepLength-val :lambda-list '(m))
(cl:defmethod stepLength-val ((m <GaitDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:stepLength-val is deprecated.  Use ros_sensor_msgs-msg:stepLength instead.")
  (stepLength m))

(cl:ensure-generic-function 'stepHeight-val :lambda-list '(m))
(cl:defmethod stepHeight-val ((m <GaitDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:stepHeight-val is deprecated.  Use ros_sensor_msgs-msg:stepHeight instead.")
  (stepHeight m))

(cl:ensure-generic-function 'stepAngle-val :lambda-list '(m))
(cl:defmethod stepAngle-val ((m <GaitDetection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:stepAngle-val is deprecated.  Use ros_sensor_msgs-msg:stepAngle instead.")
  (stepAngle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GaitDetection>) ostream)
  "Serializes a message object of type '<GaitDetection>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'zeroAccBool) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'underLocalAccStdBool) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'zeroAngVelBool) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'stepDetectedBool) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'posBwrtLinR) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'stepLength))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'stepHeight))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'stepAngle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GaitDetection>) istream)
  "Deserializes a message object of type '<GaitDetection>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'zeroAccBool) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'underLocalAccStdBool) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'zeroAngVelBool) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'stepDetectedBool) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'posBwrtLinR) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'stepLength) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'stepHeight) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'stepAngle) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GaitDetection>)))
  "Returns string type for a message object of type '<GaitDetection>"
  "ros_sensor_msgs/GaitDetection")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GaitDetection)))
  "Returns string type for a message object of type 'GaitDetection"
  "ros_sensor_msgs/GaitDetection")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GaitDetection>)))
  "Returns md5sum for a message object of type '<GaitDetection>"
  "f261dd9516cbda3f5e7d59b11e4500c5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GaitDetection)))
  "Returns md5sum for a message object of type 'GaitDetection"
  "f261dd9516cbda3f5e7d59b11e4500c5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GaitDetection>)))
  "Returns full string definition for message of type '<GaitDetection>"
  (cl:format cl:nil "~%std_msgs/Header header~%~%bool 		zeroAccBool~%bool 		underLocalAccStdBool~%bool 		zeroAngVelBool~%~%bool 		stepDetectedBool~%~%Vector3Cov 	posBwrtLinR~%~%float64 	stepLength~%float64 	stepHeight~%float64 	stepAngle~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ros_sensor_msgs/Vector3Cov~%geometry_msgs/Vector3 	value 		# unit~%float64[9] 				covariance 	# unit^2~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GaitDetection)))
  "Returns full string definition for message of type 'GaitDetection"
  (cl:format cl:nil "~%std_msgs/Header header~%~%bool 		zeroAccBool~%bool 		underLocalAccStdBool~%bool 		zeroAngVelBool~%~%bool 		stepDetectedBool~%~%Vector3Cov 	posBwrtLinR~%~%float64 	stepLength~%float64 	stepHeight~%float64 	stepAngle~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ros_sensor_msgs/Vector3Cov~%geometry_msgs/Vector3 	value 		# unit~%float64[9] 				covariance 	# unit^2~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GaitDetection>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'posBwrtLinR))
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GaitDetection>))
  "Converts a ROS message object to a list"
  (cl:list 'GaitDetection
    (cl:cons ':header (header msg))
    (cl:cons ':zeroAccBool (zeroAccBool msg))
    (cl:cons ':underLocalAccStdBool (underLocalAccStdBool msg))
    (cl:cons ':zeroAngVelBool (zeroAngVelBool msg))
    (cl:cons ':stepDetectedBool (stepDetectedBool msg))
    (cl:cons ':posBwrtLinR (posBwrtLinR msg))
    (cl:cons ':stepLength (stepLength msg))
    (cl:cons ':stepHeight (stepHeight msg))
    (cl:cons ':stepAngle (stepAngle msg))
))
