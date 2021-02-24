; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude GpsAssist.msg.html

(cl:defclass <GpsAssist> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type ros_sensor_msgs-msg:LlhPosition
    :initform (cl:make-instance 'ros_sensor_msgs-msg:LlhPosition))
   (position_valid
    :reader position_valid
    :initarg :position_valid
    :type cl:boolean
    :initform cl:nil)
   (cpu_time_offset
    :reader cpu_time_offset
    :initarg :cpu_time_offset
    :type ros_sensor_msgs-msg:CpuTimeOffset
    :initform (cl:make-instance 'ros_sensor_msgs-msg:CpuTimeOffset))
   (ephemerides
    :reader ephemerides
    :initarg :ephemerides
    :type (cl:vector ros_sensor_msgs-msg:GpsEphemeris)
   :initform (cl:make-array 0 :element-type 'ros_sensor_msgs-msg:GpsEphemeris :initial-element (cl:make-instance 'ros_sensor_msgs-msg:GpsEphemeris)))
   (almanac
    :reader almanac
    :initarg :almanac
    :type (cl:vector ros_sensor_msgs-msg:GpsAlmanac)
   :initform (cl:make-array 0 :element-type 'ros_sensor_msgs-msg:GpsAlmanac :initial-element (cl:make-instance 'ros_sensor_msgs-msg:GpsAlmanac)))
   (utc_iono
    :reader utc_iono
    :initarg :utc_iono
    :type ros_sensor_msgs-msg:UtcIonosphere
    :initform (cl:make-instance 'ros_sensor_msgs-msg:UtcIonosphere))
   (utc_iono_valid
    :reader utc_iono_valid
    :initarg :utc_iono_valid
    :type cl:boolean
    :initform cl:nil)
   (include_precise_time
    :reader include_precise_time
    :initarg :include_precise_time
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GpsAssist (<GpsAssist>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GpsAssist>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GpsAssist)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<GpsAssist> is deprecated: use ros_sensor_msgs-msg:GpsAssist instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <GpsAssist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:position-val is deprecated.  Use ros_sensor_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'position_valid-val :lambda-list '(m))
(cl:defmethod position_valid-val ((m <GpsAssist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:position_valid-val is deprecated.  Use ros_sensor_msgs-msg:position_valid instead.")
  (position_valid m))

(cl:ensure-generic-function 'cpu_time_offset-val :lambda-list '(m))
(cl:defmethod cpu_time_offset-val ((m <GpsAssist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:cpu_time_offset-val is deprecated.  Use ros_sensor_msgs-msg:cpu_time_offset instead.")
  (cpu_time_offset m))

(cl:ensure-generic-function 'ephemerides-val :lambda-list '(m))
(cl:defmethod ephemerides-val ((m <GpsAssist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:ephemerides-val is deprecated.  Use ros_sensor_msgs-msg:ephemerides instead.")
  (ephemerides m))

(cl:ensure-generic-function 'almanac-val :lambda-list '(m))
(cl:defmethod almanac-val ((m <GpsAssist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:almanac-val is deprecated.  Use ros_sensor_msgs-msg:almanac instead.")
  (almanac m))

(cl:ensure-generic-function 'utc_iono-val :lambda-list '(m))
(cl:defmethod utc_iono-val ((m <GpsAssist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:utc_iono-val is deprecated.  Use ros_sensor_msgs-msg:utc_iono instead.")
  (utc_iono m))

(cl:ensure-generic-function 'utc_iono_valid-val :lambda-list '(m))
(cl:defmethod utc_iono_valid-val ((m <GpsAssist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:utc_iono_valid-val is deprecated.  Use ros_sensor_msgs-msg:utc_iono_valid instead.")
  (utc_iono_valid m))

(cl:ensure-generic-function 'include_precise_time-val :lambda-list '(m))
(cl:defmethod include_precise_time-val ((m <GpsAssist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:include_precise_time-val is deprecated.  Use ros_sensor_msgs-msg:include_precise_time instead.")
  (include_precise_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GpsAssist>) ostream)
  "Serializes a message object of type '<GpsAssist>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'position_valid) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cpu_time_offset) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ephemerides))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'ephemerides))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'almanac))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'almanac))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'utc_iono) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'utc_iono_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'include_precise_time) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GpsAssist>) istream)
  "Deserializes a message object of type '<GpsAssist>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
    (cl:setf (cl:slot-value msg 'position_valid) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cpu_time_offset) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ephemerides) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ephemerides)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_sensor_msgs-msg:GpsEphemeris))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'almanac) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'almanac)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_sensor_msgs-msg:GpsAlmanac))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'utc_iono) istream)
    (cl:setf (cl:slot-value msg 'utc_iono_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'include_precise_time) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GpsAssist>)))
  "Returns string type for a message object of type '<GpsAssist>"
  "ros_sensor_msgs/GpsAssist")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GpsAssist)))
  "Returns string type for a message object of type 'GpsAssist"
  "ros_sensor_msgs/GpsAssist")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GpsAssist>)))
  "Returns md5sum for a message object of type '<GpsAssist>"
  "c2447862b19affe79c50f6956a1e26a6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GpsAssist)))
  "Returns md5sum for a message object of type 'GpsAssist"
  "c2447862b19affe79c50f6956a1e26a6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GpsAssist>)))
  "Returns full string definition for message of type '<GpsAssist>"
  (cl:format cl:nil "LlhPosition             position~%bool                    position_valid~%CpuTimeOffset           cpu_time_offset~%GpsEphemeris[]          ephemerides~%GpsAlmanac[]            almanac~%UtcIonosphere           utc_iono~%bool                    utc_iono_valid~%bool                    include_precise_time~%~%#float64                 utc_system_time_offset~%#GpsTime                 gps_time~%#bool                    gps_time_valid~%================================================================================~%MSG: ros_sensor_msgs/LlhPosition~%# # LlhPosition~%~%float64                  latitude   # [deg]~%float64                  longitude  # [deg]~%float64                  altitude   # [m]~%uint16                   horizontalAccuracy~%uint16                   verticalAccuracy~%================================================================================~%MSG: ros_sensor_msgs/CpuTimeOffset~%bool    valid~%float64 secondsOffset~%================================================================================~%MSG: ros_sensor_msgs/GpsEphemeris~%## Gps Ephemeris subframes for one satellite~%~%uint16      prn~%uint8[30]   subframe1~%uint8[30]   subframe2~%uint8[30]   subframe3~%================================================================================~%MSG: ros_sensor_msgs/GpsAlmanac~%~%uint16      prn~%uint16      reference_week~%uint8[30]   subframe~%================================================================================~%MSG: ros_sensor_msgs/UtcIonosphere~%## Subframe of UTC and Ionospheric Parameters~%~%uint8[30]   subframe~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GpsAssist)))
  "Returns full string definition for message of type 'GpsAssist"
  (cl:format cl:nil "LlhPosition             position~%bool                    position_valid~%CpuTimeOffset           cpu_time_offset~%GpsEphemeris[]          ephemerides~%GpsAlmanac[]            almanac~%UtcIonosphere           utc_iono~%bool                    utc_iono_valid~%bool                    include_precise_time~%~%#float64                 utc_system_time_offset~%#GpsTime                 gps_time~%#bool                    gps_time_valid~%================================================================================~%MSG: ros_sensor_msgs/LlhPosition~%# # LlhPosition~%~%float64                  latitude   # [deg]~%float64                  longitude  # [deg]~%float64                  altitude   # [m]~%uint16                   horizontalAccuracy~%uint16                   verticalAccuracy~%================================================================================~%MSG: ros_sensor_msgs/CpuTimeOffset~%bool    valid~%float64 secondsOffset~%================================================================================~%MSG: ros_sensor_msgs/GpsEphemeris~%## Gps Ephemeris subframes for one satellite~%~%uint16      prn~%uint8[30]   subframe1~%uint8[30]   subframe2~%uint8[30]   subframe3~%================================================================================~%MSG: ros_sensor_msgs/GpsAlmanac~%~%uint16      prn~%uint16      reference_week~%uint8[30]   subframe~%================================================================================~%MSG: ros_sensor_msgs/UtcIonosphere~%## Subframe of UTC and Ionospheric Parameters~%~%uint8[30]   subframe~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GpsAssist>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cpu_time_offset))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ephemerides) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'almanac) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'utc_iono))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GpsAssist>))
  "Converts a ROS message object to a list"
  (cl:list 'GpsAssist
    (cl:cons ':position (position msg))
    (cl:cons ':position_valid (position_valid msg))
    (cl:cons ':cpu_time_offset (cpu_time_offset msg))
    (cl:cons ':ephemerides (ephemerides msg))
    (cl:cons ':almanac (almanac msg))
    (cl:cons ':utc_iono (utc_iono msg))
    (cl:cons ':utc_iono_valid (utc_iono_valid msg))
    (cl:cons ':include_precise_time (include_precise_time msg))
))
