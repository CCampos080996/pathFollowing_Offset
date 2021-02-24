; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude PpsOffsetCmd.msg.html

(cl:defclass <PpsOffsetCmd> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (offset_counts
    :reader offset_counts
    :initarg :offset_counts
    :type cl:integer
    :initform 0)
   (drift_counts
    :reader drift_counts
    :initarg :drift_counts
    :type cl:integer
    :initform 0))
)

(cl:defclass PpsOffsetCmd (<PpsOffsetCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PpsOffsetCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PpsOffsetCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<PpsOffsetCmd> is deprecated: use ros_sensor_msgs-msg:PpsOffsetCmd instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PpsOffsetCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:header-val is deprecated.  Use ros_sensor_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'offset_counts-val :lambda-list '(m))
(cl:defmethod offset_counts-val ((m <PpsOffsetCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:offset_counts-val is deprecated.  Use ros_sensor_msgs-msg:offset_counts instead.")
  (offset_counts m))

(cl:ensure-generic-function 'drift_counts-val :lambda-list '(m))
(cl:defmethod drift_counts-val ((m <PpsOffsetCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:drift_counts-val is deprecated.  Use ros_sensor_msgs-msg:drift_counts instead.")
  (drift_counts m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PpsOffsetCmd>) ostream)
  "Serializes a message object of type '<PpsOffsetCmd>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'offset_counts)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'drift_counts)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PpsOffsetCmd>) istream)
  "Deserializes a message object of type '<PpsOffsetCmd>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'offset_counts) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'drift_counts) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PpsOffsetCmd>)))
  "Returns string type for a message object of type '<PpsOffsetCmd>"
  "ros_sensor_msgs/PpsOffsetCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PpsOffsetCmd)))
  "Returns string type for a message object of type 'PpsOffsetCmd"
  "ros_sensor_msgs/PpsOffsetCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PpsOffsetCmd>)))
  "Returns md5sum for a message object of type '<PpsOffsetCmd>"
  "9fc7471197658b908cb56e3b379ad9ed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PpsOffsetCmd)))
  "Returns md5sum for a message object of type 'PpsOffsetCmd"
  "9fc7471197658b908cb56e3b379ad9ed")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PpsOffsetCmd>)))
  "Returns full string definition for message of type '<PpsOffsetCmd>"
  (cl:format cl:nil "~%std_msgs/Header   header~%int32             offset_counts~%int32             drift_counts~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PpsOffsetCmd)))
  "Returns full string definition for message of type 'PpsOffsetCmd"
  (cl:format cl:nil "~%std_msgs/Header   header~%int32             offset_counts~%int32             drift_counts~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PpsOffsetCmd>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PpsOffsetCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'PpsOffsetCmd
    (cl:cons ':header (header msg))
    (cl:cons ':offset_counts (offset_counts msg))
    (cl:cons ':drift_counts (drift_counts msg))
))
