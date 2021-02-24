; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude SensorParams3Axis.msg.html

(cl:defclass <SensorParams3Axis> (roslisp-msg-protocol:ros-message)
  ((bias
    :reader bias
    :initarg :bias
    :type ros_sensor_msgs-msg:Vector3Cov
    :initform (cl:make-instance 'ros_sensor_msgs-msg:Vector3Cov))
   (scaleFactor
    :reader scaleFactor
    :initarg :scaleFactor
    :type ros_sensor_msgs-msg:Vector3Cov
    :initform (cl:make-instance 'ros_sensor_msgs-msg:Vector3Cov)))
)

(cl:defclass SensorParams3Axis (<SensorParams3Axis>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SensorParams3Axis>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SensorParams3Axis)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<SensorParams3Axis> is deprecated: use ros_sensor_msgs-msg:SensorParams3Axis instead.")))

(cl:ensure-generic-function 'bias-val :lambda-list '(m))
(cl:defmethod bias-val ((m <SensorParams3Axis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:bias-val is deprecated.  Use ros_sensor_msgs-msg:bias instead.")
  (bias m))

(cl:ensure-generic-function 'scaleFactor-val :lambda-list '(m))
(cl:defmethod scaleFactor-val ((m <SensorParams3Axis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:scaleFactor-val is deprecated.  Use ros_sensor_msgs-msg:scaleFactor instead.")
  (scaleFactor m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SensorParams3Axis>) ostream)
  "Serializes a message object of type '<SensorParams3Axis>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bias) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'scaleFactor) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SensorParams3Axis>) istream)
  "Deserializes a message object of type '<SensorParams3Axis>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bias) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'scaleFactor) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SensorParams3Axis>)))
  "Returns string type for a message object of type '<SensorParams3Axis>"
  "ros_sensor_msgs/SensorParams3Axis")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SensorParams3Axis)))
  "Returns string type for a message object of type 'SensorParams3Axis"
  "ros_sensor_msgs/SensorParams3Axis")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SensorParams3Axis>)))
  "Returns md5sum for a message object of type '<SensorParams3Axis>"
  "24c3e2bb8a356470f1a6dba76b1bcfc1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SensorParams3Axis)))
  "Returns md5sum for a message object of type 'SensorParams3Axis"
  "24c3e2bb8a356470f1a6dba76b1bcfc1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SensorParams3Axis>)))
  "Returns full string definition for message of type '<SensorParams3Axis>"
  (cl:format cl:nil "Vector3Cov bias~%Vector3Cov scaleFactor~%================================================================================~%MSG: ros_sensor_msgs/Vector3Cov~%geometry_msgs/Vector3 	value 		# unit~%float64[9] 				covariance 	# unit^2~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SensorParams3Axis)))
  "Returns full string definition for message of type 'SensorParams3Axis"
  (cl:format cl:nil "Vector3Cov bias~%Vector3Cov scaleFactor~%================================================================================~%MSG: ros_sensor_msgs/Vector3Cov~%geometry_msgs/Vector3 	value 		# unit~%float64[9] 				covariance 	# unit^2~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SensorParams3Axis>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bias))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'scaleFactor))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SensorParams3Axis>))
  "Converts a ROS message object to a list"
  (cl:list 'SensorParams3Axis
    (cl:cons ':bias (bias msg))
    (cl:cons ':scaleFactor (scaleFactor msg))
))
