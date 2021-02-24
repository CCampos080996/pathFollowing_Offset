; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude NetworkTimeOffset.msg.html

(cl:defclass <NetworkTimeOffset> (roslisp-msg-protocol:ros-message)
  ((timeOfValidity
    :reader timeOfValidity
    :initarg :timeOfValidity
    :type ros_sensor_msgs-msg:GpsTime
    :initform (cl:make-instance 'ros_sensor_msgs-msg:GpsTime))
   (dataValid
    :reader dataValid
    :initarg :dataValid
    :type cl:boolean
    :initform cl:nil)
   (networkDifferenceCounts
    :reader networkDifferenceCounts
    :initarg :networkDifferenceCounts
    :type cl:integer
    :initform 0)
   (networkDriftCounts
    :reader networkDriftCounts
    :initarg :networkDriftCounts
    :type cl:integer
    :initform 0)
   (oscillatorFreqEst
    :reader oscillatorFreqEst
    :initarg :oscillatorFreqEst
    :type cl:integer
    :initform 0)
   (networkDifferenceCmdCounts
    :reader networkDifferenceCmdCounts
    :initarg :networkDifferenceCmdCounts
    :type cl:integer
    :initform 0)
   (networkDriftCmdCounts
    :reader networkDriftCmdCounts
    :initarg :networkDriftCmdCounts
    :type cl:integer
    :initform 0)
   (networkPpsCount
    :reader networkPpsCount
    :initarg :networkPpsCount
    :type cl:integer
    :initform 0)
   (gpsPpsCount
    :reader gpsPpsCount
    :initarg :gpsPpsCount
    :type cl:integer
    :initform 0))
)

(cl:defclass NetworkTimeOffset (<NetworkTimeOffset>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NetworkTimeOffset>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NetworkTimeOffset)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<NetworkTimeOffset> is deprecated: use ros_sensor_msgs-msg:NetworkTimeOffset instead.")))

(cl:ensure-generic-function 'timeOfValidity-val :lambda-list '(m))
(cl:defmethod timeOfValidity-val ((m <NetworkTimeOffset>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:timeOfValidity-val is deprecated.  Use ros_sensor_msgs-msg:timeOfValidity instead.")
  (timeOfValidity m))

(cl:ensure-generic-function 'dataValid-val :lambda-list '(m))
(cl:defmethod dataValid-val ((m <NetworkTimeOffset>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:dataValid-val is deprecated.  Use ros_sensor_msgs-msg:dataValid instead.")
  (dataValid m))

(cl:ensure-generic-function 'networkDifferenceCounts-val :lambda-list '(m))
(cl:defmethod networkDifferenceCounts-val ((m <NetworkTimeOffset>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:networkDifferenceCounts-val is deprecated.  Use ros_sensor_msgs-msg:networkDifferenceCounts instead.")
  (networkDifferenceCounts m))

(cl:ensure-generic-function 'networkDriftCounts-val :lambda-list '(m))
(cl:defmethod networkDriftCounts-val ((m <NetworkTimeOffset>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:networkDriftCounts-val is deprecated.  Use ros_sensor_msgs-msg:networkDriftCounts instead.")
  (networkDriftCounts m))

(cl:ensure-generic-function 'oscillatorFreqEst-val :lambda-list '(m))
(cl:defmethod oscillatorFreqEst-val ((m <NetworkTimeOffset>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:oscillatorFreqEst-val is deprecated.  Use ros_sensor_msgs-msg:oscillatorFreqEst instead.")
  (oscillatorFreqEst m))

(cl:ensure-generic-function 'networkDifferenceCmdCounts-val :lambda-list '(m))
(cl:defmethod networkDifferenceCmdCounts-val ((m <NetworkTimeOffset>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:networkDifferenceCmdCounts-val is deprecated.  Use ros_sensor_msgs-msg:networkDifferenceCmdCounts instead.")
  (networkDifferenceCmdCounts m))

(cl:ensure-generic-function 'networkDriftCmdCounts-val :lambda-list '(m))
(cl:defmethod networkDriftCmdCounts-val ((m <NetworkTimeOffset>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:networkDriftCmdCounts-val is deprecated.  Use ros_sensor_msgs-msg:networkDriftCmdCounts instead.")
  (networkDriftCmdCounts m))

(cl:ensure-generic-function 'networkPpsCount-val :lambda-list '(m))
(cl:defmethod networkPpsCount-val ((m <NetworkTimeOffset>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:networkPpsCount-val is deprecated.  Use ros_sensor_msgs-msg:networkPpsCount instead.")
  (networkPpsCount m))

(cl:ensure-generic-function 'gpsPpsCount-val :lambda-list '(m))
(cl:defmethod gpsPpsCount-val ((m <NetworkTimeOffset>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:gpsPpsCount-val is deprecated.  Use ros_sensor_msgs-msg:gpsPpsCount instead.")
  (gpsPpsCount m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NetworkTimeOffset>) ostream)
  "Serializes a message object of type '<NetworkTimeOffset>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'timeOfValidity) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'dataValid) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'networkDifferenceCounts)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'networkDriftCounts)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'oscillatorFreqEst)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'networkDifferenceCmdCounts)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'networkDriftCmdCounts)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'networkPpsCount)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'networkPpsCount)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'networkPpsCount)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'networkPpsCount)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gpsPpsCount)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'gpsPpsCount)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'gpsPpsCount)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'gpsPpsCount)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NetworkTimeOffset>) istream)
  "Deserializes a message object of type '<NetworkTimeOffset>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'timeOfValidity) istream)
    (cl:setf (cl:slot-value msg 'dataValid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'networkDifferenceCounts) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'networkDriftCounts) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'oscillatorFreqEst) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'networkDifferenceCmdCounts) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'networkDriftCmdCounts) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'networkPpsCount)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'networkPpsCount)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'networkPpsCount)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'networkPpsCount)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gpsPpsCount)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'gpsPpsCount)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'gpsPpsCount)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'gpsPpsCount)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NetworkTimeOffset>)))
  "Returns string type for a message object of type '<NetworkTimeOffset>"
  "ros_sensor_msgs/NetworkTimeOffset")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NetworkTimeOffset)))
  "Returns string type for a message object of type 'NetworkTimeOffset"
  "ros_sensor_msgs/NetworkTimeOffset")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NetworkTimeOffset>)))
  "Returns md5sum for a message object of type '<NetworkTimeOffset>"
  "412c840c046eb987aa756fb5be2c7955")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NetworkTimeOffset)))
  "Returns md5sum for a message object of type 'NetworkTimeOffset"
  "412c840c046eb987aa756fb5be2c7955")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NetworkTimeOffset>)))
  "Returns full string definition for message of type '<NetworkTimeOffset>"
  (cl:format cl:nil "  GpsTime timeOfValidity~%  bool    dataValid~%  int32   networkDifferenceCounts~%  int32   networkDriftCounts~%  int32   oscillatorFreqEst~%  int32   networkDifferenceCmdCounts~%  int32   networkDriftCmdCounts~%  uint32  networkPpsCount~%  uint32  gpsPpsCount~%================================================================================~%MSG: ros_sensor_msgs/GpsTime~%## GPS time structure~%uint32          gps_week        # Full GPS week from (0:0:00 Jan 06, 1980)~%float64         gps_seconds     # GPS seconds into week [sec]~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NetworkTimeOffset)))
  "Returns full string definition for message of type 'NetworkTimeOffset"
  (cl:format cl:nil "  GpsTime timeOfValidity~%  bool    dataValid~%  int32   networkDifferenceCounts~%  int32   networkDriftCounts~%  int32   oscillatorFreqEst~%  int32   networkDifferenceCmdCounts~%  int32   networkDriftCmdCounts~%  uint32  networkPpsCount~%  uint32  gpsPpsCount~%================================================================================~%MSG: ros_sensor_msgs/GpsTime~%## GPS time structure~%uint32          gps_week        # Full GPS week from (0:0:00 Jan 06, 1980)~%float64         gps_seconds     # GPS seconds into week [sec]~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NetworkTimeOffset>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'timeOfValidity))
     1
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NetworkTimeOffset>))
  "Converts a ROS message object to a list"
  (cl:list 'NetworkTimeOffset
    (cl:cons ':timeOfValidity (timeOfValidity msg))
    (cl:cons ':dataValid (dataValid msg))
    (cl:cons ':networkDifferenceCounts (networkDifferenceCounts msg))
    (cl:cons ':networkDriftCounts (networkDriftCounts msg))
    (cl:cons ':oscillatorFreqEst (oscillatorFreqEst msg))
    (cl:cons ':networkDifferenceCmdCounts (networkDifferenceCmdCounts msg))
    (cl:cons ':networkDriftCmdCounts (networkDriftCmdCounts msg))
    (cl:cons ':networkPpsCount (networkPpsCount msg))
    (cl:cons ':gpsPpsCount (gpsPpsCount msg))
))
