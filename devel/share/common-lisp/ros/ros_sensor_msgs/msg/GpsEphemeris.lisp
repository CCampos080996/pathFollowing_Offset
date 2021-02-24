; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude GpsEphemeris.msg.html

(cl:defclass <GpsEphemeris> (roslisp-msg-protocol:ros-message)
  ((prn
    :reader prn
    :initarg :prn
    :type cl:fixnum
    :initform 0)
   (subframe1
    :reader subframe1
    :initarg :subframe1
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 30 :element-type 'cl:fixnum :initial-element 0))
   (subframe2
    :reader subframe2
    :initarg :subframe2
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 30 :element-type 'cl:fixnum :initial-element 0))
   (subframe3
    :reader subframe3
    :initarg :subframe3
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 30 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass GpsEphemeris (<GpsEphemeris>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GpsEphemeris>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GpsEphemeris)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<GpsEphemeris> is deprecated: use ros_sensor_msgs-msg:GpsEphemeris instead.")))

(cl:ensure-generic-function 'prn-val :lambda-list '(m))
(cl:defmethod prn-val ((m <GpsEphemeris>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:prn-val is deprecated.  Use ros_sensor_msgs-msg:prn instead.")
  (prn m))

(cl:ensure-generic-function 'subframe1-val :lambda-list '(m))
(cl:defmethod subframe1-val ((m <GpsEphemeris>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:subframe1-val is deprecated.  Use ros_sensor_msgs-msg:subframe1 instead.")
  (subframe1 m))

(cl:ensure-generic-function 'subframe2-val :lambda-list '(m))
(cl:defmethod subframe2-val ((m <GpsEphemeris>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:subframe2-val is deprecated.  Use ros_sensor_msgs-msg:subframe2 instead.")
  (subframe2 m))

(cl:ensure-generic-function 'subframe3-val :lambda-list '(m))
(cl:defmethod subframe3-val ((m <GpsEphemeris>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:subframe3-val is deprecated.  Use ros_sensor_msgs-msg:subframe3 instead.")
  (subframe3 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GpsEphemeris>) ostream)
  "Serializes a message object of type '<GpsEphemeris>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'prn)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'prn)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'subframe1))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'subframe2))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'subframe3))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GpsEphemeris>) istream)
  "Deserializes a message object of type '<GpsEphemeris>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'prn)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'prn)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'subframe1) (cl:make-array 30))
  (cl:let ((vals (cl:slot-value msg 'subframe1)))
    (cl:dotimes (i 30)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'subframe2) (cl:make-array 30))
  (cl:let ((vals (cl:slot-value msg 'subframe2)))
    (cl:dotimes (i 30)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'subframe3) (cl:make-array 30))
  (cl:let ((vals (cl:slot-value msg 'subframe3)))
    (cl:dotimes (i 30)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GpsEphemeris>)))
  "Returns string type for a message object of type '<GpsEphemeris>"
  "ros_sensor_msgs/GpsEphemeris")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GpsEphemeris)))
  "Returns string type for a message object of type 'GpsEphemeris"
  "ros_sensor_msgs/GpsEphemeris")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GpsEphemeris>)))
  "Returns md5sum for a message object of type '<GpsEphemeris>"
  "572e67f241916f12c8e2d567d3205ad7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GpsEphemeris)))
  "Returns md5sum for a message object of type 'GpsEphemeris"
  "572e67f241916f12c8e2d567d3205ad7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GpsEphemeris>)))
  "Returns full string definition for message of type '<GpsEphemeris>"
  (cl:format cl:nil "## Gps Ephemeris subframes for one satellite~%~%uint16      prn~%uint8[30]   subframe1~%uint8[30]   subframe2~%uint8[30]   subframe3~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GpsEphemeris)))
  "Returns full string definition for message of type 'GpsEphemeris"
  (cl:format cl:nil "## Gps Ephemeris subframes for one satellite~%~%uint16      prn~%uint8[30]   subframe1~%uint8[30]   subframe2~%uint8[30]   subframe3~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GpsEphemeris>))
  (cl:+ 0
     2
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'subframe1) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'subframe2) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'subframe3) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GpsEphemeris>))
  "Converts a ROS message object to a list"
  (cl:list 'GpsEphemeris
    (cl:cons ':prn (prn msg))
    (cl:cons ':subframe1 (subframe1 msg))
    (cl:cons ':subframe2 (subframe2 msg))
    (cl:cons ':subframe3 (subframe3 msg))
))
