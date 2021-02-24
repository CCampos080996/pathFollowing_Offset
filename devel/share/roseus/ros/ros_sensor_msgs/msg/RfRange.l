;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::RfRange)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'RfRange (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::RFRANGE")
  (make-package "ROS_SENSOR_MSGS::RFRANGE"))

(in-package "ROS")
;;//! \htmlinclude RfRange.msg.html


(defclass ros_sensor_msgs::RfRange
  :super ros::object
  :slots (_range _rangeRate _rangeVariance _rangeRateVariance _timestamp _sourceId _destId _rssi _quality ))

(defmethod ros_sensor_msgs::RfRange
  (:init
   (&key
    ((:range __range) 0.0)
    ((:rangeRate __rangeRate) 0.0)
    ((:rangeVariance __rangeVariance) 0.0)
    ((:rangeRateVariance __rangeRateVariance) 0.0)
    ((:timestamp __timestamp) 0)
    ((:sourceId __sourceId) 0)
    ((:destId __destId) 0)
    ((:rssi __rssi) 0)
    ((:quality __quality) 0)
    )
   (send-super :init)
   (setq _range (float __range))
   (setq _rangeRate (float __rangeRate))
   (setq _rangeVariance (float __rangeVariance))
   (setq _rangeRateVariance (float __rangeRateVariance))
   (setq _timestamp (round __timestamp))
   (setq _sourceId (round __sourceId))
   (setq _destId (round __destId))
   (setq _rssi (round __rssi))
   (setq _quality (round __quality))
   self)
  (:range
   (&optional __range)
   (if __range (setq _range __range)) _range)
  (:rangeRate
   (&optional __rangeRate)
   (if __rangeRate (setq _rangeRate __rangeRate)) _rangeRate)
  (:rangeVariance
   (&optional __rangeVariance)
   (if __rangeVariance (setq _rangeVariance __rangeVariance)) _rangeVariance)
  (:rangeRateVariance
   (&optional __rangeRateVariance)
   (if __rangeRateVariance (setq _rangeRateVariance __rangeRateVariance)) _rangeRateVariance)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:sourceId
   (&optional __sourceId)
   (if __sourceId (setq _sourceId __sourceId)) _sourceId)
  (:destId
   (&optional __destId)
   (if __destId (setq _destId __destId)) _destId)
  (:rssi
   (&optional __rssi)
   (if __rssi (setq _rssi __rssi)) _rssi)
  (:quality
   (&optional __quality)
   (if __quality (setq _quality __quality)) _quality)
  (:serialization-length
   ()
   (+
    ;; float64 _range
    8
    ;; float64 _rangeRate
    8
    ;; float64 _rangeVariance
    8
    ;; float64 _rangeRateVariance
    8
    ;; uint32 _timestamp
    4
    ;; uint32 _sourceId
    4
    ;; uint32 _destId
    4
    ;; uint16 _rssi
    2
    ;; uint16 _quality
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _range
       (sys::poke _range (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rangeRate
       (sys::poke _rangeRate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rangeVariance
       (sys::poke _rangeVariance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rangeRateVariance
       (sys::poke _rangeRateVariance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint32 _timestamp
       (write-long _timestamp s)
     ;; uint32 _sourceId
       (write-long _sourceId s)
     ;; uint32 _destId
       (write-long _destId s)
     ;; uint16 _rssi
       (write-word _rssi s)
     ;; uint16 _quality
       (write-word _quality s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _range
     (setq _range (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rangeRate
     (setq _rangeRate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rangeVariance
     (setq _rangeVariance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rangeRateVariance
     (setq _rangeRateVariance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint32 _timestamp
     (setq _timestamp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _sourceId
     (setq _sourceId (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _destId
     (setq _destId (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _rssi
     (setq _rssi (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _quality
     (setq _quality (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get ros_sensor_msgs::RfRange :md5sum-) "32b87628f581d5bd2a8b44788eff9d27")
(setf (get ros_sensor_msgs::RfRange :datatype-) "ros_sensor_msgs/RfRange")
(setf (get ros_sensor_msgs::RfRange :definition-)
      "# Range to specified object
float64 range
float64 rangeRate
float64 rangeVariance
float64 rangeRateVariance
uint32  timestamp
uint32  sourceId
uint32  destId
uint16  rssi
uint16  quality

")



(provide :ros_sensor_msgs/RfRange "32b87628f581d5bd2a8b44788eff9d27")


