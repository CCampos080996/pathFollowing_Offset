; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude WheelCount.msg.html

(cl:defclass <WheelCount> (roslisp-msg-protocol:ros-message)
  ((wheel_count
    :reader wheel_count
    :initarg :wheel_count
    :type cl:integer
    :initform 0)
   (dir_forward
    :reader dir_forward
    :initarg :dir_forward
    :type cl:boolean
    :initform cl:nil)
   (wheel_name
    :reader wheel_name
    :initarg :wheel_name
    :type cl:string
    :initform ""))
)

(cl:defclass WheelCount (<WheelCount>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WheelCount>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WheelCount)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<WheelCount> is deprecated: use ros_sensor_msgs-msg:WheelCount instead.")))

(cl:ensure-generic-function 'wheel_count-val :lambda-list '(m))
(cl:defmethod wheel_count-val ((m <WheelCount>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:wheel_count-val is deprecated.  Use ros_sensor_msgs-msg:wheel_count instead.")
  (wheel_count m))

(cl:ensure-generic-function 'dir_forward-val :lambda-list '(m))
(cl:defmethod dir_forward-val ((m <WheelCount>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:dir_forward-val is deprecated.  Use ros_sensor_msgs-msg:dir_forward instead.")
  (dir_forward m))

(cl:ensure-generic-function 'wheel_name-val :lambda-list '(m))
(cl:defmethod wheel_name-val ((m <WheelCount>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:wheel_name-val is deprecated.  Use ros_sensor_msgs-msg:wheel_name instead.")
  (wheel_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WheelCount>) ostream)
  "Serializes a message object of type '<WheelCount>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wheel_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'wheel_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'wheel_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'wheel_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'dir_forward) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'wheel_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'wheel_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WheelCount>) istream)
  "Deserializes a message object of type '<WheelCount>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wheel_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'wheel_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'wheel_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'wheel_count)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dir_forward) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'wheel_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'wheel_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WheelCount>)))
  "Returns string type for a message object of type '<WheelCount>"
  "ros_sensor_msgs/WheelCount")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WheelCount)))
  "Returns string type for a message object of type 'WheelCount"
  "ros_sensor_msgs/WheelCount")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WheelCount>)))
  "Returns md5sum for a message object of type '<WheelCount>"
  "646b4e36307f301fd26a03a7399d37d4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WheelCount)))
  "Returns md5sum for a message object of type 'WheelCount"
  "646b4e36307f301fd26a03a7399d37d4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WheelCount>)))
  "Returns full string definition for message of type '<WheelCount>"
  (cl:format cl:nil "uint32  wheel_count   # [counts]~%bool    dir_forward   # true if moving forward~%string  wheel_name~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WheelCount)))
  "Returns full string definition for message of type 'WheelCount"
  (cl:format cl:nil "uint32  wheel_count   # [counts]~%bool    dir_forward   # true if moving forward~%string  wheel_name~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WheelCount>))
  (cl:+ 0
     4
     1
     4 (cl:length (cl:slot-value msg 'wheel_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WheelCount>))
  "Converts a ROS message object to a list"
  (cl:list 'WheelCount
    (cl:cons ':wheel_count (wheel_count msg))
    (cl:cons ':dir_forward (dir_forward msg))
    (cl:cons ':wheel_name (wheel_name msg))
))
