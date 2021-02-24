; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude PositionOffset.msg.html

(cl:defclass <PositionOffset> (roslisp-msg-protocol:ros-message)
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
   (offset
    :reader offset
    :initarg :offset
    :type ros_sensor_msgs-msg:Vector3Cov
    :initform (cl:make-instance 'ros_sensor_msgs-msg:Vector3Cov)))
)

(cl:defclass PositionOffset (<PositionOffset>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PositionOffset>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PositionOffset)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<PositionOffset> is deprecated: use ros_sensor_msgs-msg:PositionOffset instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PositionOffset>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:header-val is deprecated.  Use ros_sensor_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'parent_frame_id-val :lambda-list '(m))
(cl:defmethod parent_frame_id-val ((m <PositionOffset>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:parent_frame_id-val is deprecated.  Use ros_sensor_msgs-msg:parent_frame_id instead.")
  (parent_frame_id m))

(cl:ensure-generic-function 'offset-val :lambda-list '(m))
(cl:defmethod offset-val ((m <PositionOffset>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:offset-val is deprecated.  Use ros_sensor_msgs-msg:offset instead.")
  (offset m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PositionOffset>) ostream)
  "Serializes a message object of type '<PositionOffset>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'parent_frame_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'parent_frame_id))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'offset) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PositionOffset>) istream)
  "Deserializes a message object of type '<PositionOffset>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parent_frame_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'parent_frame_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'offset) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PositionOffset>)))
  "Returns string type for a message object of type '<PositionOffset>"
  "ros_sensor_msgs/PositionOffset")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PositionOffset)))
  "Returns string type for a message object of type 'PositionOffset"
  "ros_sensor_msgs/PositionOffset")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PositionOffset>)))
  "Returns md5sum for a message object of type '<PositionOffset>"
  "9c22be7a258b7803423f53581e781868")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PositionOffset)))
  "Returns md5sum for a message object of type 'PositionOffset"
  "9c22be7a258b7803423f53581e781868")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PositionOffset>)))
  "Returns full string definition for message of type '<PositionOffset>"
  (cl:format cl:nil "std_msgs/Header header~%~%string          parent_frame_id~%~%Vector3Cov offset # m, m^2: position of header.frameId with respect to parent_frame_id expressed in parent_frame_id~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ros_sensor_msgs/Vector3Cov~%geometry_msgs/Vector3 	value 		# unit~%float64[9] 				covariance 	# unit^2~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PositionOffset)))
  "Returns full string definition for message of type 'PositionOffset"
  (cl:format cl:nil "std_msgs/Header header~%~%string          parent_frame_id~%~%Vector3Cov offset # m, m^2: position of header.frameId with respect to parent_frame_id expressed in parent_frame_id~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ros_sensor_msgs/Vector3Cov~%geometry_msgs/Vector3 	value 		# unit~%float64[9] 				covariance 	# unit^2~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PositionOffset>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'parent_frame_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'offset))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PositionOffset>))
  "Converts a ROS message object to a list"
  (cl:list 'PositionOffset
    (cl:cons ':header (header msg))
    (cl:cons ':parent_frame_id (parent_frame_id msg))
    (cl:cons ':offset (offset msg))
))
