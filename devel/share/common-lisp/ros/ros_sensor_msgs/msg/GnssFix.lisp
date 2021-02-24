; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude GnssFix.msg.html

(cl:defclass <GnssFix> (roslisp-msg-protocol:ros-message)
  ((fixStatus
    :reader fixStatus
    :initarg :fixStatus
    :type ros_sensor_msgs-msg:FixStatus
    :initform (cl:make-instance 'ros_sensor_msgs-msg:FixStatus))
   (timeOfValidity
    :reader timeOfValidity
    :initarg :timeOfValidity
    :type ros_sensor_msgs-msg:GpsTime
    :initform (cl:make-instance 'ros_sensor_msgs-msg:GpsTime))
   (llhPosition
    :reader llhPosition
    :initarg :llhPosition
    :type ros_sensor_msgs-msg:LlhPosition
    :initform (cl:make-instance 'ros_sensor_msgs-msg:LlhPosition))
   (enuVelocity
    :reader enuVelocity
    :initarg :enuVelocity
    :type ros_sensor_msgs-msg:EnuVelocity
    :initform (cl:make-instance 'ros_sensor_msgs-msg:EnuVelocity))
   (positionCovariance
    :reader positionCovariance
    :initarg :positionCovariance
    :type (cl:vector cl:float)
   :initform (cl:make-array 9 :element-type 'cl:float :initial-element 0.0))
   (position_covariance_type
    :reader position_covariance_type
    :initarg :position_covariance_type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GnssFix (<GnssFix>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GnssFix>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GnssFix)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<GnssFix> is deprecated: use ros_sensor_msgs-msg:GnssFix instead.")))

(cl:ensure-generic-function 'fixStatus-val :lambda-list '(m))
(cl:defmethod fixStatus-val ((m <GnssFix>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:fixStatus-val is deprecated.  Use ros_sensor_msgs-msg:fixStatus instead.")
  (fixStatus m))

(cl:ensure-generic-function 'timeOfValidity-val :lambda-list '(m))
(cl:defmethod timeOfValidity-val ((m <GnssFix>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:timeOfValidity-val is deprecated.  Use ros_sensor_msgs-msg:timeOfValidity instead.")
  (timeOfValidity m))

(cl:ensure-generic-function 'llhPosition-val :lambda-list '(m))
(cl:defmethod llhPosition-val ((m <GnssFix>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:llhPosition-val is deprecated.  Use ros_sensor_msgs-msg:llhPosition instead.")
  (llhPosition m))

(cl:ensure-generic-function 'enuVelocity-val :lambda-list '(m))
(cl:defmethod enuVelocity-val ((m <GnssFix>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:enuVelocity-val is deprecated.  Use ros_sensor_msgs-msg:enuVelocity instead.")
  (enuVelocity m))

(cl:ensure-generic-function 'positionCovariance-val :lambda-list '(m))
(cl:defmethod positionCovariance-val ((m <GnssFix>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:positionCovariance-val is deprecated.  Use ros_sensor_msgs-msg:positionCovariance instead.")
  (positionCovariance m))

(cl:ensure-generic-function 'position_covariance_type-val :lambda-list '(m))
(cl:defmethod position_covariance_type-val ((m <GnssFix>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:position_covariance_type-val is deprecated.  Use ros_sensor_msgs-msg:position_covariance_type instead.")
  (position_covariance_type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<GnssFix>)))
    "Constants for message type '<GnssFix>"
  '((:COVARIANCE_TYPE_UNKNOWN . 0)
    (:COVARIANCE_TYPE_APPROXIMATED . 1)
    (:COVARIANCE_TYPE_DIAGONAL_KNOWN . 2)
    (:COVARIANCE_TYPE_KNOWN . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'GnssFix)))
    "Constants for message type 'GnssFix"
  '((:COVARIANCE_TYPE_UNKNOWN . 0)
    (:COVARIANCE_TYPE_APPROXIMATED . 1)
    (:COVARIANCE_TYPE_DIAGONAL_KNOWN . 2)
    (:COVARIANCE_TYPE_KNOWN . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GnssFix>) ostream)
  "Serializes a message object of type '<GnssFix>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'fixStatus) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'timeOfValidity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'llhPosition) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'enuVelocity) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'positionCovariance))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'position_covariance_type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GnssFix>) istream)
  "Deserializes a message object of type '<GnssFix>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'fixStatus) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'timeOfValidity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'llhPosition) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'enuVelocity) istream)
  (cl:setf (cl:slot-value msg 'positionCovariance) (cl:make-array 9))
  (cl:let ((vals (cl:slot-value msg 'positionCovariance)))
    (cl:dotimes (i 9)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'position_covariance_type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GnssFix>)))
  "Returns string type for a message object of type '<GnssFix>"
  "ros_sensor_msgs/GnssFix")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GnssFix)))
  "Returns string type for a message object of type 'GnssFix"
  "ros_sensor_msgs/GnssFix")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GnssFix>)))
  "Returns md5sum for a message object of type '<GnssFix>"
  "6e5620648cab804bd0f37c21067cabe9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GnssFix)))
  "Returns md5sum for a message object of type 'GnssFix"
  "6e5620648cab804bd0f37c21067cabe9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GnssFix>)))
  "Returns full string definition for message of type '<GnssFix>"
  (cl:format cl:nil "~%FixStatus                fixStatus~%GpsTime                  timeOfValidity~%LlhPosition              llhPosition~%EnuVelocity              enuVelocity          ~%float64[9] 				 positionCovariance~%~%uint8 COVARIANCE_TYPE_UNKNOWN = 0~%uint8 COVARIANCE_TYPE_APPROXIMATED = 1~%uint8 COVARIANCE_TYPE_DIAGONAL_KNOWN = 2~%uint8 COVARIANCE_TYPE_KNOWN = 3~%uint8 position_covariance_type~%================================================================================~%MSG: ros_sensor_msgs/FixStatus~%# # FixStatus~%~%FixType fix~%uint32  numSvs~%float64  ttff~%================================================================================~%MSG: ros_sensor_msgs/FixType~%## Fix Type~%~%uint8 FixTypeNone = 0~%uint8 FixTypeDeadReckoning = 1~%uint8 FixType2D = 2~%uint8 FixType3D = 3~%uint8 FixTypeDRand3D = 4 ## Dead reckoning and GPS fix~%uint8 FixTypeTimeOnly = 5~%uint8 FixTypeStatic = 9~%~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/GpsTime~%## GPS time structure~%uint32          gps_week        # Full GPS week from (0:0:00 Jan 06, 1980)~%float64         gps_seconds     # GPS seconds into week [sec]~%================================================================================~%MSG: ros_sensor_msgs/LlhPosition~%# # LlhPosition~%~%float64                  latitude   # [deg]~%float64                  longitude  # [deg]~%float64                  altitude   # [m]~%uint16                   horizontalAccuracy~%uint16                   verticalAccuracy~%================================================================================~%MSG: ros_sensor_msgs/EnuVelocity~%float64					 eastVelocity~%float64                  northVelocity~%float64                  upVelocity~%float32                  horizontalAccuracy~%float32                  verticalAccuracy    ~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GnssFix)))
  "Returns full string definition for message of type 'GnssFix"
  (cl:format cl:nil "~%FixStatus                fixStatus~%GpsTime                  timeOfValidity~%LlhPosition              llhPosition~%EnuVelocity              enuVelocity          ~%float64[9] 				 positionCovariance~%~%uint8 COVARIANCE_TYPE_UNKNOWN = 0~%uint8 COVARIANCE_TYPE_APPROXIMATED = 1~%uint8 COVARIANCE_TYPE_DIAGONAL_KNOWN = 2~%uint8 COVARIANCE_TYPE_KNOWN = 3~%uint8 position_covariance_type~%================================================================================~%MSG: ros_sensor_msgs/FixStatus~%# # FixStatus~%~%FixType fix~%uint32  numSvs~%float64  ttff~%================================================================================~%MSG: ros_sensor_msgs/FixType~%## Fix Type~%~%uint8 FixTypeNone = 0~%uint8 FixTypeDeadReckoning = 1~%uint8 FixType2D = 2~%uint8 FixType3D = 3~%uint8 FixTypeDRand3D = 4 ## Dead reckoning and GPS fix~%uint8 FixTypeTimeOnly = 5~%uint8 FixTypeStatic = 9~%~%uint8 type~%================================================================================~%MSG: ros_sensor_msgs/GpsTime~%## GPS time structure~%uint32          gps_week        # Full GPS week from (0:0:00 Jan 06, 1980)~%float64         gps_seconds     # GPS seconds into week [sec]~%================================================================================~%MSG: ros_sensor_msgs/LlhPosition~%# # LlhPosition~%~%float64                  latitude   # [deg]~%float64                  longitude  # [deg]~%float64                  altitude   # [m]~%uint16                   horizontalAccuracy~%uint16                   verticalAccuracy~%================================================================================~%MSG: ros_sensor_msgs/EnuVelocity~%float64					 eastVelocity~%float64                  northVelocity~%float64                  upVelocity~%float32                  horizontalAccuracy~%float32                  verticalAccuracy    ~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GnssFix>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'fixStatus))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'timeOfValidity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'llhPosition))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'enuVelocity))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'positionCovariance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GnssFix>))
  "Converts a ROS message object to a list"
  (cl:list 'GnssFix
    (cl:cons ':fixStatus (fixStatus msg))
    (cl:cons ':timeOfValidity (timeOfValidity msg))
    (cl:cons ':llhPosition (llhPosition msg))
    (cl:cons ':enuVelocity (enuVelocity msg))
    (cl:cons ':positionCovariance (positionCovariance msg))
    (cl:cons ':position_covariance_type (position_covariance_type msg))
))
