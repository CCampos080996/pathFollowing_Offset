;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::ChannelStatus)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'ChannelStatus (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::CHANNELSTATUS")
  (make-package "ROS_SENSOR_MSGS::CHANNELSTATUS"))

(in-package "ROS")
;;//! \htmlinclude ChannelStatus.msg.html


(defclass ros_sensor_msgs::ChannelStatus
  :super ros::object
  :slots (_prn _receiverChannel _carrierToNoise _azimuth _elevation _tracking _code _frequency _usedInSolution ))

(defmethod ros_sensor_msgs::ChannelStatus
  (:init
   (&key
    ((:prn __prn) 0)
    ((:receiverChannel __receiverChannel) 0)
    ((:carrierToNoise __carrierToNoise) 0)
    ((:azimuth __azimuth) 0.0)
    ((:elevation __elevation) 0.0)
    ((:tracking __tracking) (instance ros_sensor_msgs::TrackingStatus :init))
    ((:code __code) (instance ros_sensor_msgs::CodeType :init))
    ((:frequency __frequency) (instance ros_sensor_msgs::FrequencyType :init))
    ((:usedInSolution __usedInSolution) nil)
    )
   (send-super :init)
   (setq _prn (round __prn))
   (setq _receiverChannel (round __receiverChannel))
   (setq _carrierToNoise (round __carrierToNoise))
   (setq _azimuth (float __azimuth))
   (setq _elevation (float __elevation))
   (setq _tracking __tracking)
   (setq _code __code)
   (setq _frequency __frequency)
   (setq _usedInSolution __usedInSolution)
   self)
  (:prn
   (&optional __prn)
   (if __prn (setq _prn __prn)) _prn)
  (:receiverChannel
   (&optional __receiverChannel)
   (if __receiverChannel (setq _receiverChannel __receiverChannel)) _receiverChannel)
  (:carrierToNoise
   (&optional __carrierToNoise)
   (if __carrierToNoise (setq _carrierToNoise __carrierToNoise)) _carrierToNoise)
  (:azimuth
   (&optional __azimuth)
   (if __azimuth (setq _azimuth __azimuth)) _azimuth)
  (:elevation
   (&optional __elevation)
   (if __elevation (setq _elevation __elevation)) _elevation)
  (:tracking
   (&rest __tracking)
   (if (keywordp (car __tracking))
       (send* _tracking __tracking)
     (progn
       (if __tracking (setq _tracking (car __tracking)))
       _tracking)))
  (:code
   (&rest __code)
   (if (keywordp (car __code))
       (send* _code __code)
     (progn
       (if __code (setq _code (car __code)))
       _code)))
  (:frequency
   (&rest __frequency)
   (if (keywordp (car __frequency))
       (send* _frequency __frequency)
     (progn
       (if __frequency (setq _frequency (car __frequency)))
       _frequency)))
  (:usedInSolution
   (&optional __usedInSolution)
   (if __usedInSolution (setq _usedInSolution __usedInSolution)) _usedInSolution)
  (:serialization-length
   ()
   (+
    ;; uint32 _prn
    4
    ;; uint32 _receiverChannel
    4
    ;; uint32 _carrierToNoise
    4
    ;; float32 _azimuth
    4
    ;; float32 _elevation
    4
    ;; ros_sensor_msgs/TrackingStatus _tracking
    (send _tracking :serialization-length)
    ;; ros_sensor_msgs/CodeType _code
    (send _code :serialization-length)
    ;; ros_sensor_msgs/FrequencyType _frequency
    (send _frequency :serialization-length)
    ;; bool _usedInSolution
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _prn
       (write-long _prn s)
     ;; uint32 _receiverChannel
       (write-long _receiverChannel s)
     ;; uint32 _carrierToNoise
       (write-long _carrierToNoise s)
     ;; float32 _azimuth
       (sys::poke _azimuth (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _elevation
       (sys::poke _elevation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; ros_sensor_msgs/TrackingStatus _tracking
       (send _tracking :serialize s)
     ;; ros_sensor_msgs/CodeType _code
       (send _code :serialize s)
     ;; ros_sensor_msgs/FrequencyType _frequency
       (send _frequency :serialize s)
     ;; bool _usedInSolution
       (if _usedInSolution (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _prn
     (setq _prn (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _receiverChannel
     (setq _receiverChannel (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _carrierToNoise
     (setq _carrierToNoise (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _azimuth
     (setq _azimuth (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _elevation
     (setq _elevation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; ros_sensor_msgs/TrackingStatus _tracking
     (send _tracking :deserialize buf ptr-) (incf ptr- (send _tracking :serialization-length))
   ;; ros_sensor_msgs/CodeType _code
     (send _code :deserialize buf ptr-) (incf ptr- (send _code :serialization-length))
   ;; ros_sensor_msgs/FrequencyType _frequency
     (send _frequency :deserialize buf ptr-) (incf ptr- (send _frequency :serialization-length))
   ;; bool _usedInSolution
     (setq _usedInSolution (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ros_sensor_msgs::ChannelStatus :md5sum-) "10bf0cee067be1677c1f456497b33d3b")
(setf (get ros_sensor_msgs::ChannelStatus :datatype-) "ros_sensor_msgs/ChannelStatus")
(setf (get ros_sensor_msgs::ChannelStatus :definition-)
      "###Channel Status

uint32         prn
uint32         receiverChannel
uint32         carrierToNoise   # db-Hz
float32        azimuth
float32        elevation
TrackingStatus tracking
CodeType       code
FrequencyType  frequency
bool           usedInSolution
================================================================================
MSG: ros_sensor_msgs/TrackingStatus
## Tracking Status

uint8 Idle                        = 0
uint8 SearchingCa                 = 1
uint8 SearchingPy                 = 2
uint8 CodeLock                    = 3
uint8 CarrierLock                 = 4
uint8 CarrierTrackDataCollect     = 5
uint8 SequentialResynchronization = 6
uint8 Reacquisition               = 7
uint8 Unusable                    = 8

uint8 status
================================================================================
MSG: ros_sensor_msgs/CodeType
## Code Type

uint8 CodeTypeUnknown         = 0
uint8 CodeTypeGpsCa           = 1
uint8 CodeTypeGpsP            = 2
uint8 CodeTypeGpsPCodeless    = 3
uint8 CodeTypeGpsY            = 4
uint8 CodeTypeGpsC            = 5
uint8 CodeTypeGpsCCodeless    = 6
uint8 CodeTypeGpsM            = 8
uint8 CodeTypeGpsMPrime       = 9

uint8 CodeTypeGlonass  = 16
uint8 CodeTypeGalileo  = 32

uint8 type
================================================================================
MSG: ros_sensor_msgs/FrequencyType
## Frequency Type

uint8 FrequencyTypeUnknown      = 0
uint8 FrequencyTypeL1           = 1
uint8 FrequencyTypeL2           = 2
uint8 FrequencyTypeL5           = 3
uint8 FrequencyTypeGalileoE1    = 4
uint8 FrequencyTypeGalileoE5    = 5
uint8 FrequencyTypeGalileoE6    = 6
uint8 FrequencyTypeGalileoC     = 7
uint8 FrequencyTypeGlonassL1F   = 8
uint8 FrequencyTypeGlonassL2F   = 9
uint8 FrequencyTypeGlonassL1C   = 10
uint8 FrequencyTypeGlonassL2C   = 11
uint8 FrequencyTypeGlonassL3C   = 12

uint8 type
")



(provide :ros_sensor_msgs/ChannelStatus "10bf0cee067be1677c1f456497b33d3b")


