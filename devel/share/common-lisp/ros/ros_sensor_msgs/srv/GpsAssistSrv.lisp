; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-srv)


;//! \htmlinclude GpsAssistSrv-request.msg.html

(cl:defclass <GpsAssistSrv-request> (roslisp-msg-protocol:ros-message)
  ((assist
    :reader assist
    :initarg :assist
    :type ros_sensor_msgs-msg:GpsAssist
    :initform (cl:make-instance 'ros_sensor_msgs-msg:GpsAssist)))
)

(cl:defclass GpsAssistSrv-request (<GpsAssistSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GpsAssistSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GpsAssistSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-srv:<GpsAssistSrv-request> is deprecated: use ros_sensor_msgs-srv:GpsAssistSrv-request instead.")))

(cl:ensure-generic-function 'assist-val :lambda-list '(m))
(cl:defmethod assist-val ((m <GpsAssistSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-srv:assist-val is deprecated.  Use ros_sensor_msgs-srv:assist instead.")
  (assist m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GpsAssistSrv-request>) ostream)
  "Serializes a message object of type '<GpsAssistSrv-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'assist) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GpsAssistSrv-request>) istream)
  "Deserializes a message object of type '<GpsAssistSrv-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'assist) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GpsAssistSrv-request>)))
  "Returns string type for a service object of type '<GpsAssistSrv-request>"
  "ros_sensor_msgs/GpsAssistSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GpsAssistSrv-request)))
  "Returns string type for a service object of type 'GpsAssistSrv-request"
  "ros_sensor_msgs/GpsAssistSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GpsAssistSrv-request>)))
  "Returns md5sum for a message object of type '<GpsAssistSrv-request>"
  "90343e3974f5bb94a900d205e0870ced")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GpsAssistSrv-request)))
  "Returns md5sum for a message object of type 'GpsAssistSrv-request"
  "90343e3974f5bb94a900d205e0870ced")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GpsAssistSrv-request>)))
  "Returns full string definition for message of type '<GpsAssistSrv-request>"
  (cl:format cl:nil "GpsAssist assist~%~%================================================================================~%MSG: ros_sensor_msgs/GpsAssist~%LlhPosition             position~%bool                    position_valid~%CpuTimeOffset           cpu_time_offset~%GpsEphemeris[]          ephemerides~%GpsAlmanac[]            almanac~%UtcIonosphere           utc_iono~%bool                    utc_iono_valid~%bool                    include_precise_time~%~%#float64                 utc_system_time_offset~%#GpsTime                 gps_time~%#bool                    gps_time_valid~%================================================================================~%MSG: ros_sensor_msgs/LlhPosition~%# # LlhPosition~%~%float64                  latitude   # [deg]~%float64                  longitude  # [deg]~%float64                  altitude   # [m]~%uint16                   horizontalAccuracy~%uint16                   verticalAccuracy~%================================================================================~%MSG: ros_sensor_msgs/CpuTimeOffset~%bool    valid~%float64 secondsOffset~%================================================================================~%MSG: ros_sensor_msgs/GpsEphemeris~%## Gps Ephemeris subframes for one satellite~%~%uint16      prn~%uint8[30]   subframe1~%uint8[30]   subframe2~%uint8[30]   subframe3~%================================================================================~%MSG: ros_sensor_msgs/GpsAlmanac~%~%uint16      prn~%uint16      reference_week~%uint8[30]   subframe~%================================================================================~%MSG: ros_sensor_msgs/UtcIonosphere~%## Subframe of UTC and Ionospheric Parameters~%~%uint8[30]   subframe~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GpsAssistSrv-request)))
  "Returns full string definition for message of type 'GpsAssistSrv-request"
  (cl:format cl:nil "GpsAssist assist~%~%================================================================================~%MSG: ros_sensor_msgs/GpsAssist~%LlhPosition             position~%bool                    position_valid~%CpuTimeOffset           cpu_time_offset~%GpsEphemeris[]          ephemerides~%GpsAlmanac[]            almanac~%UtcIonosphere           utc_iono~%bool                    utc_iono_valid~%bool                    include_precise_time~%~%#float64                 utc_system_time_offset~%#GpsTime                 gps_time~%#bool                    gps_time_valid~%================================================================================~%MSG: ros_sensor_msgs/LlhPosition~%# # LlhPosition~%~%float64                  latitude   # [deg]~%float64                  longitude  # [deg]~%float64                  altitude   # [m]~%uint16                   horizontalAccuracy~%uint16                   verticalAccuracy~%================================================================================~%MSG: ros_sensor_msgs/CpuTimeOffset~%bool    valid~%float64 secondsOffset~%================================================================================~%MSG: ros_sensor_msgs/GpsEphemeris~%## Gps Ephemeris subframes for one satellite~%~%uint16      prn~%uint8[30]   subframe1~%uint8[30]   subframe2~%uint8[30]   subframe3~%================================================================================~%MSG: ros_sensor_msgs/GpsAlmanac~%~%uint16      prn~%uint16      reference_week~%uint8[30]   subframe~%================================================================================~%MSG: ros_sensor_msgs/UtcIonosphere~%## Subframe of UTC and Ionospheric Parameters~%~%uint8[30]   subframe~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GpsAssistSrv-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'assist))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GpsAssistSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GpsAssistSrv-request
    (cl:cons ':assist (assist msg))
))
;//! \htmlinclude GpsAssistSrv-response.msg.html

(cl:defclass <GpsAssistSrv-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GpsAssistSrv-response (<GpsAssistSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GpsAssistSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GpsAssistSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-srv:<GpsAssistSrv-response> is deprecated: use ros_sensor_msgs-srv:GpsAssistSrv-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GpsAssistSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-srv:success-val is deprecated.  Use ros_sensor_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GpsAssistSrv-response>) ostream)
  "Serializes a message object of type '<GpsAssistSrv-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GpsAssistSrv-response>) istream)
  "Deserializes a message object of type '<GpsAssistSrv-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GpsAssistSrv-response>)))
  "Returns string type for a service object of type '<GpsAssistSrv-response>"
  "ros_sensor_msgs/GpsAssistSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GpsAssistSrv-response)))
  "Returns string type for a service object of type 'GpsAssistSrv-response"
  "ros_sensor_msgs/GpsAssistSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GpsAssistSrv-response>)))
  "Returns md5sum for a message object of type '<GpsAssistSrv-response>"
  "90343e3974f5bb94a900d205e0870ced")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GpsAssistSrv-response)))
  "Returns md5sum for a message object of type 'GpsAssistSrv-response"
  "90343e3974f5bb94a900d205e0870ced")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GpsAssistSrv-response>)))
  "Returns full string definition for message of type '<GpsAssistSrv-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GpsAssistSrv-response)))
  "Returns full string definition for message of type 'GpsAssistSrv-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GpsAssistSrv-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GpsAssistSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GpsAssistSrv-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GpsAssistSrv)))
  'GpsAssistSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GpsAssistSrv)))
  'GpsAssistSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GpsAssistSrv)))
  "Returns string type for a service object of type '<GpsAssistSrv>"
  "ros_sensor_msgs/GpsAssistSrv")