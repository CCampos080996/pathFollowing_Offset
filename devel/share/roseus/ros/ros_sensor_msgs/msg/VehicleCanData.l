;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::VehicleCanData)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'VehicleCanData (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::VEHICLECANDATA")
  (make-package "ROS_SENSOR_MSGS::VEHICLECANDATA"))

(in-package "ROS")
;;//! \htmlinclude VehicleCanData.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_sensor_msgs::VehicleCanData
  :super ros::object
  :slots (_header _vehicleSpeed _yawRate _frontLeftWheelSpeed _frontRightWheelSpeed _rearLeftWheelSpeed _rearRightWheelSpeed _steerAngle _steerAngleRate _frontLeftTirePressure _frontRightTirePressure _rearLeftTirePressure _rearRightTirePressure ))

(defmethod ros_sensor_msgs::VehicleCanData
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:vehicleSpeed __vehicleSpeed) 0.0)
    ((:yawRate __yawRate) 0.0)
    ((:frontLeftWheelSpeed __frontLeftWheelSpeed) 0.0)
    ((:frontRightWheelSpeed __frontRightWheelSpeed) 0.0)
    ((:rearLeftWheelSpeed __rearLeftWheelSpeed) 0.0)
    ((:rearRightWheelSpeed __rearRightWheelSpeed) 0.0)
    ((:steerAngle __steerAngle) 0.0)
    ((:steerAngleRate __steerAngleRate) 0.0)
    ((:frontLeftTirePressure __frontLeftTirePressure) 0.0)
    ((:frontRightTirePressure __frontRightTirePressure) 0.0)
    ((:rearLeftTirePressure __rearLeftTirePressure) 0.0)
    ((:rearRightTirePressure __rearRightTirePressure) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _vehicleSpeed (float __vehicleSpeed))
   (setq _yawRate (float __yawRate))
   (setq _frontLeftWheelSpeed (float __frontLeftWheelSpeed))
   (setq _frontRightWheelSpeed (float __frontRightWheelSpeed))
   (setq _rearLeftWheelSpeed (float __rearLeftWheelSpeed))
   (setq _rearRightWheelSpeed (float __rearRightWheelSpeed))
   (setq _steerAngle (float __steerAngle))
   (setq _steerAngleRate (float __steerAngleRate))
   (setq _frontLeftTirePressure (float __frontLeftTirePressure))
   (setq _frontRightTirePressure (float __frontRightTirePressure))
   (setq _rearLeftTirePressure (float __rearLeftTirePressure))
   (setq _rearRightTirePressure (float __rearRightTirePressure))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:vehicleSpeed
   (&optional __vehicleSpeed)
   (if __vehicleSpeed (setq _vehicleSpeed __vehicleSpeed)) _vehicleSpeed)
  (:yawRate
   (&optional __yawRate)
   (if __yawRate (setq _yawRate __yawRate)) _yawRate)
  (:frontLeftWheelSpeed
   (&optional __frontLeftWheelSpeed)
   (if __frontLeftWheelSpeed (setq _frontLeftWheelSpeed __frontLeftWheelSpeed)) _frontLeftWheelSpeed)
  (:frontRightWheelSpeed
   (&optional __frontRightWheelSpeed)
   (if __frontRightWheelSpeed (setq _frontRightWheelSpeed __frontRightWheelSpeed)) _frontRightWheelSpeed)
  (:rearLeftWheelSpeed
   (&optional __rearLeftWheelSpeed)
   (if __rearLeftWheelSpeed (setq _rearLeftWheelSpeed __rearLeftWheelSpeed)) _rearLeftWheelSpeed)
  (:rearRightWheelSpeed
   (&optional __rearRightWheelSpeed)
   (if __rearRightWheelSpeed (setq _rearRightWheelSpeed __rearRightWheelSpeed)) _rearRightWheelSpeed)
  (:steerAngle
   (&optional __steerAngle)
   (if __steerAngle (setq _steerAngle __steerAngle)) _steerAngle)
  (:steerAngleRate
   (&optional __steerAngleRate)
   (if __steerAngleRate (setq _steerAngleRate __steerAngleRate)) _steerAngleRate)
  (:frontLeftTirePressure
   (&optional __frontLeftTirePressure)
   (if __frontLeftTirePressure (setq _frontLeftTirePressure __frontLeftTirePressure)) _frontLeftTirePressure)
  (:frontRightTirePressure
   (&optional __frontRightTirePressure)
   (if __frontRightTirePressure (setq _frontRightTirePressure __frontRightTirePressure)) _frontRightTirePressure)
  (:rearLeftTirePressure
   (&optional __rearLeftTirePressure)
   (if __rearLeftTirePressure (setq _rearLeftTirePressure __rearLeftTirePressure)) _rearLeftTirePressure)
  (:rearRightTirePressure
   (&optional __rearRightTirePressure)
   (if __rearRightTirePressure (setq _rearRightTirePressure __rearRightTirePressure)) _rearRightTirePressure)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _vehicleSpeed
    4
    ;; float32 _yawRate
    4
    ;; float32 _frontLeftWheelSpeed
    4
    ;; float32 _frontRightWheelSpeed
    4
    ;; float32 _rearLeftWheelSpeed
    4
    ;; float32 _rearRightWheelSpeed
    4
    ;; float32 _steerAngle
    4
    ;; float32 _steerAngleRate
    4
    ;; float32 _frontLeftTirePressure
    4
    ;; float32 _frontRightTirePressure
    4
    ;; float32 _rearLeftTirePressure
    4
    ;; float32 _rearRightTirePressure
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _vehicleSpeed
       (sys::poke _vehicleSpeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yawRate
       (sys::poke _yawRate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _frontLeftWheelSpeed
       (sys::poke _frontLeftWheelSpeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _frontRightWheelSpeed
       (sys::poke _frontRightWheelSpeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rearLeftWheelSpeed
       (sys::poke _rearLeftWheelSpeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rearRightWheelSpeed
       (sys::poke _rearRightWheelSpeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _steerAngle
       (sys::poke _steerAngle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _steerAngleRate
       (sys::poke _steerAngleRate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _frontLeftTirePressure
       (sys::poke _frontLeftTirePressure (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _frontRightTirePressure
       (sys::poke _frontRightTirePressure (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rearLeftTirePressure
       (sys::poke _rearLeftTirePressure (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rearRightTirePressure
       (sys::poke _rearRightTirePressure (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _vehicleSpeed
     (setq _vehicleSpeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yawRate
     (setq _yawRate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _frontLeftWheelSpeed
     (setq _frontLeftWheelSpeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _frontRightWheelSpeed
     (setq _frontRightWheelSpeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rearLeftWheelSpeed
     (setq _rearLeftWheelSpeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rearRightWheelSpeed
     (setq _rearRightWheelSpeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _steerAngle
     (setq _steerAngle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _steerAngleRate
     (setq _steerAngleRate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _frontLeftTirePressure
     (setq _frontLeftTirePressure (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _frontRightTirePressure
     (setq _frontRightTirePressure (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rearLeftTirePressure
     (setq _rearLeftTirePressure (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rearRightTirePressure
     (setq _rearRightTirePressure (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ros_sensor_msgs::VehicleCanData :md5sum-) "75538c77ee37258cf3ed3bf6d0bd45c3")
(setf (get ros_sensor_msgs::VehicleCanData :datatype-) "ros_sensor_msgs/VehicleCanData")
(setf (get ros_sensor_msgs::VehicleCanData :definition-)
      "## Message for vehicle data from CAN bus
std_msgs/Header   header

float32 vehicleSpeed
float32 yawRate

float32 frontLeftWheelSpeed
float32 frontRightWheelSpeed
float32 rearLeftWheelSpeed
float32 rearRightWheelSpeed

float32 steerAngle
float32 steerAngleRate

float32 frontLeftTirePressure
float32 frontRightTirePressure
float32 rearLeftTirePressure
float32 rearRightTirePressure

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

")



(provide :ros_sensor_msgs/VehicleCanData "75538c77ee37258cf3ed3bf6d0bd45c3")


