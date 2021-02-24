; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude NavState.msg.html

(cl:defclass <NavState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (parent_frame_id
    :reader parent_frame_id
    :initarg :parent_frame_id
    :type cl:string
    :initform "")
   (position
    :reader position
    :initarg :position
    :type ros_sensor_msgs-msg:Vector3Cov
    :initform (cl:make-instance 'ros_sensor_msgs-msg:Vector3Cov))
   (velocity
    :reader velocity
    :initarg :velocity
    :type ros_sensor_msgs-msg:Vector3Cov
    :initform (cl:make-instance 'ros_sensor_msgs-msg:Vector3Cov))
   (attitude
    :reader attitude
    :initarg :attitude
    :type ros_sensor_msgs-msg:QuaternionCov
    :initform (cl:make-instance 'ros_sensor_msgs-msg:QuaternionCov))
   (assuranceLevel
    :reader assuranceLevel
    :initarg :assuranceLevel
    :type ros_sensor_msgs-msg:AssuranceLevel
    :initform (cl:make-instance 'ros_sensor_msgs-msg:AssuranceLevel)))
)

(cl:defclass NavState (<NavState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<NavState> is deprecated: use ros_sensor_msgs-msg:NavState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <NavState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:header-val is deprecated.  Use ros_sensor_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'parent_frame_id-val :lambda-list '(m))
(cl:defmethod parent_frame_id-val ((m <NavState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:parent_frame_id-val is deprecated.  Use ros_sensor_msgs-msg:parent_frame_id instead.")
  (parent_frame_id m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <NavState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:position-val is deprecated.  Use ros_sensor_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <NavState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:velocity-val is deprecated.  Use ros_sensor_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'attitude-val :lambda-list '(m))
(cl:defmethod attitude-val ((m <NavState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:attitude-val is deprecated.  Use ros_sensor_msgs-msg:attitude instead.")
  (attitude m))

(cl:ensure-generic-function 'assuranceLevel-val :lambda-list '(m))
(cl:defmethod assuranceLevel-val ((m <NavState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:assuranceLevel-val is deprecated.  Use ros_sensor_msgs-msg:assuranceLevel instead.")
  (assuranceLevel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavState>) ostream)
  "Serializes a message object of type '<NavState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'parent_frame_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'parent_frame_id))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'attitude) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'assuranceLevel) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavState>) istream)
  "Deserializes a message object of type '<NavState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parent_frame_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'parent_frame_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'attitude) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'assuranceLevel) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavState>)))
  "Returns string type for a message object of type '<NavState>"
  "ros_sensor_msgs/NavState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavState)))
  "Returns string type for a message object of type 'NavState"
  "ros_sensor_msgs/NavState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavState>)))
  "Returns md5sum for a message object of type '<NavState>"
  "24804c40e60ccc8400a9fcc2cccc88b2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavState)))
  "Returns md5sum for a message object of type 'NavState"
  "24804c40e60ccc8400a9fcc2cccc88b2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavState>)))
  "Returns full string definition for message of type '<NavState>"
  (cl:format cl:nil "std_msgs/Header header~%string 			parent_frame_id~%~%Vector3Cov 		position		# m, m^2~%Vector3Cov 		velocity		# m/s, (m/s)^2~%QuaternionCov 	attitude		# none, rad^2~%AssuranceLevel  assuranceLevel~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ros_sensor_msgs/Vector3Cov~%geometry_msgs/Vector3 	value 		# unit~%float64[9] 				covariance 	# unit^2~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: ros_sensor_msgs/QuaternionCov~%geometry_msgs/Quaternion 	value~%float64[9] 				 	covariance 	# rad^2~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: ros_sensor_msgs/AssuranceLevel~%uint8  Normal   = 0~%uint8  Unknown  = 1~%uint8  Warning  = 2~%uint8  Attack   = 3~%~%uint8 level~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavState)))
  "Returns full string definition for message of type 'NavState"
  (cl:format cl:nil "std_msgs/Header header~%string 			parent_frame_id~%~%Vector3Cov 		position		# m, m^2~%Vector3Cov 		velocity		# m/s, (m/s)^2~%QuaternionCov 	attitude		# none, rad^2~%AssuranceLevel  assuranceLevel~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ros_sensor_msgs/Vector3Cov~%geometry_msgs/Vector3 	value 		# unit~%float64[9] 				covariance 	# unit^2~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: ros_sensor_msgs/QuaternionCov~%geometry_msgs/Quaternion 	value~%float64[9] 				 	covariance 	# rad^2~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: ros_sensor_msgs/AssuranceLevel~%uint8  Normal   = 0~%uint8  Unknown  = 1~%uint8  Warning  = 2~%uint8  Attack   = 3~%~%uint8 level~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'parent_frame_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'attitude))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'assuranceLevel))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavState>))
  "Converts a ROS message object to a list"
  (cl:list 'NavState
    (cl:cons ':header (header msg))
    (cl:cons ':parent_frame_id (parent_frame_id msg))
    (cl:cons ':position (position msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':attitude (attitude msg))
    (cl:cons ':assuranceLevel (assuranceLevel msg))
))
