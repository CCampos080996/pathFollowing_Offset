; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude GpsTime.msg.html

(cl:defclass <GpsTime> (roslisp-msg-protocol:ros-message)
  ((gps_week
    :reader gps_week
    :initarg :gps_week
    :type cl:integer
    :initform 0)
   (gps_seconds
    :reader gps_seconds
    :initarg :gps_seconds
    :type cl:float
    :initform 0.0))
)

(cl:defclass GpsTime (<GpsTime>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GpsTime>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GpsTime)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<GpsTime> is deprecated: use ros_sensor_msgs-msg:GpsTime instead.")))

(cl:ensure-generic-function 'gps_week-val :lambda-list '(m))
(cl:defmethod gps_week-val ((m <GpsTime>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:gps_week-val is deprecated.  Use ros_sensor_msgs-msg:gps_week instead.")
  (gps_week m))

(cl:ensure-generic-function 'gps_seconds-val :lambda-list '(m))
(cl:defmethod gps_seconds-val ((m <GpsTime>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:gps_seconds-val is deprecated.  Use ros_sensor_msgs-msg:gps_seconds instead.")
  (gps_seconds m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GpsTime>) ostream)
  "Serializes a message object of type '<GpsTime>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gps_week)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'gps_week)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'gps_week)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'gps_week)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'gps_seconds))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GpsTime>) istream)
  "Deserializes a message object of type '<GpsTime>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gps_week)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'gps_week)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'gps_week)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'gps_week)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gps_seconds) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GpsTime>)))
  "Returns string type for a message object of type '<GpsTime>"
  "ros_sensor_msgs/GpsTime")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GpsTime)))
  "Returns string type for a message object of type 'GpsTime"
  "ros_sensor_msgs/GpsTime")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GpsTime>)))
  "Returns md5sum for a message object of type '<GpsTime>"
  "137ebf93fd4c356decbd306ad6f360b9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GpsTime)))
  "Returns md5sum for a message object of type 'GpsTime"
  "137ebf93fd4c356decbd306ad6f360b9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GpsTime>)))
  "Returns full string definition for message of type '<GpsTime>"
  (cl:format cl:nil "## GPS time structure~%uint32          gps_week        # Full GPS week from (0:0:00 Jan 06, 1980)~%float64         gps_seconds     # GPS seconds into week [sec]~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GpsTime)))
  "Returns full string definition for message of type 'GpsTime"
  (cl:format cl:nil "## GPS time structure~%uint32          gps_week        # Full GPS week from (0:0:00 Jan 06, 1980)~%float64         gps_seconds     # GPS seconds into week [sec]~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GpsTime>))
  (cl:+ 0
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GpsTime>))
  "Converts a ROS message object to a list"
  (cl:list 'GpsTime
    (cl:cons ':gps_week (gps_week msg))
    (cl:cons ':gps_seconds (gps_seconds msg))
))
