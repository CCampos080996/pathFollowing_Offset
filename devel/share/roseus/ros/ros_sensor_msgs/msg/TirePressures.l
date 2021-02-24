;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::TirePressures)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'TirePressures (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::TIREPRESSURES")
  (make-package "ROS_SENSOR_MSGS::TIREPRESSURES"))

(in-package "ROS")
;;//! \htmlinclude TirePressures.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_sensor_msgs::TirePressures
  :super ros::object
  :slots (_header _tirePressure _wheelName ))

(defmethod ros_sensor_msgs::TirePressures
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:tirePressure __tirePressure) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:wheelName __wheelName) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _tirePressure __tirePressure)
   (setq _wheelName __wheelName)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:tirePressure
   (&optional __tirePressure)
   (if __tirePressure (setq _tirePressure __tirePressure)) _tirePressure)
  (:wheelName
   (&optional __wheelName)
   (if __wheelName (setq _wheelName __wheelName)) _wheelName)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32[] _tirePressure
    (* 4    (length _tirePressure)) 4
    ;; string[] _wheelName
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _wheelName)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32[] _tirePressure
     (write-long (length _tirePressure) s)
     (dotimes (i (length _tirePressure))
       (sys::poke (elt _tirePressure i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; string[] _wheelName
     (write-long (length _wheelName) s)
     (dolist (elem _wheelName)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32[] _tirePressure
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tirePressure (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _tirePressure i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; string[] _wheelName
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _wheelName (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _wheelName i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get ros_sensor_msgs::TirePressures :md5sum-) "b65c89722b8915fad4ed661e18330f28")
(setf (get ros_sensor_msgs::TirePressures :datatype-) "ros_sensor_msgs/TirePressures")
(setf (get ros_sensor_msgs::TirePressures :definition-)
      "std_msgs/Header   header

float32[] tirePressure
string[] wheelName
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



(provide :ros_sensor_msgs/TirePressures "b65c89722b8915fad4ed661e18330f28")


