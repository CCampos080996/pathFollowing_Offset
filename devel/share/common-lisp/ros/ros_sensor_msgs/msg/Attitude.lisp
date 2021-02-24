; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude Attitude.msg.html

(cl:defclass <Attitude> (roslisp-msg-protocol:ros-message)
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
   (attitude
    :reader attitude
    :initarg :attitude
    :type ros_sensor_msgs-msg:QuaternionCov
    :initform (cl:make-instance 'ros_sensor_msgs-msg:QuaternionCov)))
)

(cl:defclass Attitude (<Attitude>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Attitude>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Attitude)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<Attitude> is deprecated: use ros_sensor_msgs-msg:Attitude instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Attitude>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:header-val is deprecated.  Use ros_sensor_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'parent_frame_id-val :lambda-list '(m))
(cl:defmethod parent_frame_id-val ((m <Attitude>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:parent_frame_id-val is deprecated.  Use ros_sensor_msgs-msg:parent_frame_id instead.")
  (parent_frame_id m))

(cl:ensure-generic-function 'attitude-val :lambda-list '(m))
(cl:defmethod attitude-val ((m <Attitude>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:attitude-val is deprecated.  Use ros_sensor_msgs-msg:attitude instead.")
  (attitude m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Attitude>) ostream)
  "Serializes a message object of type '<Attitude>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'parent_frame_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'parent_frame_id))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'attitude) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Attitude>) istream)
  "Deserializes a message object of type '<Attitude>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parent_frame_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'parent_frame_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'attitude) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Attitude>)))
  "Returns string type for a message object of type '<Attitude>"
  "ros_sensor_msgs/Attitude")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Attitude)))
  "Returns string type for a message object of type 'Attitude"
  "ros_sensor_msgs/Attitude")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Attitude>)))
  "Returns md5sum for a message object of type '<Attitude>"
  "e12ad82999e20dd8d27d2ef18130aab1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Attitude)))
  "Returns md5sum for a message object of type 'Attitude"
  "e12ad82999e20dd8d27d2ef18130aab1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Attitude>)))
  "Returns full string definition for message of type '<Attitude>"
  (cl:format cl:nil "std_msgs/Header header~%string 			parent_frame_id~%QuaternionCov 	attitude			# none, rad^2~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ros_sensor_msgs/QuaternionCov~%geometry_msgs/Quaternion 	value~%float64[9] 				 	covariance 	# rad^2~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Attitude)))
  "Returns full string definition for message of type 'Attitude"
  (cl:format cl:nil "std_msgs/Header header~%string 			parent_frame_id~%QuaternionCov 	attitude			# none, rad^2~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ros_sensor_msgs/QuaternionCov~%geometry_msgs/Quaternion 	value~%float64[9] 				 	covariance 	# rad^2~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Attitude>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'parent_frame_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'attitude))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Attitude>))
  "Converts a ROS message object to a list"
  (cl:list 'Attitude
    (cl:cons ':header (header msg))
    (cl:cons ':parent_frame_id (parent_frame_id msg))
    (cl:cons ':attitude (attitude msg))
))
