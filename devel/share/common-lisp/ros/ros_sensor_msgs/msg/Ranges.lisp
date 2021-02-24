; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude Ranges.msg.html

(cl:defclass <Ranges> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (ranges
    :reader ranges
    :initarg :ranges
    :type (cl:vector ros_sensor_msgs-msg:Range)
   :initform (cl:make-array 0 :element-type 'ros_sensor_msgs-msg:Range :initial-element (cl:make-instance 'ros_sensor_msgs-msg:Range))))
)

(cl:defclass Ranges (<Ranges>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ranges>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ranges)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<Ranges> is deprecated: use ros_sensor_msgs-msg:Ranges instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Ranges>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:header-val is deprecated.  Use ros_sensor_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'ranges-val :lambda-list '(m))
(cl:defmethod ranges-val ((m <Ranges>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:ranges-val is deprecated.  Use ros_sensor_msgs-msg:ranges instead.")
  (ranges m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ranges>) ostream)
  "Serializes a message object of type '<Ranges>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ranges))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'ranges))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ranges>) istream)
  "Deserializes a message object of type '<Ranges>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ranges) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ranges)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_sensor_msgs-msg:Range))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ranges>)))
  "Returns string type for a message object of type '<Ranges>"
  "ros_sensor_msgs/Ranges")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ranges)))
  "Returns string type for a message object of type 'Ranges"
  "ros_sensor_msgs/Ranges")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ranges>)))
  "Returns md5sum for a message object of type '<Ranges>"
  "3beec018182d82a34d6872cbae28a451")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ranges)))
  "Returns md5sum for a message object of type 'Ranges"
  "3beec018182d82a34d6872cbae28a451")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ranges>)))
  "Returns full string definition for message of type '<Ranges>"
  (cl:format cl:nil "# Generic ranges message from sensor to number of other objects ~%~%std_msgs/Header header~%Range[]         ranges~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ros_sensor_msgs/Range~%# Range to specified object~%string  end_point_id~%float64 range~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ranges)))
  "Returns full string definition for message of type 'Ranges"
  (cl:format cl:nil "# Generic ranges message from sensor to number of other objects ~%~%std_msgs/Header header~%Range[]         ranges~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ros_sensor_msgs/Range~%# Range to specified object~%string  end_point_id~%float64 range~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ranges>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ranges) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ranges>))
  "Converts a ROS message object to a list"
  (cl:list 'Ranges
    (cl:cons ':header (header msg))
    (cl:cons ':ranges (ranges msg))
))
