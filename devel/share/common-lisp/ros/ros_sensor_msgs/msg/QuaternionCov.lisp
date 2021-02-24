; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude QuaternionCov.msg.html

(cl:defclass <QuaternionCov> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type geometry_msgs-msg:Quaternion
    :initform (cl:make-instance 'geometry_msgs-msg:Quaternion))
   (covariance
    :reader covariance
    :initarg :covariance
    :type (cl:vector cl:float)
   :initform (cl:make-array 9 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass QuaternionCov (<QuaternionCov>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QuaternionCov>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QuaternionCov)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<QuaternionCov> is deprecated: use ros_sensor_msgs-msg:QuaternionCov instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <QuaternionCov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:value-val is deprecated.  Use ros_sensor_msgs-msg:value instead.")
  (value m))

(cl:ensure-generic-function 'covariance-val :lambda-list '(m))
(cl:defmethod covariance-val ((m <QuaternionCov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:covariance-val is deprecated.  Use ros_sensor_msgs-msg:covariance instead.")
  (covariance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QuaternionCov>) ostream)
  "Serializes a message object of type '<QuaternionCov>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'value) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'covariance))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QuaternionCov>) istream)
  "Deserializes a message object of type '<QuaternionCov>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'value) istream)
  (cl:setf (cl:slot-value msg 'covariance) (cl:make-array 9))
  (cl:let ((vals (cl:slot-value msg 'covariance)))
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QuaternionCov>)))
  "Returns string type for a message object of type '<QuaternionCov>"
  "ros_sensor_msgs/QuaternionCov")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QuaternionCov)))
  "Returns string type for a message object of type 'QuaternionCov"
  "ros_sensor_msgs/QuaternionCov")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QuaternionCov>)))
  "Returns md5sum for a message object of type '<QuaternionCov>"
  "3b94d7700299a5d383fc6e27f12bd18b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QuaternionCov)))
  "Returns md5sum for a message object of type 'QuaternionCov"
  "3b94d7700299a5d383fc6e27f12bd18b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QuaternionCov>)))
  "Returns full string definition for message of type '<QuaternionCov>"
  (cl:format cl:nil "geometry_msgs/Quaternion 	value~%float64[9] 				 	covariance 	# rad^2~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QuaternionCov)))
  "Returns full string definition for message of type 'QuaternionCov"
  (cl:format cl:nil "geometry_msgs/Quaternion 	value~%float64[9] 				 	covariance 	# rad^2~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QuaternionCov>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'value))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'covariance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QuaternionCov>))
  "Converts a ROS message object to a list"
  (cl:list 'QuaternionCov
    (cl:cons ':value (value msg))
    (cl:cons ':covariance (covariance msg))
))
