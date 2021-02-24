; Auto-generated. Do not edit!


(cl:in-package ros_sensor_msgs-msg)


;//! \htmlinclude RawMeasurement.msg.html

(cl:defclass <RawMeasurement> (roslisp-msg-protocol:ros-message)
  ((prn
    :reader prn
    :initarg :prn
    :type cl:fixnum
    :initform 0)
   (pseudorange
    :reader pseudorange
    :initarg :pseudorange
    :type cl:float
    :initform 0.0)
   (pseudorange_variance
    :reader pseudorange_variance
    :initarg :pseudorange_variance
    :type cl:float
    :initform 0.0)
   (frequency
    :reader frequency
    :initarg :frequency
    :type ros_sensor_msgs-msg:FrequencyType
    :initform (cl:make-instance 'ros_sensor_msgs-msg:FrequencyType))
   (carrier_phase
    :reader carrier_phase
    :initarg :carrier_phase
    :type cl:float
    :initform 0.0)
   (carrier_phase_variance
    :reader carrier_phase_variance
    :initarg :carrier_phase_variance
    :type cl:float
    :initform 0.0)
   (doppler
    :reader doppler
    :initarg :doppler
    :type cl:float
    :initform 0.0)
   (doppler_variance
    :reader doppler_variance
    :initarg :doppler_variance
    :type cl:float
    :initform 0.0)
   (carrier_to_noise
    :reader carrier_to_noise
    :initarg :carrier_to_noise
    :type cl:float
    :initform 0.0)
   (loss_of_lock
    :reader loss_of_lock
    :initarg :loss_of_lock
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RawMeasurement (<RawMeasurement>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RawMeasurement>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RawMeasurement)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_sensor_msgs-msg:<RawMeasurement> is deprecated: use ros_sensor_msgs-msg:RawMeasurement instead.")))

(cl:ensure-generic-function 'prn-val :lambda-list '(m))
(cl:defmethod prn-val ((m <RawMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:prn-val is deprecated.  Use ros_sensor_msgs-msg:prn instead.")
  (prn m))

(cl:ensure-generic-function 'pseudorange-val :lambda-list '(m))
(cl:defmethod pseudorange-val ((m <RawMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:pseudorange-val is deprecated.  Use ros_sensor_msgs-msg:pseudorange instead.")
  (pseudorange m))

(cl:ensure-generic-function 'pseudorange_variance-val :lambda-list '(m))
(cl:defmethod pseudorange_variance-val ((m <RawMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:pseudorange_variance-val is deprecated.  Use ros_sensor_msgs-msg:pseudorange_variance instead.")
  (pseudorange_variance m))

(cl:ensure-generic-function 'frequency-val :lambda-list '(m))
(cl:defmethod frequency-val ((m <RawMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:frequency-val is deprecated.  Use ros_sensor_msgs-msg:frequency instead.")
  (frequency m))

(cl:ensure-generic-function 'carrier_phase-val :lambda-list '(m))
(cl:defmethod carrier_phase-val ((m <RawMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:carrier_phase-val is deprecated.  Use ros_sensor_msgs-msg:carrier_phase instead.")
  (carrier_phase m))

(cl:ensure-generic-function 'carrier_phase_variance-val :lambda-list '(m))
(cl:defmethod carrier_phase_variance-val ((m <RawMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:carrier_phase_variance-val is deprecated.  Use ros_sensor_msgs-msg:carrier_phase_variance instead.")
  (carrier_phase_variance m))

(cl:ensure-generic-function 'doppler-val :lambda-list '(m))
(cl:defmethod doppler-val ((m <RawMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:doppler-val is deprecated.  Use ros_sensor_msgs-msg:doppler instead.")
  (doppler m))

(cl:ensure-generic-function 'doppler_variance-val :lambda-list '(m))
(cl:defmethod doppler_variance-val ((m <RawMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:doppler_variance-val is deprecated.  Use ros_sensor_msgs-msg:doppler_variance instead.")
  (doppler_variance m))

(cl:ensure-generic-function 'carrier_to_noise-val :lambda-list '(m))
(cl:defmethod carrier_to_noise-val ((m <RawMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:carrier_to_noise-val is deprecated.  Use ros_sensor_msgs-msg:carrier_to_noise instead.")
  (carrier_to_noise m))

(cl:ensure-generic-function 'loss_of_lock-val :lambda-list '(m))
(cl:defmethod loss_of_lock-val ((m <RawMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_sensor_msgs-msg:loss_of_lock-val is deprecated.  Use ros_sensor_msgs-msg:loss_of_lock instead.")
  (loss_of_lock m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RawMeasurement>) ostream)
  "Serializes a message object of type '<RawMeasurement>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'prn)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'prn)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'pseudorange))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pseudorange_variance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'frequency) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'carrier_phase))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'carrier_phase_variance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'doppler))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'doppler_variance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'carrier_to_noise))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'loss_of_lock) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RawMeasurement>) istream)
  "Deserializes a message object of type '<RawMeasurement>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'prn)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'prn)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pseudorange) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pseudorange_variance) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'frequency) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'carrier_phase) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'carrier_phase_variance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'doppler) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'doppler_variance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'carrier_to_noise) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'loss_of_lock) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RawMeasurement>)))
  "Returns string type for a message object of type '<RawMeasurement>"
  "ros_sensor_msgs/RawMeasurement")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RawMeasurement)))
  "Returns string type for a message object of type 'RawMeasurement"
  "ros_sensor_msgs/RawMeasurement")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RawMeasurement>)))
  "Returns md5sum for a message object of type '<RawMeasurement>"
  "beb1d4f15a4abead550e7439d0f65ebb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RawMeasurement)))
  "Returns md5sum for a message object of type 'RawMeasurement"
  "beb1d4f15a4abead550e7439d0f65ebb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RawMeasurement>)))
  "Returns full string definition for message of type '<RawMeasurement>"
  (cl:format cl:nil "## Raw measurements for a single channel~%~%uint16        prn                     # GPS [1-32], GLONASS may be negative~%float64       pseudorange             # [m]~%float32		  pseudorange_variance	  # [m^2]~%FrequencyType frequency               # ~%float64       carrier_phase           # [m]~%float32		  carrier_phase_variance  # [m^2]~%float64       doppler                 # [Hz]~%float32       doppler_variance		  # [Hz^2]~%float64       carrier_to_noise        # [db-Hz]~%bool          loss_of_lock            # True - indicates likely loss of~%                                      # carrier lock in previous interval~%================================================================================~%MSG: ros_sensor_msgs/FrequencyType~%## Frequency Type~%~%uint8 FrequencyTypeUnknown      = 0~%uint8 FrequencyTypeL1           = 1~%uint8 FrequencyTypeL2           = 2~%uint8 FrequencyTypeL5           = 3~%uint8 FrequencyTypeGalileoE1    = 4~%uint8 FrequencyTypeGalileoE5    = 5~%uint8 FrequencyTypeGalileoE6    = 6~%uint8 FrequencyTypeGalileoC     = 7~%uint8 FrequencyTypeGlonassL1F   = 8~%uint8 FrequencyTypeGlonassL2F   = 9~%uint8 FrequencyTypeGlonassL1C   = 10~%uint8 FrequencyTypeGlonassL2C   = 11~%uint8 FrequencyTypeGlonassL3C   = 12~%~%uint8 type~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RawMeasurement)))
  "Returns full string definition for message of type 'RawMeasurement"
  (cl:format cl:nil "## Raw measurements for a single channel~%~%uint16        prn                     # GPS [1-32], GLONASS may be negative~%float64       pseudorange             # [m]~%float32		  pseudorange_variance	  # [m^2]~%FrequencyType frequency               # ~%float64       carrier_phase           # [m]~%float32		  carrier_phase_variance  # [m^2]~%float64       doppler                 # [Hz]~%float32       doppler_variance		  # [Hz^2]~%float64       carrier_to_noise        # [db-Hz]~%bool          loss_of_lock            # True - indicates likely loss of~%                                      # carrier lock in previous interval~%================================================================================~%MSG: ros_sensor_msgs/FrequencyType~%## Frequency Type~%~%uint8 FrequencyTypeUnknown      = 0~%uint8 FrequencyTypeL1           = 1~%uint8 FrequencyTypeL2           = 2~%uint8 FrequencyTypeL5           = 3~%uint8 FrequencyTypeGalileoE1    = 4~%uint8 FrequencyTypeGalileoE5    = 5~%uint8 FrequencyTypeGalileoE6    = 6~%uint8 FrequencyTypeGalileoC     = 7~%uint8 FrequencyTypeGlonassL1F   = 8~%uint8 FrequencyTypeGlonassL2F   = 9~%uint8 FrequencyTypeGlonassL1C   = 10~%uint8 FrequencyTypeGlonassL2C   = 11~%uint8 FrequencyTypeGlonassL3C   = 12~%~%uint8 type~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RawMeasurement>))
  (cl:+ 0
     2
     8
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'frequency))
     8
     4
     8
     4
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RawMeasurement>))
  "Converts a ROS message object to a list"
  (cl:list 'RawMeasurement
    (cl:cons ':prn (prn msg))
    (cl:cons ':pseudorange (pseudorange msg))
    (cl:cons ':pseudorange_variance (pseudorange_variance msg))
    (cl:cons ':frequency (frequency msg))
    (cl:cons ':carrier_phase (carrier_phase msg))
    (cl:cons ':carrier_phase_variance (carrier_phase_variance msg))
    (cl:cons ':doppler (doppler msg))
    (cl:cons ':doppler_variance (doppler_variance msg))
    (cl:cons ':carrier_to_noise (carrier_to_noise msg))
    (cl:cons ':loss_of_lock (loss_of_lock msg))
))
