; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude WheelSpeeds.msg.html

(cl:defclass <WheelSpeeds> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (timestamp
    :reader timestamp
    :initarg :timestamp
    :type cl:integer
    :initform 0)
   (dt
    :reader dt
    :initarg :dt
    :type cl:float
    :initform 0.0)
   (wheelSpeeds
    :reader wheelSpeeds
    :initarg :wheelSpeeds
    :type (cl:vector ros_sensor_msgs-msg:WheelSpeed)
   :initform (cl:make-array 0 :element-type 'ros_sensor_msgs-msg:WheelSpeed :initial-element (cl:make-instance 'ros_sensor_msgs-msg:WheelSpeed))))
)

(cl:defclass WheelSpeeds (<WheelSpeeds>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WheelSpeeds>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WheelSpeeds)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<WheelSpeeds> is deprecated: use ros_sensor_msgs-msg:WheelSpeeds instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <WheelSpeeds>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:header-val is deprecated.  Use ros_sensor_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <WheelSpeeds>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:timestamp-val is deprecated.  Use ros_sensor_msgs-msg:timestamp instead.")
  (timestamp m))

(cl:ensure-generic-function 'dt-val :lambda-list '(m))
(cl:defmethod dt-val ((m <WheelSpeeds>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:dt-val is deprecated.  Use ros_sensor_msgs-msg:dt instead.")
  (dt m))

(cl:ensure-generic-function 'wheelSpeeds-val :lambda-list '(m))
(cl:defmethod wheelSpeeds-val ((m <WheelSpeeds>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:wheelSpeeds-val is deprecated.  Use ros_sensor_msgs-msg:wheelSpeeds instead.")
  (wheelSpeeds m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WheelSpeeds>) ostream)
  "Serializes a message object of type '<WheelSpeeds>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'wheelSpeeds))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'wheelSpeeds))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WheelSpeeds>) istream)
  "Deserializes a message object of type '<WheelSpeeds>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dt) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'wheelSpeeds) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'wheelSpeeds)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_sensor_msgs-msg:WheelSpeed))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WheelSpeeds>)))
  "Returns string type for a message object of type '<WheelSpeeds>"
  "ros_sensor_msgs/WheelSpeeds")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WheelSpeeds)))
  "Returns string type for a message object of type 'WheelSpeeds"
  "ros_sensor_msgs/WheelSpeeds")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WheelSpeeds>)))
  "Returns md5sum for a message object of type '<WheelSpeeds>"
  "52eb70e4e79e2d8a61fc2e247cb46e3f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WheelSpeeds)))
  "Returns md5sum for a message object of type 'WheelSpeeds"
  "52eb70e4e79e2d8a61fc2e247cb46e3f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WheelSpeeds>)))
  "Returns full string definition for message of type '<WheelSpeeds>"
  (cl:format cl:nil "std_msgs/Header header~%uint32 timestamp  # [counts]~%float32 dt  # [sec]~%WheelSpeed[] wheelSpeeds~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ros_sensor_msgs/WheelSpeed~%float64 	wheel_speed				    # m/s~%float32 	wheel_speed_variance 	# (m/s)^2~%string    wheel_name~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WheelSpeeds)))
  "Returns full string definition for message of type 'WheelSpeeds"
  (cl:format cl:nil "std_msgs/Header header~%uint32 timestamp  # [counts]~%float32 dt  # [sec]~%WheelSpeed[] wheelSpeeds~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ros_sensor_msgs/WheelSpeed~%float64 	wheel_speed				    # m/s~%float32 	wheel_speed_variance 	# (m/s)^2~%string    wheel_name~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WheelSpeeds>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'wheelSpeeds) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WheelSpeeds>))
  "Converts a ROS message object to a list"
  (cl:list 'WheelSpeeds
    (cl:cons ':header (header msg))
    (cl:cons ':timestamp (timestamp msg))
    (cl:cons ':dt (dt msg))
    (cl:cons ':wheelSpeeds (wheelSpeeds msg))
))
