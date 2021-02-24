; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-srv)


;//! \htmlinclude CmdGpsAssistSrv-request.msg.html

(cl:defclass <CmdGpsAssistSrv-request> (roslisp-msg-protocol:ros-message)
  ((assist
    :reader assist
    :initarg :assist
    :type ros_sensor_msgs-msg:CmdGpsAssist
    :initform (cl:make-instance 'ros_sensor_msgs-msg:CmdGpsAssist)))
)

(cl:defclass CmdGpsAssistSrv-request (<CmdGpsAssistSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CmdGpsAssistSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CmdGpsAssistSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-srv:<CmdGpsAssistSrv-request> is deprecated: use ros_sensor_msgs-srv:CmdGpsAssistSrv-request instead.")))

(cl:ensure-generic-function 'assist-val :lambda-list '(m))
(cl:defmethod assist-val ((m <CmdGpsAssistSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-srv:assist-val is deprecated.  Use ros_sensor_msgs-srv:assist instead.")
  (assist m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CmdGpsAssistSrv-request>) ostream)
  "Serializes a message object of type '<CmdGpsAssistSrv-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'assist) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CmdGpsAssistSrv-request>) istream)
  "Deserializes a message object of type '<CmdGpsAssistSrv-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'assist) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CmdGpsAssistSrv-request>)))
  "Returns string type for a service object of type '<CmdGpsAssistSrv-request>"
  "ros_sensor_msgs/CmdGpsAssistSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CmdGpsAssistSrv-request)))
  "Returns string type for a service object of type 'CmdGpsAssistSrv-request"
  "ros_sensor_msgs/CmdGpsAssistSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CmdGpsAssistSrv-request>)))
  "Returns md5sum for a message object of type '<CmdGpsAssistSrv-request>"
  "6bdb59dd737011607cc3575b372fe7eb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CmdGpsAssistSrv-request)))
  "Returns md5sum for a message object of type 'CmdGpsAssistSrv-request"
  "6bdb59dd737011607cc3575b372fe7eb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CmdGpsAssistSrv-request>)))
  "Returns full string definition for message of type '<CmdGpsAssistSrv-request>"
  (cl:format cl:nil "CmdGpsAssist assist~%~%================================================================================~%MSG: ros_sensor_msgs/CmdGpsAssist~%bool assist_time~%bool assist_position~%bool assist_gps_ephemeris~%bool assist_gps_almanac~%bool assist_gps_utc_iono~%bool assist_precise_time~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CmdGpsAssistSrv-request)))
  "Returns full string definition for message of type 'CmdGpsAssistSrv-request"
  (cl:format cl:nil "CmdGpsAssist assist~%~%================================================================================~%MSG: ros_sensor_msgs/CmdGpsAssist~%bool assist_time~%bool assist_position~%bool assist_gps_ephemeris~%bool assist_gps_almanac~%bool assist_gps_utc_iono~%bool assist_precise_time~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CmdGpsAssistSrv-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'assist))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CmdGpsAssistSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CmdGpsAssistSrv-request
    (cl:cons ':assist (assist msg))
))
;//! \htmlinclude CmdGpsAssistSrv-response.msg.html

(cl:defclass <CmdGpsAssistSrv-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CmdGpsAssistSrv-response (<CmdGpsAssistSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CmdGpsAssistSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CmdGpsAssistSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-srv:<CmdGpsAssistSrv-response> is deprecated: use ros_sensor_msgs-srv:CmdGpsAssistSrv-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <CmdGpsAssistSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-srv:success-val is deprecated.  Use ros_sensor_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CmdGpsAssistSrv-response>) ostream)
  "Serializes a message object of type '<CmdGpsAssistSrv-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CmdGpsAssistSrv-response>) istream)
  "Deserializes a message object of type '<CmdGpsAssistSrv-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CmdGpsAssistSrv-response>)))
  "Returns string type for a service object of type '<CmdGpsAssistSrv-response>"
  "ros_sensor_msgs/CmdGpsAssistSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CmdGpsAssistSrv-response)))
  "Returns string type for a service object of type 'CmdGpsAssistSrv-response"
  "ros_sensor_msgs/CmdGpsAssistSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CmdGpsAssistSrv-response>)))
  "Returns md5sum for a message object of type '<CmdGpsAssistSrv-response>"
  "6bdb59dd737011607cc3575b372fe7eb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CmdGpsAssistSrv-response)))
  "Returns md5sum for a message object of type 'CmdGpsAssistSrv-response"
  "6bdb59dd737011607cc3575b372fe7eb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CmdGpsAssistSrv-response>)))
  "Returns full string definition for message of type '<CmdGpsAssistSrv-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CmdGpsAssistSrv-response)))
  "Returns full string definition for message of type 'CmdGpsAssistSrv-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CmdGpsAssistSrv-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CmdGpsAssistSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CmdGpsAssistSrv-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CmdGpsAssistSrv)))
  'CmdGpsAssistSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CmdGpsAssistSrv)))
  'CmdGpsAssistSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CmdGpsAssistSrv)))
  "Returns string type for a service object of type '<CmdGpsAssistSrv>"
  "ros_sensor_msgs/CmdGpsAssistSrv")