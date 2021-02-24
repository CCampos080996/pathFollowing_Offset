; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude FrequencyType.msg.html

(cl:defclass <FrequencyType> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass FrequencyType (<FrequencyType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FrequencyType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FrequencyType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<FrequencyType> is deprecated: use ros_sensor_msgs-msg:FrequencyType instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <FrequencyType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:type-val is deprecated.  Use ros_sensor_msgs-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<FrequencyType>)))
    "Constants for message type '<FrequencyType>"
  '((:FREQUENCYTYPEUNKNOWN . 0)
    (:FREQUENCYTYPEL1 . 1)
    (:FREQUENCYTYPEL2 . 2)
    (:FREQUENCYTYPEL5 . 3)
    (:FREQUENCYTYPEGALILEOE1 . 4)
    (:FREQUENCYTYPEGALILEOE5 . 5)
    (:FREQUENCYTYPEGALILEOE6 . 6)
    (:FREQUENCYTYPEGALILEOC . 7)
    (:FREQUENCYTYPEGLONASSL1F . 8)
    (:FREQUENCYTYPEGLONASSL2F . 9)
    (:FREQUENCYTYPEGLONASSL1C . 10)
    (:FREQUENCYTYPEGLONASSL2C . 11)
    (:FREQUENCYTYPEGLONASSL3C . 12))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'FrequencyType)))
    "Constants for message type 'FrequencyType"
  '((:FREQUENCYTYPEUNKNOWN . 0)
    (:FREQUENCYTYPEL1 . 1)
    (:FREQUENCYTYPEL2 . 2)
    (:FREQUENCYTYPEL5 . 3)
    (:FREQUENCYTYPEGALILEOE1 . 4)
    (:FREQUENCYTYPEGALILEOE5 . 5)
    (:FREQUENCYTYPEGALILEOE6 . 6)
    (:FREQUENCYTYPEGALILEOC . 7)
    (:FREQUENCYTYPEGLONASSL1F . 8)
    (:FREQUENCYTYPEGLONASSL2F . 9)
    (:FREQUENCYTYPEGLONASSL1C . 10)
    (:FREQUENCYTYPEGLONASSL2C . 11)
    (:FREQUENCYTYPEGLONASSL3C . 12))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FrequencyType>) ostream)
  "Serializes a message object of type '<FrequencyType>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FrequencyType>) istream)
  "Deserializes a message object of type '<FrequencyType>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FrequencyType>)))
  "Returns string type for a message object of type '<FrequencyType>"
  "ros_sensor_msgs/FrequencyType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FrequencyType)))
  "Returns string type for a message object of type 'FrequencyType"
  "ros_sensor_msgs/FrequencyType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FrequencyType>)))
  "Returns md5sum for a message object of type '<FrequencyType>"
  "0401b2908f64151d32113b6c4ffdc15a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FrequencyType)))
  "Returns md5sum for a message object of type 'FrequencyType"
  "0401b2908f64151d32113b6c4ffdc15a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FrequencyType>)))
  "Returns full string definition for message of type '<FrequencyType>"
  (cl:format cl:nil "## Frequency Type~%~%uint8 FrequencyTypeUnknown      = 0~%uint8 FrequencyTypeL1           = 1~%uint8 FrequencyTypeL2           = 2~%uint8 FrequencyTypeL5           = 3~%uint8 FrequencyTypeGalileoE1    = 4~%uint8 FrequencyTypeGalileoE5    = 5~%uint8 FrequencyTypeGalileoE6    = 6~%uint8 FrequencyTypeGalileoC     = 7~%uint8 FrequencyTypeGlonassL1F   = 8~%uint8 FrequencyTypeGlonassL2F   = 9~%uint8 FrequencyTypeGlonassL1C   = 10~%uint8 FrequencyTypeGlonassL2C   = 11~%uint8 FrequencyTypeGlonassL3C   = 12~%~%uint8 type~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FrequencyType)))
  "Returns full string definition for message of type 'FrequencyType"
  (cl:format cl:nil "## Frequency Type~%~%uint8 FrequencyTypeUnknown      = 0~%uint8 FrequencyTypeL1           = 1~%uint8 FrequencyTypeL2           = 2~%uint8 FrequencyTypeL5           = 3~%uint8 FrequencyTypeGalileoE1    = 4~%uint8 FrequencyTypeGalileoE5    = 5~%uint8 FrequencyTypeGalileoE6    = 6~%uint8 FrequencyTypeGalileoC     = 7~%uint8 FrequencyTypeGlonassL1F   = 8~%uint8 FrequencyTypeGlonassL2F   = 9~%uint8 FrequencyTypeGlonassL1C   = 10~%uint8 FrequencyTypeGlonassL2C   = 11~%uint8 FrequencyTypeGlonassL3C   = 12~%~%uint8 type~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FrequencyType>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FrequencyType>))
  "Converts a ROS message object to a list"
  (cl:list 'FrequencyType
    (cl:cons ':type (type msg))
))
