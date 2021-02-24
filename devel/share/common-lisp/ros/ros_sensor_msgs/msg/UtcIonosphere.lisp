; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude UtcIonosphere.msg.html

(cl:defclass <UtcIonosphere> (roslisp-msg-protocol:ros-message)
  ((subframe
    :reader subframe
    :initarg :subframe
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 30 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass UtcIonosphere (<UtcIonosphere>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UtcIonosphere>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UtcIonosphere)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<UtcIonosphere> is deprecated: use ros_sensor_msgs-msg:UtcIonosphere instead.")))

(cl:ensure-generic-function 'subframe-val :lambda-list '(m))
(cl:defmethod subframe-val ((m <UtcIonosphere>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:subframe-val is deprecated.  Use ros_sensor_msgs-msg:subframe instead.")
  (subframe m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UtcIonosphere>) ostream)
  "Serializes a message object of type '<UtcIonosphere>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'subframe))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UtcIonosphere>) istream)
  "Deserializes a message object of type '<UtcIonosphere>"
  (cl:setf (cl:slot-value msg 'subframe) (cl:make-array 30))
  (cl:let ((vals (cl:slot-value msg 'subframe)))
    (cl:dotimes (i 30)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UtcIonosphere>)))
  "Returns string type for a message object of type '<UtcIonosphere>"
  "ros_sensor_msgs/UtcIonosphere")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UtcIonosphere)))
  "Returns string type for a message object of type 'UtcIonosphere"
  "ros_sensor_msgs/UtcIonosphere")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UtcIonosphere>)))
  "Returns md5sum for a message object of type '<UtcIonosphere>"
  "c92739dcbce54dec72a584c1ec4e54c7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UtcIonosphere)))
  "Returns md5sum for a message object of type 'UtcIonosphere"
  "c92739dcbce54dec72a584c1ec4e54c7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UtcIonosphere>)))
  "Returns full string definition for message of type '<UtcIonosphere>"
  (cl:format cl:nil "## Subframe of UTC and Ionospheric Parameters~%~%uint8[30]   subframe~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UtcIonosphere)))
  "Returns full string definition for message of type 'UtcIonosphere"
  (cl:format cl:nil "## Subframe of UTC and Ionospheric Parameters~%~%uint8[30]   subframe~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UtcIonosphere>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'subframe) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UtcIonosphere>))
  "Converts a ROS message object to a list"
  (cl:list 'UtcIonosphere
    (cl:cons ':subframe (subframe msg))
))
