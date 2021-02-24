; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude ImuParameters.msg.html

(cl:defclass <ImuParameters> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (gyro
    :reader gyro
    :initarg :gyro
    :type ros_sensor_msgs-msg:SensorParams3Axis
    :initform (cl:make-instance 'ros_sensor_msgs-msg:SensorParams3Axis))
   (accel
    :reader accel
    :initarg :accel
    :type ros_sensor_msgs-msg:SensorParams3Axis
    :initform (cl:make-instance 'ros_sensor_msgs-msg:SensorParams3Axis)))
)

(cl:defclass ImuParameters (<ImuParameters>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ImuParameters>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ImuParameters)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<ImuParameters> is deprecated: use ros_sensor_msgs-msg:ImuParameters instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ImuParameters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:header-val is deprecated.  Use ros_sensor_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'gyro-val :lambda-list '(m))
(cl:defmethod gyro-val ((m <ImuParameters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:gyro-val is deprecated.  Use ros_sensor_msgs-msg:gyro instead.")
  (gyro m))

(cl:ensure-generic-function 'accel-val :lambda-list '(m))
(cl:defmethod accel-val ((m <ImuParameters>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:accel-val is deprecated.  Use ros_sensor_msgs-msg:accel instead.")
  (accel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ImuParameters>) ostream)
  "Serializes a message object of type '<ImuParameters>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gyro) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'accel) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ImuParameters>) istream)
  "Deserializes a message object of type '<ImuParameters>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gyro) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'accel) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ImuParameters>)))
  "Returns string type for a message object of type '<ImuParameters>"
  "ros_sensor_msgs/ImuParameters")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ImuParameters)))
  "Returns string type for a message object of type 'ImuParameters"
  "ros_sensor_msgs/ImuParameters")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ImuParameters>)))
  "Returns md5sum for a message object of type '<ImuParameters>"
  "65bb04ba3e7976a0cb2a90024977dfd3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ImuParameters)))
  "Returns md5sum for a message object of type 'ImuParameters"
  "65bb04ba3e7976a0cb2a90024977dfd3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ImuParameters>)))
  "Returns full string definition for message of type '<ImuParameters>"
  (cl:format cl:nil "std_msgs/Header header~%~%SensorParams3Axis gyro~%SensorParams3Axis accel~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ros_sensor_msgs/SensorParams3Axis~%Vector3Cov bias~%Vector3Cov scaleFactor~%================================================================================~%MSG: ros_sensor_msgs/Vector3Cov~%geometry_msgs/Vector3 	value 		# unit~%float64[9] 				covariance 	# unit^2~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ImuParameters)))
  "Returns full string definition for message of type 'ImuParameters"
  (cl:format cl:nil "std_msgs/Header header~%~%SensorParams3Axis gyro~%SensorParams3Axis accel~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ros_sensor_msgs/SensorParams3Axis~%Vector3Cov bias~%Vector3Cov scaleFactor~%================================================================================~%MSG: ros_sensor_msgs/Vector3Cov~%geometry_msgs/Vector3 	value 		# unit~%float64[9] 				covariance 	# unit^2~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ImuParameters>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gyro))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'accel))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ImuParameters>))
  "Converts a ROS message object to a list"
  (cl:list 'ImuParameters
    (cl:cons ':header (header msg))
    (cl:cons ':gyro (gyro msg))
    (cl:cons ':accel (accel msg))
))
