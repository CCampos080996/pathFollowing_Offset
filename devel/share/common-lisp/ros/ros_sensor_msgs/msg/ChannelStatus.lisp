; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude ChannelStatus.msg.html

(cl:defclass <ChannelStatus> (roslisp-msg-protocol:ros-message)
  ((prn
    :reader prn
    :initarg :prn
    :type cl:integer
    :initform 0)
   (receiverChannel
    :reader receiverChannel
    :initarg :receiverChannel
    :type cl:integer
    :initform 0)
   (carrierToNoise
    :reader carrierToNoise
    :initarg :carrierToNoise
    :type cl:integer
    :initform 0)
   (azimuth
    :reader azimuth
    :initarg :azimuth
    :type cl:float
    :initform 0.0)
   (elevation
    :reader elevation
    :initarg :elevation
    :type cl:float
    :initform 0.0)
   (tracking
    :reader tracking
    :initarg :tracking
    :type ros_sensor_msgs-msg:TrackingStatus
    :initform (cl:make-instance 'ros_sensor_msgs-msg:TrackingStatus))
   (code
    :reader code
    :initarg :code
    :type ros_sensor_msgs-msg:CodeType
    :initform (cl:make-instance 'ros_sensor_msgs-msg:CodeType))
   (frequency
    :reader frequency
    :initarg :frequency
    :type ros_sensor_msgs-msg:FrequencyType
    :initform (cl:make-instance 'ros_sensor_msgs-msg:FrequencyType))
   (usedInSolution
    :reader usedInSolution
    :initarg :usedInSolution
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ChannelStatus (<ChannelStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChannelStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChannelStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<ChannelStatus> is deprecated: use ros_sensor_msgs-msg:ChannelStatus instead.")))

(cl:ensure-generic-function 'prn-val :lambda-list '(m))
(cl:defmethod prn-val ((m <ChannelStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:prn-val is deprecated.  Use ros_sensor_msgs-msg:prn instead.")
  (prn m))

(cl:ensure-generic-function 'receiverChannel-val :lambda-list '(m))
(cl:defmethod receiverChannel-val ((m <ChannelStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:receiverChannel-val is deprecated.  Use ros_sensor_msgs-msg:receiverChannel instead.")
  (receiverChannel m))

(cl:ensure-generic-function 'carrierToNoise-val :lambda-list '(m))
(cl:defmethod carrierToNoise-val ((m <ChannelStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:carrierToNoise-val is deprecated.  Use ros_sensor_msgs-msg:carrierToNoise instead.")
  (carrierToNoise m))

(cl:ensure-generic-function 'azimuth-val :lambda-list '(m))
(cl:defmethod azimuth-val ((m <ChannelStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:azimuth-val is deprecated.  Use ros_sensor_msgs-msg:azimuth instead.")
  (azimuth m))

(cl:ensure-generic-function 'elevation-val :lambda-list '(m))
(cl:defmethod elevation-val ((m <ChannelStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:elevation-val is deprecated.  Use ros_sensor_msgs-msg:elevation instead.")
  (elevation m))

(cl:ensure-generic-function 'tracking-val :lambda-list '(m))
(cl:defmethod tracking-val ((m <ChannelStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:tracking-val is deprecated.  Use ros_sensor_msgs-msg:tracking instead.")
  (tracking m))

(cl:ensure-generic-function 'code-val :lambda-list '(m))
(cl:defmethod code-val ((m <ChannelStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:code-val is deprecated.  Use ros_sensor_msgs-msg:code instead.")
  (code m))

(cl:ensure-generic-function 'frequency-val :lambda-list '(m))
(cl:defmethod frequency-val ((m <ChannelStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:frequency-val is deprecated.  Use ros_sensor_msgs-msg:frequency instead.")
  (frequency m))

(cl:ensure-generic-function 'usedInSolution-val :lambda-list '(m))
(cl:defmethod usedInSolution-val ((m <ChannelStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:usedInSolution-val is deprecated.  Use ros_sensor_msgs-msg:usedInSolution instead.")
  (usedInSolution m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChannelStatus>) ostream)
  "Serializes a message object of type '<ChannelStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'prn)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'prn)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'prn)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'prn)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'receiverChannel)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'receiverChannel)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'receiverChannel)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'receiverChannel)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'carrierToNoise)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'carrierToNoise)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'carrierToNoise)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'carrierToNoise)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'azimuth))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'elevation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'tracking) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'code) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'frequency) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'usedInSolution) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChannelStatus>) istream)
  "Deserializes a message object of type '<ChannelStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'prn)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'prn)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'prn)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'prn)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'receiverChannel)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'receiverChannel)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'receiverChannel)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'receiverChannel)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'carrierToNoise)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'carrierToNoise)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'carrierToNoise)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'carrierToNoise)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'azimuth) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'elevation) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'tracking) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'code) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'frequency) istream)
    (cl:setf (cl:slot-value msg 'usedInSolution) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChannelStatus>)))
  "Returns string type for a message object of type '<ChannelStatus>"
  "ros_sensor_msgs/ChannelStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChannelStatus)))
  "Returns string type for a message object of type 'ChannelStatus"
  "ros_sensor_msgs/ChannelStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChannelStatus>)))
  "Returns md5sum for a message object of type '<ChannelStatus>"
  "10bf0cee067be1677c1f456497b33d3b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChannelStatus)))
  "Returns md5sum for a message object of type 'ChannelStatus"
  "10bf0cee067be1677c1f456497b33d3b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChannelStatus>)))
  "Returns full string definition for message of type '<ChannelStatus>"
  (cl:format cl:nil "###Channel Status~%~%uint32         prn~%uint32         receiverChannel~%uint32         carrierToNoise   # db-Hz~%float32        azimuth~%float32        elevation~%TrackingStatus tracking~%CodeType       code~%FrequencyType  frequency~%bool           usedInSolution~%================================================================================~%MSG: ros_sensor_msgs/TrackingStatus~%## Tracking Status~%~%uint8 Idle                        = 0~%uint8 SearchingCa                 = 1~%uint8 SearchingPy                 = 2~%uint8 CodeLock                    = 3~%uint8 CarrierLock                 = 4~%uint8 CarrierTrackDataCollect     = 5~%uint8 SequentialResynchronization = 6~%uint8 Reacquisition               = 7~%uint8 Unusable                    = 8~%~%uint8 status~%================================================================================~%MSG: ros_sensor_msgs/CodeType~%## Code Type~%~%uint8 CodeTypeUnknown         = 0~%uint8 CodeTypeGpsCa           = 1~%uint8 CodeTypeGpsP            = 2~%uint8 CodeTypeGpsPCodeless    = 3~%uint8 CodeTypeGpsY            = 4~%uint8 CodeTypeGpsC            = 5~%uint8 CodeTypeGpsCCodeless    = 6~%uint8 CodeTypeGpsM            = 8~%uint8 CodeTypeGpsMPrime       = 9~%~%uint8 CodeTypeGlonass  = 16~%uint8 CodeTypeGalileo  = 32~%~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/FrequencyType~%## Frequency Type~%~%uint8 FrequencyTypeUnknown      = 0~%uint8 FrequencyTypeL1           = 1~%uint8 FrequencyTypeL2           = 2~%uint8 FrequencyTypeL5           = 3~%uint8 FrequencyTypeGalileoE1    = 4~%uint8 FrequencyTypeGalileoE5    = 5~%uint8 FrequencyTypeGalileoE6    = 6~%uint8 FrequencyTypeGalileoC     = 7~%uint8 FrequencyTypeGlonassL1F   = 8~%uint8 FrequencyTypeGlonassL2F   = 9~%uint8 FrequencyTypeGlonassL1C   = 10~%uint8 FrequencyTypeGlonassL2C   = 11~%uint8 FrequencyTypeGlonassL3C   = 12~%~%uint8 type~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChannelStatus)))
  "Returns full string definition for message of type 'ChannelStatus"
  (cl:format cl:nil "###Channel Status~%~%uint32         prn~%uint32         receiverChannel~%uint32         carrierToNoise   # db-Hz~%float32        azimuth~%float32        elevation~%TrackingStatus tracking~%CodeType       code~%FrequencyType  frequency~%bool           usedInSolution~%================================================================================~%MSG: ros_sensor_msgs/TrackingStatus~%## Tracking Status~%~%uint8 Idle                        = 0~%uint8 SearchingCa                 = 1~%uint8 SearchingPy                 = 2~%uint8 CodeLock                    = 3~%uint8 CarrierLock                 = 4~%uint8 CarrierTrackDataCollect     = 5~%uint8 SequentialResynchronization = 6~%uint8 Reacquisition               = 7~%uint8 Unusable                    = 8~%~%uint8 status~%================================================================================~%MSG: ros_sensor_msgs/CodeType~%## Code Type~%~%uint8 CodeTypeUnknown         = 0~%uint8 CodeTypeGpsCa           = 1~%uint8 CodeTypeGpsP            = 2~%uint8 CodeTypeGpsPCodeless    = 3~%uint8 CodeTypeGpsY            = 4~%uint8 CodeTypeGpsC            = 5~%uint8 CodeTypeGpsCCodeless    = 6~%uint8 CodeTypeGpsM            = 8~%uint8 CodeTypeGpsMPrime       = 9~%~%uint8 CodeTypeGlonass  = 16~%uint8 CodeTypeGalileo  = 32~%~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/FrequencyType~%## Frequency Type~%~%uint8 FrequencyTypeUnknown      = 0~%uint8 FrequencyTypeL1           = 1~%uint8 FrequencyTypeL2           = 2~%uint8 FrequencyTypeL5           = 3~%uint8 FrequencyTypeGalileoE1    = 4~%uint8 FrequencyTypeGalileoE5    = 5~%uint8 FrequencyTypeGalileoE6    = 6~%uint8 FrequencyTypeGalileoC     = 7~%uint8 FrequencyTypeGlonassL1F   = 8~%uint8 FrequencyTypeGlonassL2F   = 9~%uint8 FrequencyTypeGlonassL1C   = 10~%uint8 FrequencyTypeGlonassL2C   = 11~%uint8 FrequencyTypeGlonassL3C   = 12~%~%uint8 type~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChannelStatus>))
  (cl:+ 0
     4
     4
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'tracking))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'code))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'frequency))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChannelStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'ChannelStatus
    (cl:cons ':prn (prn msg))
    (cl:cons ':receiverChannel (receiverChannel msg))
    (cl:cons ':carrierToNoise (carrierToNoise msg))
    (cl:cons ':azimuth (azimuth msg))
    (cl:cons ':elevation (elevation msg))
    (cl:cons ':tracking (tracking msg))
    (cl:cons ':code (code msg))
    (cl:cons ':frequency (frequency msg))
    (cl:cons ':usedInSolution (usedInSolution msg))
))
