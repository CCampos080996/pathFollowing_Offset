; Auto-generated. Do not edit!


(cl:in-package wgs_conversions-srv)


;//! \htmlinclude WgsConversion-request.msg.html

(cl:defclass <WgsConversion-request> (roslisp-msg-protocol:ros-message)
  ((lla
    :reader lla
    :initarg :lla
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (xyz
    :reader xyz
    :initarg :xyz
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (enu
    :reader enu
    :initarg :enu
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (xyz_cov
    :reader xyz_cov
    :initarg :xyz_cov
    :type (cl:vector cl:float)
   :initform (cl:make-array 9 :element-type 'cl:float :initial-element 0.0))
   (enu_cov
    :reader enu_cov
    :initarg :enu_cov
    :type (cl:vector cl:float)
   :initform (cl:make-array 9 :element-type 'cl:float :initial-element 0.0))
   (ref_lla
    :reader ref_lla
    :initarg :ref_lla
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass WgsConversion-request (<WgsConversion-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WgsConversion-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WgsConversion-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wgs_conversions-srv:<WgsConversion-request> is deprecated: use wgs_conversions-srv:WgsConversion-request instead.")))

(cl:ensure-generic-function 'lla-val :lambda-list '(m))
(cl:defmethod lla-val ((m <WgsConversion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wgs_conversions-srv:lla-val is deprecated.  Use wgs_conversions-srv:lla instead.")
  (lla m))

(cl:ensure-generic-function 'xyz-val :lambda-list '(m))
(cl:defmethod xyz-val ((m <WgsConversion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wgs_conversions-srv:xyz-val is deprecated.  Use wgs_conversions-srv:xyz instead.")
  (xyz m))

(cl:ensure-generic-function 'enu-val :lambda-list '(m))
(cl:defmethod enu-val ((m <WgsConversion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wgs_conversions-srv:enu-val is deprecated.  Use wgs_conversions-srv:enu instead.")
  (enu m))

(cl:ensure-generic-function 'xyz_cov-val :lambda-list '(m))
(cl:defmethod xyz_cov-val ((m <WgsConversion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wgs_conversions-srv:xyz_cov-val is deprecated.  Use wgs_conversions-srv:xyz_cov instead.")
  (xyz_cov m))

(cl:ensure-generic-function 'enu_cov-val :lambda-list '(m))
(cl:defmethod enu_cov-val ((m <WgsConversion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wgs_conversions-srv:enu_cov-val is deprecated.  Use wgs_conversions-srv:enu_cov instead.")
  (enu_cov m))

(cl:ensure-generic-function 'ref_lla-val :lambda-list '(m))
(cl:defmethod ref_lla-val ((m <WgsConversion-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wgs_conversions-srv:ref_lla-val is deprecated.  Use wgs_conversions-srv:ref_lla instead.")
  (ref_lla m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WgsConversion-request>) ostream)
  "Serializes a message object of type '<WgsConversion-request>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'lla))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'xyz))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'enu))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'xyz_cov))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'enu_cov))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'ref_lla))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WgsConversion-request>) istream)
  "Deserializes a message object of type '<WgsConversion-request>"
  (cl:setf (cl:slot-value msg 'lla) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'lla)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'xyz) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'xyz)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'enu) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'enu)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'xyz_cov) (cl:make-array 9))
  (cl:let ((vals (cl:slot-value msg 'xyz_cov)))
    (cl:dotimes (i 9)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'enu_cov) (cl:make-array 9))
  (cl:let ((vals (cl:slot-value msg 'enu_cov)))
    (cl:dotimes (i 9)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'ref_lla) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'ref_lla)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WgsConversion-request>)))
  "Returns string type for a service object of type '<WgsConversion-request>"
  "wgs_conversions/WgsConversionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WgsConversion-request)))
  "Returns string type for a service object of type 'WgsConversion-request"
  "wgs_conversions/WgsConversionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WgsConversion-request>)))
  "Returns md5sum for a message object of type '<WgsConversion-request>"
  "ea85c4235117ae109ef1fb9d826c2e78")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WgsConversion-request)))
  "Returns md5sum for a message object of type 'WgsConversion-request"
  "ea85c4235117ae109ef1fb9d826c2e78")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WgsConversion-request>)))
  "Returns full string definition for message of type '<WgsConversion-request>"
  (cl:format cl:nil "float64[3] lla~%float64[3] xyz~%float64[3] enu~%float64[9] xyz_cov~%float64[9] enu_cov~%float64[3] ref_lla~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WgsConversion-request)))
  "Returns full string definition for message of type 'WgsConversion-request"
  (cl:format cl:nil "float64[3] lla~%float64[3] xyz~%float64[3] enu~%float64[9] xyz_cov~%float64[9] enu_cov~%float64[3] ref_lla~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WgsConversion-request>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'lla) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'xyz) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'enu) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'xyz_cov) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'enu_cov) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'ref_lla) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WgsConversion-request>))
  "Converts a ROS message object to a list"
  (cl:list 'WgsConversion-request
    (cl:cons ':lla (lla msg))
    (cl:cons ':xyz (xyz msg))
    (cl:cons ':enu (enu msg))
    (cl:cons ':xyz_cov (xyz_cov msg))
    (cl:cons ':enu_cov (enu_cov msg))
    (cl:cons ':ref_lla (ref_lla msg))
))
;//! \htmlinclude WgsConversion-response.msg.html

(cl:defclass <WgsConversion-response> (roslisp-msg-protocol:ros-message)
  ((lla
    :reader lla
    :initarg :lla
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (xyz
    :reader xyz
    :initarg :xyz
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (enu
    :reader enu
    :initarg :enu
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (xyz_cov
    :reader xyz_cov
    :initarg :xyz_cov
    :type (cl:vector cl:float)
   :initform (cl:make-array 9 :element-type 'cl:float :initial-element 0.0))
   (enu_cov
    :reader enu_cov
    :initarg :enu_cov
    :type (cl:vector cl:float)
   :initform (cl:make-array 9 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass WgsConversion-response (<WgsConversion-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WgsConversion-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WgsConversion-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name wgs_conversions-srv:<WgsConversion-response> is deprecated: use wgs_conversions-srv:WgsConversion-response instead.")))

(cl:ensure-generic-function 'lla-val :lambda-list '(m))
(cl:defmethod lla-val ((m <WgsConversion-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wgs_conversions-srv:lla-val is deprecated.  Use wgs_conversions-srv:lla instead.")
  (lla m))

(cl:ensure-generic-function 'xyz-val :lambda-list '(m))
(cl:defmethod xyz-val ((m <WgsConversion-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wgs_conversions-srv:xyz-val is deprecated.  Use wgs_conversions-srv:xyz instead.")
  (xyz m))

(cl:ensure-generic-function 'enu-val :lambda-list '(m))
(cl:defmethod enu-val ((m <WgsConversion-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wgs_conversions-srv:enu-val is deprecated.  Use wgs_conversions-srv:enu instead.")
  (enu m))

(cl:ensure-generic-function 'xyz_cov-val :lambda-list '(m))
(cl:defmethod xyz_cov-val ((m <WgsConversion-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wgs_conversions-srv:xyz_cov-val is deprecated.  Use wgs_conversions-srv:xyz_cov instead.")
  (xyz_cov m))

(cl:ensure-generic-function 'enu_cov-val :lambda-list '(m))
(cl:defmethod enu_cov-val ((m <WgsConversion-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader wgs_conversions-srv:enu_cov-val is deprecated.  Use wgs_conversions-srv:enu_cov instead.")
  (enu_cov m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WgsConversion-response>) ostream)
  "Serializes a message object of type '<WgsConversion-response>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'lla))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'xyz))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'enu))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'xyz_cov))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'enu_cov))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WgsConversion-response>) istream)
  "Deserializes a message object of type '<WgsConversion-response>"
  (cl:setf (cl:slot-value msg 'lla) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'lla)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'xyz) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'xyz)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'enu) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'enu)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'xyz_cov) (cl:make-array 9))
  (cl:let ((vals (cl:slot-value msg 'xyz_cov)))
    (cl:dotimes (i 9)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'enu_cov) (cl:make-array 9))
  (cl:let ((vals (cl:slot-value msg 'enu_cov)))
    (cl:dotimes (i 9)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WgsConversion-response>)))
  "Returns string type for a service object of type '<WgsConversion-response>"
  "wgs_conversions/WgsConversionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WgsConversion-response)))
  "Returns string type for a service object of type 'WgsConversion-response"
  "wgs_conversions/WgsConversionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WgsConversion-response>)))
  "Returns md5sum for a message object of type '<WgsConversion-response>"
  "ea85c4235117ae109ef1fb9d826c2e78")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WgsConversion-response)))
  "Returns md5sum for a message object of type 'WgsConversion-response"
  "ea85c4235117ae109ef1fb9d826c2e78")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WgsConversion-response>)))
  "Returns full string definition for message of type '<WgsConversion-response>"
  (cl:format cl:nil "float64[3] lla~%float64[3] xyz~%float64[3] enu~%float64[9] xyz_cov~%float64[9] enu_cov~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WgsConversion-response)))
  "Returns full string definition for message of type 'WgsConversion-response"
  (cl:format cl:nil "float64[3] lla~%float64[3] xyz~%float64[3] enu~%float64[9] xyz_cov~%float64[9] enu_cov~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WgsConversion-response>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'lla) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'xyz) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'enu) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'xyz_cov) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'enu_cov) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WgsConversion-response>))
  "Converts a ROS message object to a list"
  (cl:list 'WgsConversion-response
    (cl:cons ':lla (lla msg))
    (cl:cons ':xyz (xyz msg))
    (cl:cons ':enu (enu msg))
    (cl:cons ':xyz_cov (xyz_cov msg))
    (cl:cons ':enu_cov (enu_cov msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'WgsConversion)))
  'WgsConversion-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'WgsConversion)))
  'WgsConversion-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WgsConversion)))
  "Returns string type for a service object of type '<WgsConversion>"
  "wgs_conversions/WgsConversion")