;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::GaitDetection)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'GaitDetection (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::GAITDETECTION")
  (make-package "ROS_SENSOR_MSGS::GAITDETECTION"))

(in-package "ROS")
;;//! \htmlinclude GaitDetection.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_sensor_msgs::GaitDetection
  :super ros::object
  :slots (_header _zeroAccBool _underLocalAccStdBool _zeroAngVelBool _stepDetectedBool _posBwrtLinR _stepLength _stepHeight _stepAngle ))

(defmethod ros_sensor_msgs::GaitDetection
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:zeroAccBool __zeroAccBool) nil)
    ((:underLocalAccStdBool __underLocalAccStdBool) nil)
    ((:zeroAngVelBool __zeroAngVelBool) nil)
    ((:stepDetectedBool __stepDetectedBool) nil)
    ((:posBwrtLinR __posBwrtLinR) (instance ros_sensor_msgs::Vector3Cov :init))
    ((:stepLength __stepLength) 0.0)
    ((:stepHeight __stepHeight) 0.0)
    ((:stepAngle __stepAngle) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _zeroAccBool __zeroAccBool)
   (setq _underLocalAccStdBool __underLocalAccStdBool)
   (setq _zeroAngVelBool __zeroAngVelBool)
   (setq _stepDetectedBool __stepDetectedBool)
   (setq _posBwrtLinR __posBwrtLinR)
   (setq _stepLength (float __stepLength))
   (setq _stepHeight (float __stepHeight))
   (setq _stepAngle (float __stepAngle))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:zeroAccBool
   (&optional __zeroAccBool)
   (if __zeroAccBool (setq _zeroAccBool __zeroAccBool)) _zeroAccBool)
  (:underLocalAccStdBool
   (&optional __underLocalAccStdBool)
   (if __underLocalAccStdBool (setq _underLocalAccStdBool __underLocalAccStdBool)) _underLocalAccStdBool)
  (:zeroAngVelBool
   (&optional __zeroAngVelBool)
   (if __zeroAngVelBool (setq _zeroAngVelBool __zeroAngVelBool)) _zeroAngVelBool)
  (:stepDetectedBool
   (&optional __stepDetectedBool)
   (if __stepDetectedBool (setq _stepDetectedBool __stepDetectedBool)) _stepDetectedBool)
  (:posBwrtLinR
   (&rest __posBwrtLinR)
   (if (keywordp (car __posBwrtLinR))
       (send* _posBwrtLinR __posBwrtLinR)
     (progn
       (if __posBwrtLinR (setq _posBwrtLinR (car __posBwrtLinR)))
       _posBwrtLinR)))
  (:stepLength
   (&optional __stepLength)
   (if __stepLength (setq _stepLength __stepLength)) _stepLength)
  (:stepHeight
   (&optional __stepHeight)
   (if __stepHeight (setq _stepHeight __stepHeight)) _stepHeight)
  (:stepAngle
   (&optional __stepAngle)
   (if __stepAngle (setq _stepAngle __stepAngle)) _stepAngle)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _zeroAccBool
    1
    ;; bool _underLocalAccStdBool
    1
    ;; bool _zeroAngVelBool
    1
    ;; bool _stepDetectedBool
    1
    ;; ros_sensor_msgs/Vector3Cov _posBwrtLinR
    (send _posBwrtLinR :serialization-length)
    ;; float64 _stepLength
    8
    ;; float64 _stepHeight
    8
    ;; float64 _stepAngle
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _zeroAccBool
       (if _zeroAccBool (write-byte -1 s) (write-byte 0 s))
     ;; bool _underLocalAccStdBool
       (if _underLocalAccStdBool (write-byte -1 s) (write-byte 0 s))
     ;; bool _zeroAngVelBool
       (if _zeroAngVelBool (write-byte -1 s) (write-byte 0 s))
     ;; bool _stepDetectedBool
       (if _stepDetectedBool (write-byte -1 s) (write-byte 0 s))
     ;; ros_sensor_msgs/Vector3Cov _posBwrtLinR
       (send _posBwrtLinR :serialize s)
     ;; float64 _stepLength
       (sys::poke _stepLength (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _stepHeight
       (sys::poke _stepHeight (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _stepAngle
       (sys::poke _stepAngle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _zeroAccBool
     (setq _zeroAccBool (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _underLocalAccStdBool
     (setq _underLocalAccStdBool (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _zeroAngVelBool
     (setq _zeroAngVelBool (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _stepDetectedBool
     (setq _stepDetectedBool (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; ros_sensor_msgs/Vector3Cov _posBwrtLinR
     (send _posBwrtLinR :deserialize buf ptr-) (incf ptr- (send _posBwrtLinR :serialization-length))
   ;; float64 _stepLength
     (setq _stepLength (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _stepHeight
     (setq _stepHeight (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _stepAngle
     (setq _stepAngle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ros_sensor_msgs::GaitDetection :md5sum-) "f261dd9516cbda3f5e7d59b11e4500c5")
(setf (get ros_sensor_msgs::GaitDetection :datatype-) "ros_sensor_msgs/GaitDetection")
(setf (get ros_sensor_msgs::GaitDetection :definition-)
      "
std_msgs/Header header

bool 		zeroAccBool
bool 		underLocalAccStdBool
bool 		zeroAngVelBool

bool 		stepDetectedBool

Vector3Cov 	posBwrtLinR

float64 	stepLength
float64 	stepHeight
float64 	stepAngle
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: ros_sensor_msgs/Vector3Cov
geometry_msgs/Vector3 	value 		# unit
float64[9] 				covariance 	# unit^2
================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :ros_sensor_msgs/GaitDetection "f261dd9516cbda3f5e7d59b11e4500c5")


