; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude SingleNodeAssuranceData.msg.html

(cl:defclass <SingleNodeAssuranceData> (roslisp-msg-protocol:ros-message)
  ((pseudoDopplerDiffs
    :reader pseudoDopplerDiffs
    :initarg :pseudoDopplerDiffs
    :type (cl:vector ros_sensor_msgs-msg:PrnDifference)
   :initform (cl:make-array 0 :element-type 'ros_sensor_msgs-msg:PrnDifference :initial-element (cl:make-instance 'ros_sensor_msgs-msg:PrnDifference)))
   (pseudoDopplerDiffAssuranceLevel
    :reader pseudoDopplerDiffAssuranceLevel
    :initarg :pseudoDopplerDiffAssuranceLevel
    :type ros_sensor_msgs-msg:AssuranceLevel
    :initform (cl:make-instance 'ros_sensor_msgs-msg:AssuranceLevel))
   (carrierToNoiseCheckData
    :reader carrierToNoiseCheckData
    :initarg :carrierToNoiseCheckData
    :type (cl:vector ros_sensor_msgs-msg:PrnDifference)
   :initform (cl:make-array 0 :element-type 'ros_sensor_msgs-msg:PrnDifference :initial-element (cl:make-instance 'ros_sensor_msgs-msg:PrnDifference)))
   (cnoCheckAssuranceLevel
    :reader cnoCheckAssuranceLevel
    :initarg :cnoCheckAssuranceLevel
    :type ros_sensor_msgs-msg:AssuranceLevel
    :initform (cl:make-instance 'ros_sensor_msgs-msg:AssuranceLevel)))
)

(cl:defclass SingleNodeAssuranceData (<SingleNodeAssuranceData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SingleNodeAssuranceData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SingleNodeAssuranceData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<SingleNodeAssuranceData> is deprecated: use ros_sensor_msgs-msg:SingleNodeAssuranceData instead.")))

(cl:ensure-generic-function 'pseudoDopplerDiffs-val :lambda-list '(m))
(cl:defmethod pseudoDopplerDiffs-val ((m <SingleNodeAssuranceData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:pseudoDopplerDiffs-val is deprecated.  Use ros_sensor_msgs-msg:pseudoDopplerDiffs instead.")
  (pseudoDopplerDiffs m))

(cl:ensure-generic-function 'pseudoDopplerDiffAssuranceLevel-val :lambda-list '(m))
(cl:defmethod pseudoDopplerDiffAssuranceLevel-val ((m <SingleNodeAssuranceData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:pseudoDopplerDiffAssuranceLevel-val is deprecated.  Use ros_sensor_msgs-msg:pseudoDopplerDiffAssuranceLevel instead.")
  (pseudoDopplerDiffAssuranceLevel m))

(cl:ensure-generic-function 'carrierToNoiseCheckData-val :lambda-list '(m))
(cl:defmethod carrierToNoiseCheckData-val ((m <SingleNodeAssuranceData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:carrierToNoiseCheckData-val is deprecated.  Use ros_sensor_msgs-msg:carrierToNoiseCheckData instead.")
  (carrierToNoiseCheckData m))

(cl:ensure-generic-function 'cnoCheckAssuranceLevel-val :lambda-list '(m))
(cl:defmethod cnoCheckAssuranceLevel-val ((m <SingleNodeAssuranceData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:cnoCheckAssuranceLevel-val is deprecated.  Use ros_sensor_msgs-msg:cnoCheckAssuranceLevel instead.")
  (cnoCheckAssuranceLevel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SingleNodeAssuranceData>) ostream)
  "Serializes a message object of type '<SingleNodeAssuranceData>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pseudoDopplerDiffs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'pseudoDopplerDiffs))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pseudoDopplerDiffAssuranceLevel) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'carrierToNoiseCheckData))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'carrierToNoiseCheckData))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cnoCheckAssuranceLevel) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SingleNodeAssuranceData>) istream)
  "Deserializes a message object of type '<SingleNodeAssuranceData>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pseudoDopplerDiffs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pseudoDopplerDiffs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_sensor_msgs-msg:PrnDifference))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pseudoDopplerDiffAssuranceLevel) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'carrierToNoiseCheckData) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'carrierToNoiseCheckData)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_sensor_msgs-msg:PrnDifference))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cnoCheckAssuranceLevel) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SingleNodeAssuranceData>)))
  "Returns string type for a message object of type '<SingleNodeAssuranceData>"
  "ros_sensor_msgs/SingleNodeAssuranceData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SingleNodeAssuranceData)))
  "Returns string type for a message object of type 'SingleNodeAssuranceData"
  "ros_sensor_msgs/SingleNodeAssuranceData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SingleNodeAssuranceData>)))
  "Returns md5sum for a message object of type '<SingleNodeAssuranceData>"
  "4197bc43f12a41cc3da00c30445631eb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SingleNodeAssuranceData)))
  "Returns md5sum for a message object of type 'SingleNodeAssuranceData"
  "4197bc43f12a41cc3da00c30445631eb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SingleNodeAssuranceData>)))
  "Returns full string definition for message of type '<SingleNodeAssuranceData>"
  (cl:format cl:nil "PrnDifference[]  pseudoDopplerDiffs~%AssuranceLevel   pseudoDopplerDiffAssuranceLevel~%PrnDifference[]  carrierToNoiseCheckData~%AssuranceLevel   cnoCheckAssuranceLevel~%================================================================================~%MSG: ros_sensor_msgs/PrnDifference~%uint32   prn~%float64  difference~%================================================================================~%MSG: ros_sensor_msgs/AssuranceLevel~%uint8  Normal   = 0~%uint8  Unknown  = 1~%uint8  Warning  = 2~%uint8  Attack   = 3~%~%uint8 level~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SingleNodeAssuranceData)))
  "Returns full string definition for message of type 'SingleNodeAssuranceData"
  (cl:format cl:nil "PrnDifference[]  pseudoDopplerDiffs~%AssuranceLevel   pseudoDopplerDiffAssuranceLevel~%PrnDifference[]  carrierToNoiseCheckData~%AssuranceLevel   cnoCheckAssuranceLevel~%================================================================================~%MSG: ros_sensor_msgs/PrnDifference~%uint32   prn~%float64  difference~%================================================================================~%MSG: ros_sensor_msgs/AssuranceLevel~%uint8  Normal   = 0~%uint8  Unknown  = 1~%uint8  Warning  = 2~%uint8  Attack   = 3~%~%uint8 level~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SingleNodeAssuranceData>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pseudoDopplerDiffs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pseudoDopplerDiffAssuranceLevel))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'carrierToNoiseCheckData) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cnoCheckAssuranceLevel))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SingleNodeAssuranceData>))
  "Converts a ROS message object to a list"
  (cl:list 'SingleNodeAssuranceData
    (cl:cons ':pseudoDopplerDiffs (pseudoDopplerDiffs msg))
    (cl:cons ':pseudoDopplerDiffAssuranceLevel (pseudoDopplerDiffAssuranceLevel msg))
    (cl:cons ':carrierToNoiseCheckData (carrierToNoiseCheckData msg))
    (cl:cons ':cnoCheckAssuranceLevel (cnoCheckAssuranceLevel msg))
))
