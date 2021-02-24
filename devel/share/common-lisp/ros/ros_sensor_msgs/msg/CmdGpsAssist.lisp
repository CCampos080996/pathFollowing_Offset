; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude CmdGpsAssist.msg.html

(cl:defclass <CmdGpsAssist> (roslisp-msg-protocol:ros-message)
  ((assist_time
    :reader assist_time
    :initarg :assist_time
    :type cl:boolean
    :initform cl:nil)
   (assist_position
    :reader assist_position
    :initarg :assist_position
    :type cl:boolean
    :initform cl:nil)
   (assist_gps_ephemeris
    :reader assist_gps_ephemeris
    :initarg :assist_gps_ephemeris
    :type cl:boolean
    :initform cl:nil)
   (assist_gps_almanac
    :reader assist_gps_almanac
    :initarg :assist_gps_almanac
    :type cl:boolean
    :initform cl:nil)
   (assist_gps_utc_iono
    :reader assist_gps_utc_iono
    :initarg :assist_gps_utc_iono
    :type cl:boolean
    :initform cl:nil)
   (assist_precise_time
    :reader assist_precise_time
    :initarg :assist_precise_time
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CmdGpsAssist (<CmdGpsAssist>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CmdGpsAssist>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CmdGpsAssist)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<CmdGpsAssist> is deprecated: use ros_sensor_msgs-msg:CmdGpsAssist instead.")))

(cl:ensure-generic-function 'assist_time-val :lambda-list '(m))
(cl:defmethod assist_time-val ((m <CmdGpsAssist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:assist_time-val is deprecated.  Use ros_sensor_msgs-msg:assist_time instead.")
  (assist_time m))

(cl:ensure-generic-function 'assist_position-val :lambda-list '(m))
(cl:defmethod assist_position-val ((m <CmdGpsAssist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:assist_position-val is deprecated.  Use ros_sensor_msgs-msg:assist_position instead.")
  (assist_position m))

(cl:ensure-generic-function 'assist_gps_ephemeris-val :lambda-list '(m))
(cl:defmethod assist_gps_ephemeris-val ((m <CmdGpsAssist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:assist_gps_ephemeris-val is deprecated.  Use ros_sensor_msgs-msg:assist_gps_ephemeris instead.")
  (assist_gps_ephemeris m))

(cl:ensure-generic-function 'assist_gps_almanac-val :lambda-list '(m))
(cl:defmethod assist_gps_almanac-val ((m <CmdGpsAssist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:assist_gps_almanac-val is deprecated.  Use ros_sensor_msgs-msg:assist_gps_almanac instead.")
  (assist_gps_almanac m))

(cl:ensure-generic-function 'assist_gps_utc_iono-val :lambda-list '(m))
(cl:defmethod assist_gps_utc_iono-val ((m <CmdGpsAssist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:assist_gps_utc_iono-val is deprecated.  Use ros_sensor_msgs-msg:assist_gps_utc_iono instead.")
  (assist_gps_utc_iono m))

(cl:ensure-generic-function 'assist_precise_time-val :lambda-list '(m))
(cl:defmethod assist_precise_time-val ((m <CmdGpsAssist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:assist_precise_time-val is deprecated.  Use ros_sensor_msgs-msg:assist_precise_time instead.")
  (assist_precise_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CmdGpsAssist>) ostream)
  "Serializes a message object of type '<CmdGpsAssist>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'assist_time) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'assist_position) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'assist_gps_ephemeris) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'assist_gps_almanac) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'assist_gps_utc_iono) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'assist_precise_time) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CmdGpsAssist>) istream)
  "Deserializes a message object of type '<CmdGpsAssist>"
    (cl:setf (cl:slot-value msg 'assist_time) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'assist_position) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'assist_gps_ephemeris) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'assist_gps_almanac) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'assist_gps_utc_iono) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'assist_precise_time) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CmdGpsAssist>)))
  "Returns string type for a message object of type '<CmdGpsAssist>"
  "ros_sensor_msgs/CmdGpsAssist")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CmdGpsAssist)))
  "Returns string type for a message object of type 'CmdGpsAssist"
  "ros_sensor_msgs/CmdGpsAssist")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CmdGpsAssist>)))
  "Returns md5sum for a message object of type '<CmdGpsAssist>"
  "9888cfe375cffb0c1d61c05b99896408")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CmdGpsAssist)))
  "Returns md5sum for a message object of type 'CmdGpsAssist"
  "9888cfe375cffb0c1d61c05b99896408")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CmdGpsAssist>)))
  "Returns full string definition for message of type '<CmdGpsAssist>"
  (cl:format cl:nil "bool assist_time~%bool assist_position~%bool assist_gps_ephemeris~%bool assist_gps_almanac~%bool assist_gps_utc_iono~%bool assist_precise_time~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CmdGpsAssist)))
  "Returns full string definition for message of type 'CmdGpsAssist"
  (cl:format cl:nil "bool assist_time~%bool assist_position~%bool assist_gps_ephemeris~%bool assist_gps_almanac~%bool assist_gps_utc_iono~%bool assist_precise_time~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CmdGpsAssist>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CmdGpsAssist>))
  "Converts a ROS message object to a list"
  (cl:list 'CmdGpsAssist
    (cl:cons ':assist_time (assist_time msg))
    (cl:cons ':assist_position (assist_position msg))
    (cl:cons ':assist_gps_ephemeris (assist_gps_ephemeris msg))
    (cl:cons ':assist_gps_almanac (assist_gps_almanac msg))
    (cl:cons ':assist_gps_utc_iono (assist_gps_utc_iono msg))
    (cl:cons ':assist_precise_time (assist_precise_time msg))
))
