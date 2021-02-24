;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::NetworkTimeOffset)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'NetworkTimeOffset (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::NETWORKTIMEOFFSET")
  (make-package "ROS_SENSOR_MSGS::NETWORKTIMEOFFSET"))

(in-package "ROS")
;;//! \htmlinclude NetworkTimeOffset.msg.html


(defclass ros_sensor_msgs::NetworkTimeOffset
  :super ros::object
  :slots (_timeOfValidity _dataValid _networkDifferenceCounts _networkDriftCounts _oscillatorFreqEst _networkDifferenceCmdCounts _networkDriftCmdCounts _networkPpsCount _gpsPpsCount ))

(defmethod ros_sensor_msgs::NetworkTimeOffset
  (:init
   (&key
    ((:timeOfValidity __timeOfValidity) (instance ros_sensor_msgs::GpsTime :init))
    ((:dataValid __dataValid) nil)
    ((:networkDifferenceCounts __networkDifferenceCounts) 0)
    ((:networkDriftCounts __networkDriftCounts) 0)
    ((:oscillatorFreqEst __oscillatorFreqEst) 0)
    ((:networkDifferenceCmdCounts __networkDifferenceCmdCounts) 0)
    ((:networkDriftCmdCounts __networkDriftCmdCounts) 0)
    ((:networkPpsCount __networkPpsCount) 0)
    ((:gpsPpsCount __gpsPpsCount) 0)
    )
   (send-super :init)
   (setq _timeOfValidity __timeOfValidity)
   (setq _dataValid __dataValid)
   (setq _networkDifferenceCounts (round __networkDifferenceCounts))
   (setq _networkDriftCounts (round __networkDriftCounts))
   (setq _oscillatorFreqEst (round __oscillatorFreqEst))
   (setq _networkDifferenceCmdCounts (round __networkDifferenceCmdCounts))
   (setq _networkDriftCmdCounts (round __networkDriftCmdCounts))
   (setq _networkPpsCount (round __networkPpsCount))
   (setq _gpsPpsCount (round __gpsPpsCount))
   self)
  (:timeOfValidity
   (&rest __timeOfValidity)
   (if (keywordp (car __timeOfValidity))
       (send* _timeOfValidity __timeOfValidity)
     (progn
       (if __timeOfValidity (setq _timeOfValidity (car __timeOfValidity)))
       _timeOfValidity)))
  (:dataValid
   (&optional __dataValid)
   (if __dataValid (setq _dataValid __dataValid)) _dataValid)
  (:networkDifferenceCounts
   (&optional __networkDifferenceCounts)
   (if __networkDifferenceCounts (setq _networkDifferenceCounts __networkDifferenceCounts)) _networkDifferenceCounts)
  (:networkDriftCounts
   (&optional __networkDriftCounts)
   (if __networkDriftCounts (setq _networkDriftCounts __networkDriftCounts)) _networkDriftCounts)
  (:oscillatorFreqEst
   (&optional __oscillatorFreqEst)
   (if __oscillatorFreqEst (setq _oscillatorFreqEst __oscillatorFreqEst)) _oscillatorFreqEst)
  (:networkDifferenceCmdCounts
   (&optional __networkDifferenceCmdCounts)
   (if __networkDifferenceCmdCounts (setq _networkDifferenceCmdCounts __networkDifferenceCmdCounts)) _networkDifferenceCmdCounts)
  (:networkDriftCmdCounts
   (&optional __networkDriftCmdCounts)
   (if __networkDriftCmdCounts (setq _networkDriftCmdCounts __networkDriftCmdCounts)) _networkDriftCmdCounts)
  (:networkPpsCount
   (&optional __networkPpsCount)
   (if __networkPpsCount (setq _networkPpsCount __networkPpsCount)) _networkPpsCount)
  (:gpsPpsCount
   (&optional __gpsPpsCount)
   (if __gpsPpsCount (setq _gpsPpsCount __gpsPpsCount)) _gpsPpsCount)
  (:serialization-length
   ()
   (+
    ;; ros_sensor_msgs/GpsTime _timeOfValidity
    (send _timeOfValidity :serialization-length)
    ;; bool _dataValid
    1
    ;; int32 _networkDifferenceCounts
    4
    ;; int32 _networkDriftCounts
    4
    ;; int32 _oscillatorFreqEst
    4
    ;; int32 _networkDifferenceCmdCounts
    4
    ;; int32 _networkDriftCmdCounts
    4
    ;; uint32 _networkPpsCount
    4
    ;; uint32 _gpsPpsCount
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ros_sensor_msgs/GpsTime _timeOfValidity
       (send _timeOfValidity :serialize s)
     ;; bool _dataValid
       (if _dataValid (write-byte -1 s) (write-byte 0 s))
     ;; int32 _networkDifferenceCounts
       (write-long _networkDifferenceCounts s)
     ;; int32 _networkDriftCounts
       (write-long _networkDriftCounts s)
     ;; int32 _oscillatorFreqEst
       (write-long _oscillatorFreqEst s)
     ;; int32 _networkDifferenceCmdCounts
       (write-long _networkDifferenceCmdCounts s)
     ;; int32 _networkDriftCmdCounts
       (write-long _networkDriftCmdCounts s)
     ;; uint32 _networkPpsCount
       (write-long _networkPpsCount s)
     ;; uint32 _gpsPpsCount
       (write-long _gpsPpsCount s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ros_sensor_msgs/GpsTime _timeOfValidity
     (send _timeOfValidity :deserialize buf ptr-) (incf ptr- (send _timeOfValidity :serialization-length))
   ;; bool _dataValid
     (setq _dataValid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _networkDifferenceCounts
     (setq _networkDifferenceCounts (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _networkDriftCounts
     (setq _networkDriftCounts (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _oscillatorFreqEst
     (setq _oscillatorFreqEst (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _networkDifferenceCmdCounts
     (setq _networkDifferenceCmdCounts (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _networkDriftCmdCounts
     (setq _networkDriftCmdCounts (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _networkPpsCount
     (setq _networkPpsCount (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _gpsPpsCount
     (setq _gpsPpsCount (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ros_sensor_msgs::NetworkTimeOffset :md5sum-) "412c840c046eb987aa756fb5be2c7955")
(setf (get ros_sensor_msgs::NetworkTimeOffset :datatype-) "ros_sensor_msgs/NetworkTimeOffset")
(setf (get ros_sensor_msgs::NetworkTimeOffset :definition-)
      "  GpsTime timeOfValidity
  bool    dataValid
  int32   networkDifferenceCounts
  int32   networkDriftCounts
  int32   oscillatorFreqEst
  int32   networkDifferenceCmdCounts
  int32   networkDriftCmdCounts
  uint32  networkPpsCount
  uint32  gpsPpsCount
================================================================================
MSG: ros_sensor_msgs/GpsTime
## GPS time structure
uint32          gps_week        # Full GPS week from (0:0:00 Jan 06, 1980)
float64         gps_seconds     # GPS seconds into week [sec]
")



(provide :ros_sensor_msgs/NetworkTimeOffset "412c840c046eb987aa756fb5be2c7955")


