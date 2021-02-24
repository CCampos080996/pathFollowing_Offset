;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::SvState)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'SvState (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::SVSTATE")
  (make-package "ROS_SENSOR_MSGS::SVSTATE"))

(in-package "ROS")
;;//! \htmlinclude SvState.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass ros_sensor_msgs::SvState
  :super ros::object
  :slots (_prn _position _velocity _svClockCorrection ))

(defmethod ros_sensor_msgs::SvState
  (:init
   (&key
    ((:prn __prn) 0)
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:velocity __velocity) (instance geometry_msgs::Twist :init))
    ((:svClockCorrection __svClockCorrection) 0.0)
    )
   (send-super :init)
   (setq _prn (round __prn))
   (setq _position __position)
   (setq _velocity __velocity)
   (setq _svClockCorrection (float __svClockCorrection))
   self)
  (:prn
   (&optional __prn)
   (if __prn (setq _prn __prn)) _prn)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:svClockCorrection
   (&optional __svClockCorrection)
   (if __svClockCorrection (setq _svClockCorrection __svClockCorrection)) _svClockCorrection)
  (:serialization-length
   ()
   (+
    ;; uint16 _prn
    2
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; geometry_msgs/Twist _velocity
    (send _velocity :serialization-length)
    ;; float64 _svClockCorrection
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _prn
       (write-word _prn s)
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; geometry_msgs/Twist _velocity
       (send _velocity :serialize s)
     ;; float64 _svClockCorrection
       (sys::poke _svClockCorrection (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _prn
     (setq _prn (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; geometry_msgs/Twist _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; float64 _svClockCorrection
     (setq _svClockCorrection (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ros_sensor_msgs::SvState :md5sum-) "f2297006b8e3021b7976c30f47c3e4ff")
(setf (get ros_sensor_msgs::SvState :datatype-) "ros_sensor_msgs/SvState")
(setf (get ros_sensor_msgs::SvState :definition-)
      "## Satellite vehicle state information

uint16                prn                 # GPS [1-32], GLONASS may be negative
geometry_msgs/Point   position            # Satellite position in ECEF [m]
geometry_msgs/Twist   velocity            # Satellite velocity in ECEF [m/s]
float64               svClockCorrection   # Satellite clock correction [m]
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

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



(provide :ros_sensor_msgs/SvState "f2297006b8e3021b7976c30f47c3e4ff")


