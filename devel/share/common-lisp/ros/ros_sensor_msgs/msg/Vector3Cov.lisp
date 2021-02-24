; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude Vector3Cov.msg.html

(cl:defclass <Vector3Cov> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (covariance
    :reader covariance
    :initarg :covariance
    :type (cl:vector cl:float)
   :initform (cl:make-array 9 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Vector3Cov (<Vector3Cov>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Vector3Cov>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Vector3Cov)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<Vector3Cov> is deprecated: use ros_sensor_msgs-msg:Vector3Cov instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <Vector3Cov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:value-val is deprecated.  Use ros_sensor_msgs-msg:value instead.")
  (value m))

(cl:ensure-generic-function 'covariance-val :lambda-list '(m))
(cl:defmethod covariance-val ((m <Vector3Cov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:covariance-val is deprecated.  Use ros_sensor_msgs-msg:covariance instead.")
  (covariance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Vector3Cov>) ostream)
  "Serializes a message object of type '<Vector3Cov>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Vector3Cov>) istream)
  "Deserializes a message object of type '<Vector3Cov>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Vector3Cov>)))
  "Returns string type for a message object of type '<Vector3Cov>"
  "ros_sensor_msgs/Vector3Cov")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Vector3Cov)))
  "Returns string type for a message object of type 'Vector3Cov"
  "ros_sensor_msgs/Vector3Cov")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Vector3Cov>)))
  "Returns md5sum for a message object of type '<Vector3Cov>"
  "de0baac922d392f00f203ad8c610f8dc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Vector3Cov)))
  "Returns md5sum for a message object of type 'Vector3Cov"
  "de0baac922d392f00f203ad8c610f8dc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Vector3Cov>)))
  "Returns full string definition for message of type '<Vector3Cov>"
  (cl:format cl:nil "geometry_msgs/Vector3 	value 		# unit~%float64[9] 				covariance 	# unit^2~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Vector3Cov)))
  "Returns full string definition for message of type 'Vector3Cov"
  (cl:format cl:nil "geometry_msgs/Vector3 	value 		# unit~%float64[9] 				covariance 	# unit^2~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Vector3Cov>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'value))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'covariance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Vector3Cov>))
  "Converts a ROS message object to a list"
  (cl:list 'Vector3Cov
    (cl:cons ':value (value msg))
    (cl:cons ':covariance (covariance msg))
))
