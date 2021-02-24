; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude NavigationStatus.msg.html

(cl:defclass <NavigationStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (navigation_status
    :reader navigation_status
    :initarg :navigation_status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass NavigationStatus (<NavigationStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavigationStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavigationStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<NavigationStatus> is deprecated: use ros_sensor_msgs-msg:NavigationStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <NavigationStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:header-val is deprecated.  Use ros_sensor_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'navigation_status-val :lambda-list '(m))
(cl:defmethod navigation_status-val ((m <NavigationStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:navigation_status-val is deprecated.  Use ros_sensor_msgs-msg:navigation_status instead.")
  (navigation_status m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<NavigationStatus>)))
    "Constants for message type '<NavigationStatus>"
  '((:UNKNOWN . 0)
    (:UNINITIALIZED . 1)
    (:PERFORMING_STATIC_INIT . 2)
    (:STATIC_INIT_COMPLETE . 3)
    (:INITIALIZED . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'NavigationStatus)))
    "Constants for message type 'NavigationStatus"
  '((:UNKNOWN . 0)
    (:UNINITIALIZED . 1)
    (:PERFORMING_STATIC_INIT . 2)
    (:STATIC_INIT_COMPLETE . 3)
    (:INITIALIZED . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavigationStatus>) ostream)
  "Serializes a message object of type '<NavigationStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'navigation_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'navigation_status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavigationStatus>) istream)
  "Deserializes a message object of type '<NavigationStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'navigation_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'navigation_status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavigationStatus>)))
  "Returns string type for a message object of type '<NavigationStatus>"
  "ros_sensor_msgs/NavigationStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavigationStatus)))
  "Returns string type for a message object of type 'NavigationStatus"
  "ros_sensor_msgs/NavigationStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavigationStatus>)))
  "Returns md5sum for a message object of type '<NavigationStatus>"
  "f2931775966732172fda0561a2b051ee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavigationStatus)))
  "Returns md5sum for a message object of type 'NavigationStatus"
  "f2931775966732172fda0561a2b051ee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavigationStatus>)))
  "Returns full string definition for message of type '<NavigationStatus>"
  (cl:format cl:nil "~%uint16  UNKNOWN                = 0~%uint16  UNINITIALIZED          = 1~%uint16  PERFORMING_STATIC_INIT = 2~%uint16  STATIC_INIT_COMPLETE   = 3~%uint16  INITIALIZED            = 4~%~%std_msgs/Header header~%uint16           navigation_status~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavigationStatus)))
  "Returns full string definition for message of type 'NavigationStatus"
  (cl:format cl:nil "~%uint16  UNKNOWN                = 0~%uint16  UNINITIALIZED          = 1~%uint16  PERFORMING_STATIC_INIT = 2~%uint16  STATIC_INIT_COMPLETE   = 3~%uint16  INITIALIZED            = 4~%~%std_msgs/Header header~%uint16           navigation_status~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavigationStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavigationStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'NavigationStatus
    (cl:cons ':header (header msg))
    (cl:cons ':navigation_status (navigation_status msg))
))
