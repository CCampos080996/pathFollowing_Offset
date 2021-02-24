; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude NavStateCorrection.msg.html

(cl:defclass <NavStateCorrection> (roslisp-msg-protocol:ros-message)
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
   (position_correction
    :reader position_correction
    :initarg :position_correction
    :type ros_sensor_msgs-msg:Vector3Cov
    :initform (cl:make-instance 'ros_sensor_msgs-msg:Vector3Cov))
   (velocity_correction
    :reader velocity_correction
    :initarg :velocity_correction
    :type ros_sensor_msgs-msg:Vector3Cov
    :initform (cl:make-instance 'ros_sensor_msgs-msg:Vector3Cov))
   (attitude_correction
    :reader attitude_correction
    :initarg :attitude_correction
    :type ros_sensor_msgs-msg:Vector3Cov
    :initform (cl:make-instance 'ros_sensor_msgs-msg:Vector3Cov))
   (gyro_bias
    :reader gyro_bias
    :initarg :gyro_bias
    :type ros_sensor_msgs-msg:Vector3Cov
    :initform (cl:make-instance 'ros_sensor_msgs-msg:Vector3Cov))
   (accel_bias
    :reader accel_bias
    :initarg :accel_bias
    :type ros_sensor_msgs-msg:Vector3Cov
    :initform (cl:make-instance 'ros_sensor_msgs-msg:Vector3Cov)))
)

(cl:defclass NavStateCorrection (<NavStateCorrection>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavStateCorrection>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavStateCorrection)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<NavStateCorrection> is deprecated: use ros_sensor_msgs-msg:NavStateCorrection instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <NavStateCorrection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:header-val is deprecated.  Use ros_sensor_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'parent_frame_id-val :lambda-list '(m))
(cl:defmethod parent_frame_id-val ((m <NavStateCorrection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:parent_frame_id-val is deprecated.  Use ros_sensor_msgs-msg:parent_frame_id instead.")
  (parent_frame_id m))

(cl:ensure-generic-function 'position_correction-val :lambda-list '(m))
(cl:defmethod position_correction-val ((m <NavStateCorrection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:position_correction-val is deprecated.  Use ros_sensor_msgs-msg:position_correction instead.")
  (position_correction m))

(cl:ensure-generic-function 'velocity_correction-val :lambda-list '(m))
(cl:defmethod velocity_correction-val ((m <NavStateCorrection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:velocity_correction-val is deprecated.  Use ros_sensor_msgs-msg:velocity_correction instead.")
  (velocity_correction m))

(cl:ensure-generic-function 'attitude_correction-val :lambda-list '(m))
(cl:defmethod attitude_correction-val ((m <NavStateCorrection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:attitude_correction-val is deprecated.  Use ros_sensor_msgs-msg:attitude_correction instead.")
  (attitude_correction m))

(cl:ensure-generic-function 'gyro_bias-val :lambda-list '(m))
(cl:defmethod gyro_bias-val ((m <NavStateCorrection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:gyro_bias-val is deprecated.  Use ros_sensor_msgs-msg:gyro_bias instead.")
  (gyro_bias m))

(cl:ensure-generic-function 'accel_bias-val :lambda-list '(m))
(cl:defmethod accel_bias-val ((m <NavStateCorrection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:accel_bias-val is deprecated.  Use ros_sensor_msgs-msg:accel_bias instead.")
  (accel_bias m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavStateCorrection>) ostream)
  "Serializes a message object of type '<NavStateCorrection>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'parent_frame_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'parent_frame_id))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position_correction) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity_correction) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'attitude_correction) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gyro_bias) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'accel_bias) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavStateCorrection>) istream)
  "Deserializes a message object of type '<NavStateCorrection>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parent_frame_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'parent_frame_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position_correction) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity_correction) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'attitude_correction) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gyro_bias) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'accel_bias) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavStateCorrection>)))
  "Returns string type for a message object of type '<NavStateCorrection>"
  "ros_sensor_msgs/NavStateCorrection")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavStateCorrection)))
  "Returns string type for a message object of type 'NavStateCorrection"
  "ros_sensor_msgs/NavStateCorrection")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavStateCorrection>)))
  "Returns md5sum for a message object of type '<NavStateCorrection>"
  "a318981e584d094f12f75c3a0b2e6e1a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavStateCorrection)))
  "Returns md5sum for a message object of type 'NavStateCorrection"
  "a318981e584d094f12f75c3a0b2e6e1a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavStateCorrection>)))
  "Returns full string definition for message of type '<NavStateCorrection>"
  (cl:format cl:nil "std_msgs/Header header~%string 			parent_frame_id~%Vector3Cov 		position_correction		# m, m^2~%Vector3Cov 		velocity_correction 	# m/s, (m/s)^2~%Vector3Cov 		attitude_correction 	# none, rad^2~%Vector3Cov 		gyro_bias 				# rad/s, (rad/s)^2~%Vector3Cov 		accel_bias 				# (m/s^2), (m/s^2)^2~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ros_sensor_msgs/Vector3Cov~%geometry_msgs/Vector3 	value 		# unit~%float64[9] 				covariance 	# unit^2~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavStateCorrection)))
  "Returns full string definition for message of type 'NavStateCorrection"
  (cl:format cl:nil "std_msgs/Header header~%string 			parent_frame_id~%Vector3Cov 		position_correction		# m, m^2~%Vector3Cov 		velocity_correction 	# m/s, (m/s)^2~%Vector3Cov 		attitude_correction 	# none, rad^2~%Vector3Cov 		gyro_bias 				# rad/s, (rad/s)^2~%Vector3Cov 		accel_bias 				# (m/s^2), (m/s^2)^2~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ros_sensor_msgs/Vector3Cov~%geometry_msgs/Vector3 	value 		# unit~%float64[9] 				covariance 	# unit^2~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavStateCorrection>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'parent_frame_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position_correction))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity_correction))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'attitude_correction))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gyro_bias))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'accel_bias))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavStateCorrection>))
  "Converts a ROS message object to a list"
  (cl:list 'NavStateCorrection
    (cl:cons ':header (header msg))
    (cl:cons ':parent_frame_id (parent_frame_id msg))
    (cl:cons ':position_correction (position_correction msg))
    (cl:cons ':velocity_correction (velocity_correction msg))
    (cl:cons ':attitude_correction (attitude_correction msg))
    (cl:cons ':gyro_bias (gyro_bias msg))
    (cl:cons ':accel_bias (accel_bias msg))
))
