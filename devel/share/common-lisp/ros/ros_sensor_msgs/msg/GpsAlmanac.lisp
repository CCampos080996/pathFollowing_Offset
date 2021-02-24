; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude GpsAlmanac.msg.html

(cl:defclass <GpsAlmanac> (roslisp-msg-protocol:ros-message)
  ((prn
    :reader prn
    :initarg :prn
    :type cl:fixnum
    :initform 0)
   (reference_week
    :reader reference_week
    :initarg :reference_week
    :type cl:fixnum
    :initform 0)
   (subframe
    :reader subframe
    :initarg :subframe
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 30 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass GpsAlmanac (<GpsAlmanac>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GpsAlmanac>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GpsAlmanac)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<GpsAlmanac> is deprecated: use ros_sensor_msgs-msg:GpsAlmanac instead.")))

(cl:ensure-generic-function 'prn-val :lambda-list '(m))
(cl:defmethod prn-val ((m <GpsAlmanac>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:prn-val is deprecated.  Use ros_sensor_msgs-msg:prn instead.")
  (prn m))

(cl:ensure-generic-function 'reference_week-val :lambda-list '(m))
(cl:defmethod reference_week-val ((m <GpsAlmanac>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:reference_week-val is deprecated.  Use ros_sensor_msgs-msg:reference_week instead.")
  (reference_week m))

(cl:ensure-generic-function 'subframe-val :lambda-list '(m))
(cl:defmethod subframe-val ((m <GpsAlmanac>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:subframe-val is deprecated.  Use ros_sensor_msgs-msg:subframe instead.")
  (subframe m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GpsAlmanac>) ostream)
  "Serializes a message object of type '<GpsAlmanac>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'prn)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'prn)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reference_week)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reference_week)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'subframe))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GpsAlmanac>) istream)
  "Deserializes a message object of type '<GpsAlmanac>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'prn)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'prn)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reference_week)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'reference_week)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'subframe) (cl:make-array 30))
  (cl:let ((vals (cl:slot-value msg 'subframe)))
    (cl:dotimes (i 30)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GpsAlmanac>)))
  "Returns string type for a message object of type '<GpsAlmanac>"
  "ros_sensor_msgs/GpsAlmanac")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GpsAlmanac)))
  "Returns string type for a message object of type 'GpsAlmanac"
  "ros_sensor_msgs/GpsAlmanac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GpsAlmanac>)))
  "Returns md5sum for a message object of type '<GpsAlmanac>"
  "0f1c30b6e49d1d575a6b6c2bf03fd6fa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GpsAlmanac)))
  "Returns md5sum for a message object of type 'GpsAlmanac"
  "0f1c30b6e49d1d575a6b6c2bf03fd6fa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GpsAlmanac>)))
  "Returns full string definition for message of type '<GpsAlmanac>"
  (cl:format cl:nil "~%uint16      prn~%uint16      reference_week~%uint8[30]   subframe~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GpsAlmanac)))
  "Returns full string definition for message of type 'GpsAlmanac"
  (cl:format cl:nil "~%uint16      prn~%uint16      reference_week~%uint8[30]   subframe~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GpsAlmanac>))
  (cl:+ 0
     2
     2
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'subframe) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GpsAlmanac>))
  "Converts a ROS message object to a list"
  (cl:list 'GpsAlmanac
    (cl:cons ':prn (prn msg))
    (cl:cons ':reference_week (reference_week msg))
    (cl:cons ':subframe (subframe msg))
))
