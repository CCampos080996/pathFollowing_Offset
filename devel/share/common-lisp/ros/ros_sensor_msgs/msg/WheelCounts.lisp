; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude WheelCounts.msg.html

(cl:defclass <WheelCounts> (roslisp-msg-protocol:ros-message)
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
   (wheelCounts
    :reader wheelCounts
    :initarg :wheelCounts
    :type (cl:vector ros_sensor_msgs-msg:WheelCount)
   :initform (cl:make-array 0 :element-type 'ros_sensor_msgs-msg:WheelCount :initial-element (cl:make-instance 'ros_sensor_msgs-msg:WheelCount))))
)

(cl:defclass WheelCounts (<WheelCounts>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WheelCounts>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WheelCounts)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<WheelCounts> is deprecated: use ros_sensor_msgs-msg:WheelCounts instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <WheelCounts>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:header-val is deprecated.  Use ros_sensor_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <WheelCounts>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:timestamp-val is deprecated.  Use ros_sensor_msgs-msg:timestamp instead.")
  (timestamp m))

(cl:ensure-generic-function 'wheelCounts-val :lambda-list '(m))
(cl:defmethod wheelCounts-val ((m <WheelCounts>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:wheelCounts-val is deprecated.  Use ros_sensor_msgs-msg:wheelCounts instead.")
  (wheelCounts m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WheelCounts>) ostream)
  "Serializes a message object of type '<WheelCounts>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'wheelCounts))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'wheelCounts))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WheelCounts>) istream)
  "Deserializes a message object of type '<WheelCounts>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'wheelCounts) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'wheelCounts)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_sensor_msgs-msg:WheelCount))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WheelCounts>)))
  "Returns string type for a message object of type '<WheelCounts>"
  "ros_sensor_msgs/WheelCounts")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WheelCounts)))
  "Returns string type for a message object of type 'WheelCounts"
  "ros_sensor_msgs/WheelCounts")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WheelCounts>)))
  "Returns md5sum for a message object of type '<WheelCounts>"
  "7b7b3ed86a61cee066b9a17b6b58914a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WheelCounts)))
  "Returns md5sum for a message object of type 'WheelCounts"
  "7b7b3ed86a61cee066b9a17b6b58914a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WheelCounts>)))
  "Returns full string definition for message of type '<WheelCounts>"
  (cl:format cl:nil "std_msgs/Header   header~%uint32 timestamp  # [counts]~%WheelCount[] wheelCounts~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ros_sensor_msgs/WheelCount~%uint32  wheel_count   # [counts]~%bool    dir_forward   # true if moving forward~%string  wheel_name~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WheelCounts)))
  "Returns full string definition for message of type 'WheelCounts"
  (cl:format cl:nil "std_msgs/Header   header~%uint32 timestamp  # [counts]~%WheelCount[] wheelCounts~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ros_sensor_msgs/WheelCount~%uint32  wheel_count   # [counts]~%bool    dir_forward   # true if moving forward~%string  wheel_name~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WheelCounts>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'wheelCounts) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WheelCounts>))
  "Converts a ROS message object to a list"
  (cl:list 'WheelCounts
    (cl:cons ':header (header msg))
    (cl:cons ':timestamp (timestamp msg))
    (cl:cons ':wheelCounts (wheelCounts msg))
))
