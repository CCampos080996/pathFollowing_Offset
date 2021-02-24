; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude TrackingStatus.msg.html

(cl:defclass <TrackingStatus> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TrackingStatus (<TrackingStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrackingStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrackingStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<TrackingStatus> is deprecated: use ros_sensor_msgs-msg:TrackingStatus instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <TrackingStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:status-val is deprecated.  Use ros_sensor_msgs-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TrackingStatus>)))
    "Constants for message type '<TrackingStatus>"
  '((:IDLE . 0)
    (:SEARCHINGCA . 1)
    (:SEARCHINGPY . 2)
    (:CODELOCK . 3)
    (:CARRIERLOCK . 4)
    (:CARRIERTRACKDATACOLLECT . 5)
    (:SEQUENTIALRESYNCHRONIZATION . 6)
    (:REACQUISITION . 7)
    (:UNUSABLE . 8))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TrackingStatus)))
    "Constants for message type 'TrackingStatus"
  '((:IDLE . 0)
    (:SEARCHINGCA . 1)
    (:SEARCHINGPY . 2)
    (:CODELOCK . 3)
    (:CARRIERLOCK . 4)
    (:CARRIERTRACKDATACOLLECT . 5)
    (:SEQUENTIALRESYNCHRONIZATION . 6)
    (:REACQUISITION . 7)
    (:UNUSABLE . 8))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrackingStatus>) ostream)
  "Serializes a message object of type '<TrackingStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrackingStatus>) istream)
  "Deserializes a message object of type '<TrackingStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrackingStatus>)))
  "Returns string type for a message object of type '<TrackingStatus>"
  "ros_sensor_msgs/TrackingStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrackingStatus)))
  "Returns string type for a message object of type 'TrackingStatus"
  "ros_sensor_msgs/TrackingStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrackingStatus>)))
  "Returns md5sum for a message object of type '<TrackingStatus>"
  "00731b51e23572a6e93281f0290e66e1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrackingStatus)))
  "Returns md5sum for a message object of type 'TrackingStatus"
  "00731b51e23572a6e93281f0290e66e1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrackingStatus>)))
  "Returns full string definition for message of type '<TrackingStatus>"
  (cl:format cl:nil "## Tracking Status~%~%uint8 Idle                        = 0~%uint8 SearchingCa                 = 1~%uint8 SearchingPy                 = 2~%uint8 CodeLock                    = 3~%uint8 CarrierLock                 = 4~%uint8 CarrierTrackDataCollect     = 5~%uint8 SequentialResynchronization = 6~%uint8 Reacquisition               = 7~%uint8 Unusable                    = 8~%~%uint8 status~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrackingStatus)))
  "Returns full string definition for message of type 'TrackingStatus"
  (cl:format cl:nil "## Tracking Status~%~%uint8 Idle                        = 0~%uint8 SearchingCa                 = 1~%uint8 SearchingPy                 = 2~%uint8 CodeLock                    = 3~%uint8 CarrierLock                 = 4~%uint8 CarrierTrackDataCollect     = 5~%uint8 SequentialResynchronization = 6~%uint8 Reacquisition               = 7~%uint8 Unusable                    = 8~%~%uint8 status~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrackingStatus>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrackingStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'TrackingStatus
    (cl:cons ':status (status msg))
))
