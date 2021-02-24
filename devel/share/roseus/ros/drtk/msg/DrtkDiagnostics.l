;; Auto-generated. Do not edit!


(when (boundp 'drtk::DrtkDiagnostics)
  (if (not (find-package "DRTK"))
    (make-package "DRTK"))
  (shadow 'DrtkDiagnostics (find-package "DRTK")))
(unless (find-package "DRTK::DRTKDIAGNOSTICS")
  (make-package "DRTK::DRTKDIAGNOSTICS"))

(in-package "ROS")
;;//! \htmlinclude DrtkDiagnostics.msg.html
(if (not (find-package "ROS_SENSOR_MSGS"))
  (ros::roseus-add-msgs "ros_sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass drtk::DrtkDiagnostics
  :super ros::object
  :slots (_header _gpsTime _sdFloatIntegerAmbiguitiesL1 _sdFloatIntegerAmbiguitiesL2 _numAvailableSvs _lambdaRatio _lockedLambdaRatio _basePrn ))

(defmethod drtk::DrtkDiagnostics
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:gpsTime __gpsTime) (instance ros_sensor_msgs::GpsTime :init))
    ((:sdFloatIntegerAmbiguitiesL1 __sdFloatIntegerAmbiguitiesL1) (make-array 32 :initial-element 0.0 :element-type :float))
    ((:sdFloatIntegerAmbiguitiesL2 __sdFloatIntegerAmbiguitiesL2) (make-array 32 :initial-element 0.0 :element-type :float))
    ((:numAvailableSvs __numAvailableSvs) 0)
    ((:lambdaRatio __lambdaRatio) 0.0)
    ((:lockedLambdaRatio __lockedLambdaRatio) 0.0)
    ((:basePrn __basePrn) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _gpsTime __gpsTime)
   (setq _sdFloatIntegerAmbiguitiesL1 __sdFloatIntegerAmbiguitiesL1)
   (setq _sdFloatIntegerAmbiguitiesL2 __sdFloatIntegerAmbiguitiesL2)
   (setq _numAvailableSvs (round __numAvailableSvs))
   (setq _lambdaRatio (float __lambdaRatio))
   (setq _lockedLambdaRatio (float __lockedLambdaRatio))
   (setq _basePrn (round __basePrn))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:gpsTime
   (&rest __gpsTime)
   (if (keywordp (car __gpsTime))
       (send* _gpsTime __gpsTime)
     (progn
       (if __gpsTime (setq _gpsTime (car __gpsTime)))
       _gpsTime)))
  (:sdFloatIntegerAmbiguitiesL1
   (&optional __sdFloatIntegerAmbiguitiesL1)
   (if __sdFloatIntegerAmbiguitiesL1 (setq _sdFloatIntegerAmbiguitiesL1 __sdFloatIntegerAmbiguitiesL1)) _sdFloatIntegerAmbiguitiesL1)
  (:sdFloatIntegerAmbiguitiesL2
   (&optional __sdFloatIntegerAmbiguitiesL2)
   (if __sdFloatIntegerAmbiguitiesL2 (setq _sdFloatIntegerAmbiguitiesL2 __sdFloatIntegerAmbiguitiesL2)) _sdFloatIntegerAmbiguitiesL2)
  (:numAvailableSvs
   (&optional __numAvailableSvs)
   (if __numAvailableSvs (setq _numAvailableSvs __numAvailableSvs)) _numAvailableSvs)
  (:lambdaRatio
   (&optional __lambdaRatio)
   (if __lambdaRatio (setq _lambdaRatio __lambdaRatio)) _lambdaRatio)
  (:lockedLambdaRatio
   (&optional __lockedLambdaRatio)
   (if __lockedLambdaRatio (setq _lockedLambdaRatio __lockedLambdaRatio)) _lockedLambdaRatio)
  (:basePrn
   (&optional __basePrn)
   (if __basePrn (setq _basePrn __basePrn)) _basePrn)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; ros_sensor_msgs/GpsTime _gpsTime
    (send _gpsTime :serialization-length)
    ;; float64[32] _sdFloatIntegerAmbiguitiesL1
    (* 8    32)
    ;; float64[32] _sdFloatIntegerAmbiguitiesL2
    (* 8    32)
    ;; uint16 _numAvailableSvs
    2
    ;; float64 _lambdaRatio
    8
    ;; float64 _lockedLambdaRatio
    8
    ;; uint32 _basePrn
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; ros_sensor_msgs/GpsTime _gpsTime
       (send _gpsTime :serialize s)
     ;; float64[32] _sdFloatIntegerAmbiguitiesL1
     (dotimes (i 32)
       (sys::poke (elt _sdFloatIntegerAmbiguitiesL1 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[32] _sdFloatIntegerAmbiguitiesL2
     (dotimes (i 32)
       (sys::poke (elt _sdFloatIntegerAmbiguitiesL2 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; uint16 _numAvailableSvs
       (write-word _numAvailableSvs s)
     ;; float64 _lambdaRatio
       (sys::poke _lambdaRatio (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lockedLambdaRatio
       (sys::poke _lockedLambdaRatio (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint32 _basePrn
       (write-long _basePrn s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; ros_sensor_msgs/GpsTime _gpsTime
     (send _gpsTime :deserialize buf ptr-) (incf ptr- (send _gpsTime :serialization-length))
   ;; float64[32] _sdFloatIntegerAmbiguitiesL1
   (dotimes (i (length _sdFloatIntegerAmbiguitiesL1))
     (setf (elt _sdFloatIntegerAmbiguitiesL1 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[32] _sdFloatIntegerAmbiguitiesL2
   (dotimes (i (length _sdFloatIntegerAmbiguitiesL2))
     (setf (elt _sdFloatIntegerAmbiguitiesL2 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; uint16 _numAvailableSvs
     (setq _numAvailableSvs (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64 _lambdaRatio
     (setq _lambdaRatio (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lockedLambdaRatio
     (setq _lockedLambdaRatio (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint32 _basePrn
     (setq _basePrn (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get drtk::DrtkDiagnostics :md5sum-) "3b3d08a7eca2c863ebc178a9aab483f7")
(setf (get drtk::DrtkDiagnostics :datatype-) "drtk/DrtkDiagnostics")
(setf (get drtk::DrtkDiagnostics :definition-)
      "## DrtkDiagnostics

std_msgs/Header   header
ros_sensor_msgs/GpsTime  gpsTime

float64[32]                  sdFloatIntegerAmbiguitiesL1
float64[32]                  sdFloatIntegerAmbiguitiesL2

# float64[32]                  sdFloatIntegerAmbiguitiesCovarianceL1
# float64[32]                  sdFloatIntegerAmbiguitiesCovarianceL2

uint16 numAvailableSvs

float64 lambdaRatio
float64 lockedLambdaRatio

uint32 basePrn
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
MSG: ros_sensor_msgs/GpsTime
## GPS time structure
uint32          gps_week        # Full GPS week from (0:0:00 Jan 06, 1980)
float64         gps_seconds     # GPS seconds into week [sec]
")



(provide :drtk/DrtkDiagnostics "3b3d08a7eca2c863ebc178a9aab483f7")


