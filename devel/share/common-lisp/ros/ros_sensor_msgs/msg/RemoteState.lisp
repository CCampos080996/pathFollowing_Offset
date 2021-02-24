; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude RemoteState.msg.html

(cl:defclass <RemoteState> (roslisp-msg-protocol:ros-message)
  ((range
    :reader range
    :initarg :range
    :type ros_sensor_msgs-msg:RfRange
    :initform (cl:make-instance 'ros_sensor_msgs-msg:RfRange))
   (state
    :reader state
    :initarg :state
    :type ros_sensor_msgs-msg:NavState
    :initform (cl:make-instance 'ros_sensor_msgs-msg:NavState)))
)

(cl:defclass RemoteState (<RemoteState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RemoteState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RemoteState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<RemoteState> is deprecated: use ros_sensor_msgs-msg:RemoteState instead.")))

(cl:ensure-generic-function 'range-val :lambda-list '(m))
(cl:defmethod range-val ((m <RemoteState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:range-val is deprecated.  Use ros_sensor_msgs-msg:range instead.")
  (range m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <RemoteState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:state-val is deprecated.  Use ros_sensor_msgs-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RemoteState>) ostream)
  "Serializes a message object of type '<RemoteState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'range) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RemoteState>) istream)
  "Deserializes a message object of type '<RemoteState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'range) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RemoteState>)))
  "Returns string type for a message object of type '<RemoteState>"
  "ros_sensor_msgs/RemoteState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RemoteState)))
  "Returns string type for a message object of type 'RemoteState"
  "ros_sensor_msgs/RemoteState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RemoteState>)))
  "Returns md5sum for a message object of type '<RemoteState>"
  "d8939a9b77cb82f4bd081b34aff50780")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RemoteState)))
  "Returns md5sum for a message object of type 'RemoteState"
  "d8939a9b77cb82f4bd081b34aff50780")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RemoteState>)))
  "Returns full string definition for message of type '<RemoteState>"
  (cl:format cl:nil "RfRange           range~%NavState		  state~%================================================================================~%MSG: ros_sensor_msgs/RfRange~%# Range to specified object~%float64 range~%float64 rangeRate~%float64 rangeVariance~%float64 rangeRateVariance~%uint32  timestamp~%uint32  sourceId~%uint32  destId~%uint16  rssi~%uint16  quality~%~%================================================================================~%MSG: ros_sensor_msgs/NavState~%std_msgs/Header header~%string 			parent_frame_id~%~%Vector3Cov 		position		# m, m^2~%Vector3Cov 		velocity		# m/s, (m/s)^2~%QuaternionCov 	attitude		# none, rad^2~%AssuranceLevel  assuranceLevel~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ros_sensor_msgs/Vector3Cov~%geometry_msgs/Vector3 	value 		# unit~%float64[9] 				covariance 	# unit^2~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: ros_sensor_msgs/QuaternionCov~%geometry_msgs/Quaternion 	value~%float64[9] 				 	covariance 	# rad^2~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: ros_sensor_msgs/AssuranceLevel~%uint8  Normal   = 0~%uint8  Unknown  = 1~%uint8  Warning  = 2~%uint8  Attack   = 3~%~%uint8 level~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RemoteState)))
  "Returns full string definition for message of type 'RemoteState"
  (cl:format cl:nil "RfRange           range~%NavState		  state~%================================================================================~%MSG: ros_sensor_msgs/RfRange~%# Range to specified object~%float64 range~%float64 rangeRate~%float64 rangeVariance~%float64 rangeRateVariance~%uint32  timestamp~%uint32  sourceId~%uint32  destId~%uint16  rssi~%uint16  quality~%~%================================================================================~%MSG: ros_sensor_msgs/NavState~%std_msgs/Header header~%string 			parent_frame_id~%~%Vector3Cov 		position		# m, m^2~%Vector3Cov 		velocity		# m/s, (m/s)^2~%QuaternionCov 	attitude		# none, rad^2~%AssuranceLevel  assuranceLevel~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ros_sensor_msgs/Vector3Cov~%geometry_msgs/Vector3 	value 		# unit~%float64[9] 				covariance 	# unit^2~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: ros_sensor_msgs/QuaternionCov~%geometry_msgs/Quaternion 	value~%float64[9] 				 	covariance 	# rad^2~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: ros_sensor_msgs/AssuranceLevel~%uint8  Normal   = 0~%uint8  Unknown  = 1~%uint8  Warning  = 2~%uint8  Attack   = 3~%~%uint8 level~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RemoteState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'range))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RemoteState>))
  "Converts a ROS message object to a list"
  (cl:list 'RemoteState
    (cl:cons ':range (range msg))
    (cl:cons ':state (state msg))
))
