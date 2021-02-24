;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::LlhPosition)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'LlhPosition (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::LLHPOSITION")
  (make-package "ROS_SENSOR_MSGS::LLHPOSITION"))

(in-package "ROS")
;;//! \htmlinclude LlhPosition.msg.html


(defclass ros_sensor_msgs::LlhPosition
  :super ros::object
  :slots (_latitude _longitude _altitude _horizontalAccuracy _verticalAccuracy ))

(defmethod ros_sensor_msgs::LlhPosition
  (:init
   (&key
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:altitude __altitude) 0.0)
    ((:horizontalAccuracy __horizontalAccuracy) 0)
    ((:verticalAccuracy __verticalAccuracy) 0)
    )
   (send-super :init)
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   (setq _altitude (float __altitude))
   (setq _horizontalAccuracy (round __horizontalAccuracy))
   (setq _verticalAccuracy (round __verticalAccuracy))
   self)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:horizontalAccuracy
   (&optional __horizontalAccuracy)
   (if __horizontalAccuracy (setq _horizontalAccuracy __horizontalAccuracy)) _horizontalAccuracy)
  (:verticalAccuracy
   (&optional __verticalAccuracy)
   (if __verticalAccuracy (setq _verticalAccuracy __verticalAccuracy)) _verticalAccuracy)
  (:serialization-length
   ()
   (+
    ;; float64 _latitude
    8
    ;; float64 _longitude
    8
    ;; float64 _altitude
    8
    ;; uint16 _horizontalAccuracy
    2
    ;; uint16 _verticalAccuracy
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint16 _horizontalAccuracy
       (write-word _horizontalAccuracy s)
     ;; uint16 _verticalAccuracy
       (write-word _verticalAccuracy s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _altitude
     (setq _altitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint16 _horizontalAccuracy
     (setq _horizontalAccuracy (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _verticalAccuracy
     (setq _verticalAccuracy (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get ros_sensor_msgs::LlhPosition :md5sum-) "c6f425fbcae84dae779ac1c441d3712e")
(setf (get ros_sensor_msgs::LlhPosition :datatype-) "ros_sensor_msgs/LlhPosition")
(setf (get ros_sensor_msgs::LlhPosition :definition-)
      "# # LlhPosition

float64                  latitude   # [deg]
float64                  longitude  # [deg]
float64                  altitude   # [m]
uint16                   horizontalAccuracy
uint16                   verticalAccuracy
")



(provide :ros_sensor_msgs/LlhPosition "c6f425fbcae84dae779ac1c441d3712e")


