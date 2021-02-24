; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude SensorType.msg.html

(cl:defclass <SensorType> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SensorType (<SensorType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SensorType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SensorType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<SensorType> is deprecated: use ros_sensor_msgs-msg:SensorType instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <SensorType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:type-val is deprecated.  Use ros_sensor_msgs-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SensorType>)))
    "Constants for message type '<SensorType>"
  '((:SENSORTYPEUNKNOWN . 0)
    (:SENSORTYPEGPS . 1)
    (:SENSORTYPEGLONASS . 2)
    (:SENSORTYPEGALILEO . 4)
    (:SENSORTYPEIMU . 8)
    (:SENSORRFRANGE . 16)
    (:SENSORTYPEVISION . 32))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SensorType)))
    "Constants for message type 'SensorType"
  '((:SENSORTYPEUNKNOWN . 0)
    (:SENSORTYPEGPS . 1)
    (:SENSORTYPEGLONASS . 2)
    (:SENSORTYPEGALILEO . 4)
    (:SENSORTYPEIMU . 8)
    (:SENSORRFRANGE . 16)
    (:SENSORTYPEVISION . 32))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SensorType>) ostream)
  "Serializes a message object of type '<SensorType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SensorType>) istream)
  "Deserializes a message object of type '<SensorType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SensorType>)))
  "Returns string type for a message object of type '<SensorType>"
  "ros_sensor_msgs/SensorType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SensorType)))
  "Returns string type for a message object of type 'SensorType"
  "ros_sensor_msgs/SensorType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SensorType>)))
  "Returns md5sum for a message object of type '<SensorType>"
  "3fe390b5ba2bf66b459cdc2b21df74dd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SensorType)))
  "Returns md5sum for a message object of type 'SensorType"
  "3fe390b5ba2bf66b459cdc2b21df74dd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SensorType>)))
  "Returns full string definition for message of type '<SensorType>"
  (cl:format cl:nil "## Sensor Type~%~%uint8 SensorTypeUnknown = 0~%uint8 SensorTypeGps     = 1~%uint8 SensorTypeGlonass = 2~%uint8 SensorTypeGalileo = 4~%uint8 SensorTypeImu     = 8~%uint8 SensorRfRange     = 16~%uint8 SensorTypeVision  = 32~%~%uint8 type~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SensorType)))
  "Returns full string definition for message of type 'SensorType"
  (cl:format cl:nil "## Sensor Type~%~%uint8 SensorTypeUnknown = 0~%uint8 SensorTypeGps     = 1~%uint8 SensorTypeGlonass = 2~%uint8 SensorTypeGalileo = 4~%uint8 SensorTypeImu     = 8~%uint8 SensorRfRange     = 16~%uint8 SensorTypeVision  = 32~%~%uint8 type~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SensorType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SensorType>))
  "Converts a ROS message object to a list"
  (cl:list 'SensorType
    (cl:cons ':type (type msg))
))
