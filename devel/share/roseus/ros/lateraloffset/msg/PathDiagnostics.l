;; Auto-generated. Do not edit!


(when (boundp 'lateraloffset::PathDiagnostics)
  (if (not (find-package "LATERALOFFSET"))
    (make-package "LATERALOFFSET"))
  (shadow 'PathDiagnostics (find-package "LATERALOFFSET")))
(unless (find-package "LATERALOFFSET::PATHDIAGNOSTICS")
  (make-package "LATERALOFFSET::PATHDIAGNOSTICS"))

(in-package "ROS")
;;//! \htmlinclude PathDiagnostics.msg.html
(if (not (find-package "ROS_SENSOR_MSGS"))
  (ros::roseus-add-msgs "ros_sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass lateraloffset::PathDiagnostics
  :super ros::object
  :slots (_header _gpsTime _lateralOffset _offsetVariance _curvatureRating _localBodyFrameRPV ))

(defmethod lateraloffset::PathDiagnostics
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:gpsTime __gpsTime) (instance ros_sensor_msgs::GpsTime :init))
    ((:lateralOffset __lateralOffset) 0.0)
    ((:offsetVariance __offsetVariance) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:curvatureRating __curvatureRating) 0.0)
    ((:localBodyFrameRPV __localBodyFrameRPV) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _gpsTime __gpsTime)
   (setq _lateralOffset (float __lateralOffset))
   (setq _offsetVariance __offsetVariance)
   (setq _curvatureRating (float __curvatureRating))
   (setq _localBodyFrameRPV __localBodyFrameRPV)
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
  (:lateralOffset
   (&optional __lateralOffset)
   (if __lateralOffset (setq _lateralOffset __lateralOffset)) _lateralOffset)
  (:offsetVariance
   (&optional __offsetVariance)
   (if __offsetVariance (setq _offsetVariance __offsetVariance)) _offsetVariance)
  (:curvatureRating
   (&optional __curvatureRating)
   (if __curvatureRating (setq _curvatureRating __curvatureRating)) _curvatureRating)
  (:localBodyFrameRPV
   (&optional __localBodyFrameRPV)
   (if __localBodyFrameRPV (setq _localBodyFrameRPV __localBodyFrameRPV)) _localBodyFrameRPV)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; ros_sensor_msgs/GpsTime _gpsTime
    (send _gpsTime :serialization-length)
    ;; float32 _lateralOffset
    4
    ;; float32[] _offsetVariance
    (* 4    (length _offsetVariance)) 4
    ;; float32 _curvatureRating
    4
    ;; float32[] _localBodyFrameRPV
    (* 4    (length _localBodyFrameRPV)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; ros_sensor_msgs/GpsTime _gpsTime
       (send _gpsTime :serialize s)
     ;; float32 _lateralOffset
       (sys::poke _lateralOffset (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[] _offsetVariance
     (write-long (length _offsetVariance) s)
     (dotimes (i (length _offsetVariance))
       (sys::poke (elt _offsetVariance i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _curvatureRating
       (sys::poke _curvatureRating (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[] _localBodyFrameRPV
     (write-long (length _localBodyFrameRPV) s)
     (dotimes (i (length _localBodyFrameRPV))
       (sys::poke (elt _localBodyFrameRPV i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; ros_sensor_msgs/GpsTime _gpsTime
     (send _gpsTime :deserialize buf ptr-) (incf ptr- (send _gpsTime :serialization-length))
   ;; float32 _lateralOffset
     (setq _lateralOffset (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[] _offsetVariance
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _offsetVariance (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _offsetVariance i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32 _curvatureRating
     (setq _curvatureRating (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[] _localBodyFrameRPV
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _localBodyFrameRPV (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _localBodyFrameRPV i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get lateraloffset::PathDiagnostics :md5sum-) "c5862f510f0fc37b9f5e8121e6c2f96c")
(setf (get lateraloffset::PathDiagnostics :datatype-) "lateraloffset/PathDiagnostics")
(setf (get lateraloffset::PathDiagnostics :definition-)
      "## Diagnostics 

std_msgs/Header          header
ros_sensor_msgs/GpsTime  gpsTime

float32 lateralOffset

float32[] offsetVariance

float32 curvatureRating
float32[] localBodyFrameRPV


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



(provide :lateraloffset/PathDiagnostics "c5862f510f0fc37b9f5e8121e6c2f96c")


