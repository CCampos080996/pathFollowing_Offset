; Auto-generated. Do not edit!


(cl:in-package lateraloffset-msg)


;//! \htmlinclude PathDiagnostics.msg.html

(cl:defclass <PathDiagnostics> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (gpsTime
    :reader gpsTime
    :initarg :gpsTime
    :type ros_sensor_msgs-msg:GpsTime
    :initform (cl:make-instance 'ros_sensor_msgs-msg:GpsTime))
   (lateralOffset
    :reader lateralOffset
    :initarg :lateralOffset
    :type cl:float
    :initform 0.0)
   (offsetVariance
    :reader offsetVariance
    :initarg :offsetVariance
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (curvatureRating
    :reader curvatureRating
    :initarg :curvatureRating
    :type cl:float
    :initform 0.0)
   (localBodyFrameRPV
    :reader localBodyFrameRPV
    :initarg :localBodyFrameRPV
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass PathDiagnostics (<PathDiagnostics>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PathDiagnostics>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PathDiagnostics)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lateraloffset-msg:<PathDiagnostics> is deprecated: use lateraloffset-msg:PathDiagnostics instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PathDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lateraloffset-msg:header-val is deprecated.  Use lateraloffset-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'gpsTime-val :lambda-list '(m))
(cl:defmethod gpsTime-val ((m <PathDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lateraloffset-msg:gpsTime-val is deprecated.  Use lateraloffset-msg:gpsTime instead.")
  (gpsTime m))

(cl:ensure-generic-function 'lateralOffset-val :lambda-list '(m))
(cl:defmethod lateralOffset-val ((m <PathDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lateraloffset-msg:lateralOffset-val is deprecated.  Use lateraloffset-msg:lateralOffset instead.")
  (lateralOffset m))

(cl:ensure-generic-function 'offsetVariance-val :lambda-list '(m))
(cl:defmethod offsetVariance-val ((m <PathDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lateraloffset-msg:offsetVariance-val is deprecated.  Use lateraloffset-msg:offsetVariance instead.")
  (offsetVariance m))

(cl:ensure-generic-function 'curvatureRating-val :lambda-list '(m))
(cl:defmethod curvatureRating-val ((m <PathDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lateraloffset-msg:curvatureRating-val is deprecated.  Use lateraloffset-msg:curvatureRating instead.")
  (curvatureRating m))

(cl:ensure-generic-function 'localBodyFrameRPV-val :lambda-list '(m))
(cl:defmethod localBodyFrameRPV-val ((m <PathDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lateraloffset-msg:localBodyFrameRPV-val is deprecated.  Use lateraloffset-msg:localBodyFrameRPV instead.")
  (localBodyFrameRPV m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PathDiagnostics>) ostream)
  "Serializes a message object of type '<PathDiagnostics>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gpsTime) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lateralOffset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'offsetVariance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'offsetVariance))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'curvatureRating))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'localBodyFrameRPV))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'localBodyFrameRPV))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PathDiagnostics>) istream)
  "Deserializes a message object of type '<PathDiagnostics>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gpsTime) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lateralOffset) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'offsetVariance) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'offsetVariance)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'curvatureRating) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'localBodyFrameRPV) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'localBodyFrameRPV)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PathDiagnostics>)))
  "Returns string type for a message object of type '<PathDiagnostics>"
  "lateraloffset/PathDiagnostics")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PathDiagnostics)))
  "Returns string type for a message object of type 'PathDiagnostics"
  "lateraloffset/PathDiagnostics")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PathDiagnostics>)))
  "Returns md5sum for a message object of type '<PathDiagnostics>"
  "c5862f510f0fc37b9f5e8121e6c2f96c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PathDiagnostics)))
  "Returns md5sum for a message object of type 'PathDiagnostics"
  "c5862f510f0fc37b9f5e8121e6c2f96c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PathDiagnostics>)))
  "Returns full string definition for message of type '<PathDiagnostics>"
  (cl:format cl:nil "## Diagnostics ~%~%std_msgs/Header          header~%ros_sensor_msgs/GpsTime  gpsTime~%~%float32 lateralOffset~%~%float32[] offsetVariance~%~%float32 curvatureRating~%float32[] localBodyFrameRPV~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ros_sensor_msgs/GpsTime~%## GPS time structure~%uint32          gps_week        # Full GPS week from (0:0:00 Jan 06, 1980)~%float64         gps_seconds     # GPS seconds into week [sec]~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PathDiagnostics)))
  "Returns full string definition for message of type 'PathDiagnostics"
  (cl:format cl:nil "## Diagnostics ~%~%std_msgs/Header          header~%ros_sensor_msgs/GpsTime  gpsTime~%~%float32 lateralOffset~%~%float32[] offsetVariance~%~%float32 curvatureRating~%float32[] localBodyFrameRPV~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ros_sensor_msgs/GpsTime~%## GPS time structure~%uint32          gps_week        # Full GPS week from (0:0:00 Jan 06, 1980)~%float64         gps_seconds     # GPS seconds into week [sec]~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PathDiagnostics>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gpsTime))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'offsetVariance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'localBodyFrameRPV) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PathDiagnostics>))
  "Converts a ROS message object to a list"
  (cl:list 'PathDiagnostics
    (cl:cons ':header (header msg))
    (cl:cons ':gpsTime (gpsTime msg))
    (cl:cons ':lateralOffset (lateralOffset msg))
    (cl:cons ':offsetVariance (offsetVariance msg))
    (cl:cons ':curvatureRating (curvatureRating msg))
    (cl:cons ':localBodyFrameRPV (localBodyFrameRPV msg))
))
