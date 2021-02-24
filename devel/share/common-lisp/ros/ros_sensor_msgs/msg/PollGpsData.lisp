; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude PollGpsData.msg.html

(cl:defclass <PollGpsData> (roslisp-msg-protocol:ros-message)
  ((pvt
    :reader pvt
    :initarg :pvt
    :type cl:boolean
    :initform cl:nil)
   (ephemeris
    :reader ephemeris
    :initarg :ephemeris
    :type cl:boolean
    :initform cl:nil)
   (almanac
    :reader almanac
    :initarg :almanac
    :type cl:boolean
    :initform cl:nil)
   (utc_iono
    :reader utc_iono
    :initarg :utc_iono
    :type cl:boolean
    :initform cl:nil)
   (ranges
    :reader ranges
    :initarg :ranges
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PollGpsData (<PollGpsData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PollGpsData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PollGpsData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<PollGpsData> is deprecated: use ros_sensor_msgs-msg:PollGpsData instead.")))

(cl:ensure-generic-function 'pvt-val :lambda-list '(m))
(cl:defmethod pvt-val ((m <PollGpsData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:pvt-val is deprecated.  Use ros_sensor_msgs-msg:pvt instead.")
  (pvt m))

(cl:ensure-generic-function 'ephemeris-val :lambda-list '(m))
(cl:defmethod ephemeris-val ((m <PollGpsData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:ephemeris-val is deprecated.  Use ros_sensor_msgs-msg:ephemeris instead.")
  (ephemeris m))

(cl:ensure-generic-function 'almanac-val :lambda-list '(m))
(cl:defmethod almanac-val ((m <PollGpsData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:almanac-val is deprecated.  Use ros_sensor_msgs-msg:almanac instead.")
  (almanac m))

(cl:ensure-generic-function 'utc_iono-val :lambda-list '(m))
(cl:defmethod utc_iono-val ((m <PollGpsData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:utc_iono-val is deprecated.  Use ros_sensor_msgs-msg:utc_iono instead.")
  (utc_iono m))

(cl:ensure-generic-function 'ranges-val :lambda-list '(m))
(cl:defmethod ranges-val ((m <PollGpsData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:ranges-val is deprecated.  Use ros_sensor_msgs-msg:ranges instead.")
  (ranges m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PollGpsData>) ostream)
  "Serializes a message object of type '<PollGpsData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'pvt) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ephemeris) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'almanac) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'utc_iono) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ranges) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PollGpsData>) istream)
  "Deserializes a message object of type '<PollGpsData>"
    (cl:setf (cl:slot-value msg 'pvt) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'ephemeris) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'almanac) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'utc_iono) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'ranges) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PollGpsData>)))
  "Returns string type for a message object of type '<PollGpsData>"
  "ros_sensor_msgs/PollGpsData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PollGpsData)))
  "Returns string type for a message object of type 'PollGpsData"
  "ros_sensor_msgs/PollGpsData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PollGpsData>)))
  "Returns md5sum for a message object of type '<PollGpsData>"
  "92871acf07b81d655c7b80e6382140a2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PollGpsData)))
  "Returns md5sum for a message object of type 'PollGpsData"
  "92871acf07b81d655c7b80e6382140a2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PollGpsData>)))
  "Returns full string definition for message of type '<PollGpsData>"
  (cl:format cl:nil "bool    pvt~%bool    ephemeris~%bool    almanac~%bool    utc_iono~%bool    ranges~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PollGpsData)))
  "Returns full string definition for message of type 'PollGpsData"
  (cl:format cl:nil "bool    pvt~%bool    ephemeris~%bool    almanac~%bool    utc_iono~%bool    ranges~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PollGpsData>))
  (cl:+ 0
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PollGpsData>))
  "Converts a ROS message object to a list"
  (cl:list 'PollGpsData
    (cl:cons ':pvt (pvt msg))
    (cl:cons ':ephemeris (ephemeris msg))
    (cl:cons ':almanac (almanac msg))
    (cl:cons ':utc_iono (utc_iono msg))
    (cl:cons ':ranges (ranges msg))
))
