; Auto-generated. Do not edit!


(cl:in-package drtk-msg)


;//! \htmlinclude DrtkOutputState.msg.html

(cl:defclass <DrtkOutputState> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DrtkOutputState (<DrtkOutputState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DrtkOutputState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DrtkOutputState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name drtk-msg:<DrtkOutputState> is deprecated: use drtk-msg:DrtkOutputState instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <DrtkOutputState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drtk-msg:state-val is deprecated.  Use drtk-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DrtkOutputState>)))
    "Constants for message type '<DrtkOutputState>"
  '((:UNKNOWN . 0)
    (:POSITIONDIFFERENCESOLUTION . 1)
    (:PSEUDORANGEONLYSOLUTION . 2)
    (:LOWPRECISIONSOLUTION . 3)
    (:HIGHPRECISIONSOLUTION . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DrtkOutputState)))
    "Constants for message type 'DrtkOutputState"
  '((:UNKNOWN . 0)
    (:POSITIONDIFFERENCESOLUTION . 1)
    (:PSEUDORANGEONLYSOLUTION . 2)
    (:LOWPRECISIONSOLUTION . 3)
    (:HIGHPRECISIONSOLUTION . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DrtkOutputState>) ostream)
  "Serializes a message object of type '<DrtkOutputState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DrtkOutputState>) istream)
  "Deserializes a message object of type '<DrtkOutputState>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DrtkOutputState>)))
  "Returns string type for a message object of type '<DrtkOutputState>"
  "drtk/DrtkOutputState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DrtkOutputState)))
  "Returns string type for a message object of type 'DrtkOutputState"
  "drtk/DrtkOutputState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DrtkOutputState>)))
  "Returns md5sum for a message object of type '<DrtkOutputState>"
  "67e2d094bf94231fdd9d2866239c68fd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DrtkOutputState)))
  "Returns md5sum for a message object of type 'DrtkOutputState"
  "67e2d094bf94231fdd9d2866239c68fd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DrtkOutputState>)))
  "Returns full string definition for message of type '<DrtkOutputState>"
  (cl:format cl:nil "# DrtkOutputState~%~%uint8 Unknown = 0~%uint8 PositionDifferenceSolution = 1~%uint8 PseudorangeOnlySolution = 2~%uint8 LowPrecisionSolution = 3~%uint8 HighPrecisionSolution = 4 ~%~%uint8 state~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DrtkOutputState)))
  "Returns full string definition for message of type 'DrtkOutputState"
  (cl:format cl:nil "# DrtkOutputState~%~%uint8 Unknown = 0~%uint8 PositionDifferenceSolution = 1~%uint8 PseudorangeOnlySolution = 2~%uint8 LowPrecisionSolution = 3~%uint8 HighPrecisionSolution = 4 ~%~%uint8 state~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DrtkOutputState>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DrtkOutputState>))
  "Converts a ROS message object to a list"
  (cl:list 'DrtkOutputState
    (cl:cons ':state (state msg))
))
