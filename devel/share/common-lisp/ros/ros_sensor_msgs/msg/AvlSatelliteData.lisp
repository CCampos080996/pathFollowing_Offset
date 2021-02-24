; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude AvlSatelliteData.msg.html

(cl:defclass <AvlSatelliteData> (roslisp-msg-protocol:ros-message)
  ((fromReceiver
    :reader fromReceiver
    :initarg :fromReceiver
    :type cl:integer
    :initform 0)
   (fromNetwork
    :reader fromNetwork
    :initarg :fromNetwork
    :type cl:integer
    :initform 0)
   (fromRinex
    :reader fromRinex
    :initarg :fromRinex
    :type cl:integer
    :initform 0)
   (fromUnknown
    :reader fromUnknown
    :initarg :fromUnknown
    :type cl:integer
    :initform 0))
)

(cl:defclass AvlSatelliteData (<AvlSatelliteData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AvlSatelliteData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AvlSatelliteData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<AvlSatelliteData> is deprecated: use ros_sensor_msgs-msg:AvlSatelliteData instead.")))

(cl:ensure-generic-function 'fromReceiver-val :lambda-list '(m))
(cl:defmethod fromReceiver-val ((m <AvlSatelliteData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:fromReceiver-val is deprecated.  Use ros_sensor_msgs-msg:fromReceiver instead.")
  (fromReceiver m))

(cl:ensure-generic-function 'fromNetwork-val :lambda-list '(m))
(cl:defmethod fromNetwork-val ((m <AvlSatelliteData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:fromNetwork-val is deprecated.  Use ros_sensor_msgs-msg:fromNetwork instead.")
  (fromNetwork m))

(cl:ensure-generic-function 'fromRinex-val :lambda-list '(m))
(cl:defmethod fromRinex-val ((m <AvlSatelliteData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:fromRinex-val is deprecated.  Use ros_sensor_msgs-msg:fromRinex instead.")
  (fromRinex m))

(cl:ensure-generic-function 'fromUnknown-val :lambda-list '(m))
(cl:defmethod fromUnknown-val ((m <AvlSatelliteData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:fromUnknown-val is deprecated.  Use ros_sensor_msgs-msg:fromUnknown instead.")
  (fromUnknown m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AvlSatelliteData>) ostream)
  "Serializes a message object of type '<AvlSatelliteData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fromReceiver)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fromReceiver)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'fromReceiver)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'fromReceiver)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fromNetwork)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fromNetwork)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'fromNetwork)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'fromNetwork)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fromRinex)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fromRinex)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'fromRinex)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'fromRinex)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fromUnknown)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fromUnknown)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'fromUnknown)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'fromUnknown)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AvlSatelliteData>) istream)
  "Deserializes a message object of type '<AvlSatelliteData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fromReceiver)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fromReceiver)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'fromReceiver)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'fromReceiver)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fromNetwork)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fromNetwork)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'fromNetwork)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'fromNetwork)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fromRinex)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fromRinex)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'fromRinex)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'fromRinex)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fromUnknown)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fromUnknown)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'fromUnknown)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'fromUnknown)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AvlSatelliteData>)))
  "Returns string type for a message object of type '<AvlSatelliteData>"
  "ros_sensor_msgs/AvlSatelliteData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AvlSatelliteData)))
  "Returns string type for a message object of type 'AvlSatelliteData"
  "ros_sensor_msgs/AvlSatelliteData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AvlSatelliteData>)))
  "Returns md5sum for a message object of type '<AvlSatelliteData>"
  "76f8b39b7941efd688ebc4770b25c1d2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AvlSatelliteData)))
  "Returns md5sum for a message object of type 'AvlSatelliteData"
  "76f8b39b7941efd688ebc4770b25c1d2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AvlSatelliteData>)))
  "Returns full string definition for message of type '<AvlSatelliteData>"
  (cl:format cl:nil "uint32    fromReceiver~%uint32    fromNetwork~%uint32    fromRinex~%uint32    fromUnknown~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AvlSatelliteData)))
  "Returns full string definition for message of type 'AvlSatelliteData"
  (cl:format cl:nil "uint32    fromReceiver~%uint32    fromNetwork~%uint32    fromRinex~%uint32    fromUnknown~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AvlSatelliteData>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AvlSatelliteData>))
  "Converts a ROS message object to a list"
  (cl:list 'AvlSatelliteData
    (cl:cons ':fromReceiver (fromReceiver msg))
    (cl:cons ':fromNetwork (fromNetwork msg))
    (cl:cons ':fromRinex (fromRinex msg))
    (cl:cons ':fromUnknown (fromUnknown msg))
))
