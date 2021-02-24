; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude NavInput.msg.html

(cl:defclass <NavInput> (roslisp-msg-protocol:ros-message)
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
   (angular_velocity
    :reader angular_velocity
    :initarg :angular_velocity
    :type ros_sensor_msgs-msg:Vector3Cov
    :initform (cl:make-instance 'ros_sensor_msgs-msg:Vector3Cov))
   (specific_force
    :reader specific_force
    :initarg :specific_force
    :type ros_sensor_msgs-msg:Vector3Cov
    :initform (cl:make-instance 'ros_sensor_msgs-msg:Vector3Cov)))
)

(cl:defclass NavInput (<NavInput>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavInput>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavInput)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<NavInput> is deprecated: use ros_sensor_msgs-msg:NavInput instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <NavInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:header-val is deprecated.  Use ros_sensor_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'parent_frame_id-val :lambda-list '(m))
(cl:defmethod parent_frame_id-val ((m <NavInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:parent_frame_id-val is deprecated.  Use ros_sensor_msgs-msg:parent_frame_id instead.")
  (parent_frame_id m))

(cl:ensure-generic-function 'angular_velocity-val :lambda-list '(m))
(cl:defmethod angular_velocity-val ((m <NavInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:angular_velocity-val is deprecated.  Use ros_sensor_msgs-msg:angular_velocity instead.")
  (angular_velocity m))

(cl:ensure-generic-function 'specific_force-val :lambda-list '(m))
(cl:defmethod specific_force-val ((m <NavInput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:specific_force-val is deprecated.  Use ros_sensor_msgs-msg:specific_force instead.")
  (specific_force m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavInput>) ostream)
  "Serializes a message object of type '<NavInput>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'parent_frame_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'parent_frame_id))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angular_velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'specific_force) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavInput>) istream)
  "Deserializes a message object of type '<NavInput>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parent_frame_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'parent_frame_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angular_velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'specific_force) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavInput>)))
  "Returns string type for a message object of type '<NavInput>"
  "ros_sensor_msgs/NavInput")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavInput)))
  "Returns string type for a message object of type 'NavInput"
  "ros_sensor_msgs/NavInput")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavInput>)))
  "Returns md5sum for a message object of type '<NavInput>"
  "6557125bee8e6f09abab155a5183d467")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavInput)))
  "Returns md5sum for a message object of type 'NavInput"
  "6557125bee8e6f09abab155a5183d467")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavInput>)))
  "Returns full string definition for message of type '<NavInput>"
  (cl:format cl:nil "std_msgs/Header header~%string 			parent_frame_id~%~%Vector3Cov 		angular_velocity	# rad/s, (rad/s)^2/Hz (noise spectral density)~%Vector3Cov 		specific_force		# m/(s^2), (m/(s^2))^2/Hz (noise spectral density)~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ros_sensor_msgs/Vector3Cov~%geometry_msgs/Vector3 	value 		# unit~%float64[9] 				covariance 	# unit^2~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavInput)))
  "Returns full string definition for message of type 'NavInput"
  (cl:format cl:nil "std_msgs/Header header~%string 			parent_frame_id~%~%Vector3Cov 		angular_velocity	# rad/s, (rad/s)^2/Hz (noise spectral density)~%Vector3Cov 		specific_force		# m/(s^2), (m/(s^2))^2/Hz (noise spectral density)~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ros_sensor_msgs/Vector3Cov~%geometry_msgs/Vector3 	value 		# unit~%float64[9] 				covariance 	# unit^2~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavInput>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'parent_frame_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angular_velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'specific_force))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavInput>))
  "Converts a ROS message object to a list"
  (cl:list 'NavInput
    (cl:cons ':header (header msg))
    (cl:cons ':parent_frame_id (parent_frame_id msg))
    (cl:cons ':angular_velocity (angular_velocity msg))
    (cl:cons ':specific_force (specific_force msg))
))
