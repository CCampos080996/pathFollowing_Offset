; Auto-generated. Do not edit!


(cl:in-package drtk-msg)


;//! \htmlinclude DrtkDiagnostics.msg.html

(cl:defclass <DrtkDiagnostics> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (gpsTime
    :reader gpsTime
    :initarg :gpsTime
    :type ros_sensor_msgs-msg:GpsTime
    :initform (cl:make-instance 'ros_sensor_msgs-msg:GpsTime))
   (sdFloatIntegerAmbiguitiesL1
    :reader sdFloatIntegerAmbiguitiesL1
    :initarg :sdFloatIntegerAmbiguitiesL1
    :type (cl:vector cl:float)
   :initform (cl:make-array 32 :element-type 'cl:float :initial-element 0.0))
   (sdFloatIntegerAmbiguitiesL2
    :reader sdFloatIntegerAmbiguitiesL2
    :initarg :sdFloatIntegerAmbiguitiesL2
    :type (cl:vector cl:float)
   :initform (cl:make-array 32 :element-type 'cl:float :initial-element 0.0))
   (numAvailableSvs
    :reader numAvailableSvs
    :initarg :numAvailableSvs
    :type cl:fixnum
    :initform 0)
   (lambdaRatio
    :reader lambdaRatio
    :initarg :lambdaRatio
    :type cl:float
    :initform 0.0)
   (lockedLambdaRatio
    :reader lockedLambdaRatio
    :initarg :lockedLambdaRatio
    :type cl:float
    :initform 0.0)
   (basePrn
    :reader basePrn
    :initarg :basePrn
    :type cl:integer
    :initform 0))
)

(cl:defclass DrtkDiagnostics (<DrtkDiagnostics>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DrtkDiagnostics>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DrtkDiagnostics)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name drtk-msg:<DrtkDiagnostics> is deprecated: use drtk-msg:DrtkDiagnostics instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DrtkDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drtk-msg:header-val is deprecated.  Use drtk-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'gpsTime-val :lambda-list '(m))
(cl:defmethod gpsTime-val ((m <DrtkDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drtk-msg:gpsTime-val is deprecated.  Use drtk-msg:gpsTime instead.")
  (gpsTime m))

(cl:ensure-generic-function 'sdFloatIntegerAmbiguitiesL1-val :lambda-list '(m))
(cl:defmethod sdFloatIntegerAmbiguitiesL1-val ((m <DrtkDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drtk-msg:sdFloatIntegerAmbiguitiesL1-val is deprecated.  Use drtk-msg:sdFloatIntegerAmbiguitiesL1 instead.")
  (sdFloatIntegerAmbiguitiesL1 m))

(cl:ensure-generic-function 'sdFloatIntegerAmbiguitiesL2-val :lambda-list '(m))
(cl:defmethod sdFloatIntegerAmbiguitiesL2-val ((m <DrtkDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drtk-msg:sdFloatIntegerAmbiguitiesL2-val is deprecated.  Use drtk-msg:sdFloatIntegerAmbiguitiesL2 instead.")
  (sdFloatIntegerAmbiguitiesL2 m))

(cl:ensure-generic-function 'numAvailableSvs-val :lambda-list '(m))
(cl:defmethod numAvailableSvs-val ((m <DrtkDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drtk-msg:numAvailableSvs-val is deprecated.  Use drtk-msg:numAvailableSvs instead.")
  (numAvailableSvs m))

(cl:ensure-generic-function 'lambdaRatio-val :lambda-list '(m))
(cl:defmethod lambdaRatio-val ((m <DrtkDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drtk-msg:lambdaRatio-val is deprecated.  Use drtk-msg:lambdaRatio instead.")
  (lambdaRatio m))

(cl:ensure-generic-function 'lockedLambdaRatio-val :lambda-list '(m))
(cl:defmethod lockedLambdaRatio-val ((m <DrtkDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drtk-msg:lockedLambdaRatio-val is deprecated.  Use drtk-msg:lockedLambdaRatio instead.")
  (lockedLambdaRatio m))

(cl:ensure-generic-function 'basePrn-val :lambda-list '(m))
(cl:defmethod basePrn-val ((m <DrtkDiagnostics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drtk-msg:basePrn-val is deprecated.  Use drtk-msg:basePrn instead.")
  (basePrn m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DrtkDiagnostics>) ostream)
  "Serializes a message object of type '<DrtkDiagnostics>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gpsTime) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'sdFloatIntegerAmbiguitiesL1))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'sdFloatIntegerAmbiguitiesL2))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numAvailableSvs)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'numAvailableSvs)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'lambdaRatio))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'lockedLambdaRatio))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'basePrn)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'basePrn)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'basePrn)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'basePrn)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DrtkDiagnostics>) istream)
  "Deserializes a message object of type '<DrtkDiagnostics>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gpsTime) istream)
  (cl:setf (cl:slot-value msg 'sdFloatIntegerAmbiguitiesL1) (cl:make-array 32))
  (cl:let ((vals (cl:slot-value msg 'sdFloatIntegerAmbiguitiesL1)))
    (cl:dotimes (i 32)
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
  (cl:setf (cl:slot-value msg 'sdFloatIntegerAmbiguitiesL2) (cl:make-array 32))
  (cl:let ((vals (cl:slot-value msg 'sdFloatIntegerAmbiguitiesL2)))
    (cl:dotimes (i 32)
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numAvailableSvs)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'numAvailableSvs)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lambdaRatio) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lockedLambdaRatio) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'basePrn)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'basePrn)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'basePrn)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'basePrn)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DrtkDiagnostics>)))
  "Returns string type for a message object of type '<DrtkDiagnostics>"
  "drtk/DrtkDiagnostics")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DrtkDiagnostics)))
  "Returns string type for a message object of type 'DrtkDiagnostics"
  "drtk/DrtkDiagnostics")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DrtkDiagnostics>)))
  "Returns md5sum for a message object of type '<DrtkDiagnostics>"
  "3b3d08a7eca2c863ebc178a9aab483f7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DrtkDiagnostics)))
  "Returns md5sum for a message object of type 'DrtkDiagnostics"
  "3b3d08a7eca2c863ebc178a9aab483f7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DrtkDiagnostics>)))
  "Returns full string definition for message of type '<DrtkDiagnostics>"
  (cl:format cl:nil "## DrtkDiagnostics~%~%std_msgs/Header   header~%ros_sensor_msgs/GpsTime  gpsTime~%~%float64[32]                  sdFloatIntegerAmbiguitiesL1~%float64[32]                  sdFloatIntegerAmbiguitiesL2~%~%# float64[32]                  sdFloatIntegerAmbiguitiesCovarianceL1~%# float64[32]                  sdFloatIntegerAmbiguitiesCovarianceL2~%~%uint16 numAvailableSvs~%~%float64 lambdaRatio~%float64 lockedLambdaRatio~%~%uint32 basePrn~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ros_sensor_msgs/GpsTime~%## GPS time structure~%uint32          gps_week        # Full GPS week from (0:0:00 Jan 06, 1980)~%float64         gps_seconds     # GPS seconds into week [sec]~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DrtkDiagnostics)))
  "Returns full string definition for message of type 'DrtkDiagnostics"
  (cl:format cl:nil "## DrtkDiagnostics~%~%std_msgs/Header   header~%ros_sensor_msgs/GpsTime  gpsTime~%~%float64[32]                  sdFloatIntegerAmbiguitiesL1~%float64[32]                  sdFloatIntegerAmbiguitiesL2~%~%# float64[32]                  sdFloatIntegerAmbiguitiesCovarianceL1~%# float64[32]                  sdFloatIntegerAmbiguitiesCovarianceL2~%~%uint16 numAvailableSvs~%~%float64 lambdaRatio~%float64 lockedLambdaRatio~%~%uint32 basePrn~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ros_sensor_msgs/GpsTime~%## GPS time structure~%uint32          gps_week        # Full GPS week from (0:0:00 Jan 06, 1980)~%float64         gps_seconds     # GPS seconds into week [sec]~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DrtkDiagnostics>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gpsTime))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'sdFloatIntegerAmbiguitiesL1) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'sdFloatIntegerAmbiguitiesL2) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     2
     8
     8
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DrtkDiagnostics>))
  "Converts a ROS message object to a list"
  (cl:list 'DrtkDiagnostics
    (cl:cons ':header (header msg))
    (cl:cons ':gpsTime (gpsTime msg))
    (cl:cons ':sdFloatIntegerAmbiguitiesL1 (sdFloatIntegerAmbiguitiesL1 msg))
    (cl:cons ':sdFloatIntegerAmbiguitiesL2 (sdFloatIntegerAmbiguitiesL2 msg))
    (cl:cons ':numAvailableSvs (numAvailableSvs msg))
    (cl:cons ':lambdaRatio (lambdaRatio msg))
    (cl:cons ':lockedLambdaRatio (lockedLambdaRatio msg))
    (cl:cons ':basePrn (basePrn msg))
))
