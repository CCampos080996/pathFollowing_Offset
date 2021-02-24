;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::GnssFix)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'GnssFix (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::GNSSFIX")
  (make-package "ROS_SENSOR_MSGS::GNSSFIX"))

(in-package "ROS")
;;//! \htmlinclude GnssFix.msg.html


(intern "*COVARIANCE_TYPE_UNKNOWN*" (find-package "ROS_SENSOR_MSGS::GNSSFIX"))
(shadow '*COVARIANCE_TYPE_UNKNOWN* (find-package "ROS_SENSOR_MSGS::GNSSFIX"))
(defconstant ros_sensor_msgs::GnssFix::*COVARIANCE_TYPE_UNKNOWN* 0)
(intern "*COVARIANCE_TYPE_APPROXIMATED*" (find-package "ROS_SENSOR_MSGS::GNSSFIX"))
(shadow '*COVARIANCE_TYPE_APPROXIMATED* (find-package "ROS_SENSOR_MSGS::GNSSFIX"))
(defconstant ros_sensor_msgs::GnssFix::*COVARIANCE_TYPE_APPROXIMATED* 1)
(intern "*COVARIANCE_TYPE_DIAGONAL_KNOWN*" (find-package "ROS_SENSOR_MSGS::GNSSFIX"))
(shadow '*COVARIANCE_TYPE_DIAGONAL_KNOWN* (find-package "ROS_SENSOR_MSGS::GNSSFIX"))
(defconstant ros_sensor_msgs::GnssFix::*COVARIANCE_TYPE_DIAGONAL_KNOWN* 2)
(intern "*COVARIANCE_TYPE_KNOWN*" (find-package "ROS_SENSOR_MSGS::GNSSFIX"))
(shadow '*COVARIANCE_TYPE_KNOWN* (find-package "ROS_SENSOR_MSGS::GNSSFIX"))
(defconstant ros_sensor_msgs::GnssFix::*COVARIANCE_TYPE_KNOWN* 3)
(defclass ros_sensor_msgs::GnssFix
  :super ros::object
  :slots (_fixStatus _timeOfValidity _llhPosition _enuVelocity _positionCovariance _position_covariance_type ))

(defmethod ros_sensor_msgs::GnssFix
  (:init
   (&key
    ((:fixStatus __fixStatus) (instance ros_sensor_msgs::FixStatus :init))
    ((:timeOfValidity __timeOfValidity) (instance ros_sensor_msgs::GpsTime :init))
    ((:llhPosition __llhPosition) (instance ros_sensor_msgs::LlhPosition :init))
    ((:enuVelocity __enuVelocity) (instance ros_sensor_msgs::EnuVelocity :init))
    ((:positionCovariance __positionCovariance) (make-array 9 :initial-element 0.0 :element-type :float))
    ((:position_covariance_type __position_covariance_type) 0)
    )
   (send-super :init)
   (setq _fixStatus __fixStatus)
   (setq _timeOfValidity __timeOfValidity)
   (setq _llhPosition __llhPosition)
   (setq _enuVelocity __enuVelocity)
   (setq _positionCovariance __positionCovariance)
   (setq _position_covariance_type (round __position_covariance_type))
   self)
  (:fixStatus
   (&rest __fixStatus)
   (if (keywordp (car __fixStatus))
       (send* _fixStatus __fixStatus)
     (progn
       (if __fixStatus (setq _fixStatus (car __fixStatus)))
       _fixStatus)))
  (:timeOfValidity
   (&rest __timeOfValidity)
   (if (keywordp (car __timeOfValidity))
       (send* _timeOfValidity __timeOfValidity)
     (progn
       (if __timeOfValidity (setq _timeOfValidity (car __timeOfValidity)))
       _timeOfValidity)))
  (:llhPosition
   (&rest __llhPosition)
   (if (keywordp (car __llhPosition))
       (send* _llhPosition __llhPosition)
     (progn
       (if __llhPosition (setq _llhPosition (car __llhPosition)))
       _llhPosition)))
  (:enuVelocity
   (&rest __enuVelocity)
   (if (keywordp (car __enuVelocity))
       (send* _enuVelocity __enuVelocity)
     (progn
       (if __enuVelocity (setq _enuVelocity (car __enuVelocity)))
       _enuVelocity)))
  (:positionCovariance
   (&optional __positionCovariance)
   (if __positionCovariance (setq _positionCovariance __positionCovariance)) _positionCovariance)
  (:position_covariance_type
   (&optional __position_covariance_type)
   (if __position_covariance_type (setq _position_covariance_type __position_covariance_type)) _position_covariance_type)
  (:serialization-length
   ()
   (+
    ;; ros_sensor_msgs/FixStatus _fixStatus
    (send _fixStatus :serialization-length)
    ;; ros_sensor_msgs/GpsTime _timeOfValidity
    (send _timeOfValidity :serialization-length)
    ;; ros_sensor_msgs/LlhPosition _llhPosition
    (send _llhPosition :serialization-length)
    ;; ros_sensor_msgs/EnuVelocity _enuVelocity
    (send _enuVelocity :serialization-length)
    ;; float64[9] _positionCovariance
    (* 8    9)
    ;; uint8 _position_covariance_type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ros_sensor_msgs/FixStatus _fixStatus
       (send _fixStatus :serialize s)
     ;; ros_sensor_msgs/GpsTime _timeOfValidity
       (send _timeOfValidity :serialize s)
     ;; ros_sensor_msgs/LlhPosition _llhPosition
       (send _llhPosition :serialize s)
     ;; ros_sensor_msgs/EnuVelocity _enuVelocity
       (send _enuVelocity :serialize s)
     ;; float64[9] _positionCovariance
     (dotimes (i 9)
       (sys::poke (elt _positionCovariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; uint8 _position_covariance_type
       (write-byte _position_covariance_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ros_sensor_msgs/FixStatus _fixStatus
     (send _fixStatus :deserialize buf ptr-) (incf ptr- (send _fixStatus :serialization-length))
   ;; ros_sensor_msgs/GpsTime _timeOfValidity
     (send _timeOfValidity :deserialize buf ptr-) (incf ptr- (send _timeOfValidity :serialization-length))
   ;; ros_sensor_msgs/LlhPosition _llhPosition
     (send _llhPosition :deserialize buf ptr-) (incf ptr- (send _llhPosition :serialization-length))
   ;; ros_sensor_msgs/EnuVelocity _enuVelocity
     (send _enuVelocity :deserialize buf ptr-) (incf ptr- (send _enuVelocity :serialization-length))
   ;; float64[9] _positionCovariance
   (dotimes (i (length _positionCovariance))
     (setf (elt _positionCovariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; uint8 _position_covariance_type
     (setq _position_covariance_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ros_sensor_msgs::GnssFix :md5sum-) "6e5620648cab804bd0f37c21067cabe9")
(setf (get ros_sensor_msgs::GnssFix :datatype-) "ros_sensor_msgs/GnssFix")
(setf (get ros_sensor_msgs::GnssFix :definition-)
      "
FixStatus                fixStatus
GpsTime                  timeOfValidity
LlhPosition              llhPosition
EnuVelocity              enuVelocity          
float64[9] 				 positionCovariance

uint8 COVARIANCE_TYPE_UNKNOWN = 0
uint8 COVARIANCE_TYPE_APPROXIMATED = 1
uint8 COVARIANCE_TYPE_DIAGONAL_KNOWN = 2
uint8 COVARIANCE_TYPE_KNOWN = 3
uint8 position_covariance_type
================================================================================
MSG: ros_sensor_msgs/FixStatus
# # FixStatus

FixType fix
uint32  numSvs
float64  ttff
================================================================================
MSG: ros_sensor_msgs/FixType
## Fix Type

uint8 FixTypeNone = 0
uint8 FixTypeDeadReckoning = 1
uint8 FixType2D = 2
uint8 FixType3D = 3
uint8 FixTypeDRand3D = 4 ## Dead reckoning and GPS fix
uint8 FixTypeTimeOnly = 5
uint8 FixTypeStatic = 9

uint8 type
================================================================================
MSG: ros_sensor_msgs/GpsTime
## GPS time structure
uint32          gps_week        # Full GPS week from (0:0:00 Jan 06, 1980)
float64         gps_seconds     # GPS seconds into week [sec]
================================================================================
MSG: ros_sensor_msgs/LlhPosition
# # LlhPosition

float64                  latitude   # [deg]
float64                  longitude  # [deg]
float64                  altitude   # [m]
uint16                   horizontalAccuracy
uint16                   verticalAccuracy
================================================================================
MSG: ros_sensor_msgs/EnuVelocity
float64					 eastVelocity
float64                  northVelocity
float64                  upVelocity
float32                  horizontalAccuracy
float32                  verticalAccuracy    
")



(provide :ros_sensor_msgs/GnssFix "6e5620648cab804bd0f37c21067cabe9")


