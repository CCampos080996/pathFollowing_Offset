; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude SteerAngles.msg.html

(cl:defclass <SteerAngles> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (steerAngles
    :reader steerAngles
    :initarg :steerAngles
    :type (cl:vector ros_sensor_msgs-msg:SteerAngle)
   :initform (cl:make-array 0 :element-type 'ros_sensor_msgs-msg:SteerAngle :initial-element (cl:make-instance 'ros_sensor_msgs-msg:SteerAngle))))
)

(cl:defclass SteerAngles (<SteerAngles>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SteerAngles>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SteerAngles)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<SteerAngles> is deprecated: use ros_sensor_msgs-msg:SteerAngles instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SteerAngles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:header-val is deprecated.  Use ros_sensor_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'steerAngles-val :lambda-list '(m))
(cl:defmethod steerAngles-val ((m <SteerAngles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:steerAngles-val is deprecated.  Use ros_sensor_msgs-msg:steerAngles instead.")
  (steerAngles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SteerAngles>) ostream)
  "Serializes a message object of type '<SteerAngles>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'steerAngles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'steerAngles))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SteerAngles>) istream)
  "Deserializes a message object of type '<SteerAngles>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'steerAngles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'steerAngles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_sensor_msgs-msg:SteerAngle))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SteerAngles>)))
  "Returns string type for a message object of type '<SteerAngles>"
  "ros_sensor_msgs/SteerAngles")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SteerAngles)))
  "Returns string type for a message object of type 'SteerAngles"
  "ros_sensor_msgs/SteerAngles")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SteerAngles>)))
  "Returns md5sum for a message object of type '<SteerAngles>"
  "9188ff5ff1671fda9fc814d8248c0fb7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SteerAngles)))
  "Returns md5sum for a message object of type 'SteerAngles"
  "9188ff5ff1671fda9fc814d8248c0fb7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SteerAngles>)))
  "Returns full string definition for message of type '<SteerAngles>"
  (cl:format cl:nil "std_msgs/Header header~%SteerAngle[] steerAngles~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ros_sensor_msgs/SteerAngle~%float64    steer_angle				 # rad~%float64    steer_angle_variance 	 # rad^2~%float64    steer_angle_rate          # rad/s~%float64    steer_angle_rate_variance # (rad/s)^2~%string     wheel_name~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SteerAngles)))
  "Returns full string definition for message of type 'SteerAngles"
  (cl:format cl:nil "std_msgs/Header header~%SteerAngle[] steerAngles~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ros_sensor_msgs/SteerAngle~%float64    steer_angle				 # rad~%float64    steer_angle_variance 	 # rad^2~%float64    steer_angle_rate          # rad/s~%float64    steer_angle_rate_variance # (rad/s)^2~%string     wheel_name~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SteerAngles>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'steerAngles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SteerAngles>))
  "Converts a ROS message object to a list"
  (cl:list 'SteerAngles
    (cl:cons ':header (header msg))
    (cl:cons ':steerAngles (steerAngles msg))
))
