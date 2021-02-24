;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::RcvrZeroize)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'RcvrZeroize (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::RCVRZEROIZE")
  (make-package "ROS_SENSOR_MSGS::RCVRZEROIZE"))
(unless (find-package "ROS_SENSOR_MSGS::RCVRZEROIZEREQUEST")
  (make-package "ROS_SENSOR_MSGS::RCVRZEROIZEREQUEST"))
(unless (find-package "ROS_SENSOR_MSGS::RCVRZEROIZERESPONSE")
  (make-package "ROS_SENSOR_MSGS::RCVRZEROIZERESPONSE"))

(in-package "ROS")





(defclass ros_sensor_msgs::RcvrZeroizeRequest
  :super ros::object
  :slots (_clear_keys _clear_rcvr_data _clear_position_and_time ))

(defmethod ros_sensor_msgs::RcvrZeroizeRequest
  (:init
   (&key
    ((:clear_keys __clear_keys) nil)
    ((:clear_rcvr_data __clear_rcvr_data) nil)
    ((:clear_position_and_time __clear_position_and_time) nil)
    )
   (send-super :init)
   (setq _clear_keys __clear_keys)
   (setq _clear_rcvr_data __clear_rcvr_data)
   (setq _clear_position_and_time __clear_position_and_time)
   self)
  (:clear_keys
   (&optional __clear_keys)
   (if __clear_keys (setq _clear_keys __clear_keys)) _clear_keys)
  (:clear_rcvr_data
   (&optional __clear_rcvr_data)
   (if __clear_rcvr_data (setq _clear_rcvr_data __clear_rcvr_data)) _clear_rcvr_data)
  (:clear_position_and_time
   (&optional __clear_position_and_time)
   (if __clear_position_and_time (setq _clear_position_and_time __clear_position_and_time)) _clear_position_and_time)
  (:serialization-length
   ()
   (+
    ;; bool _clear_keys
    1
    ;; bool _clear_rcvr_data
    1
    ;; bool _clear_position_and_time
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _clear_keys
       (if _clear_keys (write-byte -1 s) (write-byte 0 s))
     ;; bool _clear_rcvr_data
       (if _clear_rcvr_data (write-byte -1 s) (write-byte 0 s))
     ;; bool _clear_position_and_time
       (if _clear_position_and_time (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _clear_keys
     (setq _clear_keys (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _clear_rcvr_data
     (setq _clear_rcvr_data (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _clear_position_and_time
     (setq _clear_position_and_time (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass ros_sensor_msgs::RcvrZeroizeResponse
  :super ros::object
  :slots (_success _message ))

(defmethod ros_sensor_msgs::RcvrZeroizeResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass ros_sensor_msgs::RcvrZeroize
  :super ros::object
  :slots ())

(setf (get ros_sensor_msgs::RcvrZeroize :md5sum-) "1a6092fd53941ce04a5c576a57bbdbb6")
(setf (get ros_sensor_msgs::RcvrZeroize :datatype-) "ros_sensor_msgs/RcvrZeroize")
(setf (get ros_sensor_msgs::RcvrZeroize :request) ros_sensor_msgs::RcvrZeroizeRequest)
(setf (get ros_sensor_msgs::RcvrZeroize :response) ros_sensor_msgs::RcvrZeroizeResponse)

(defmethod ros_sensor_msgs::RcvrZeroizeRequest
  (:response () (instance ros_sensor_msgs::RcvrZeroizeResponse :init)))

(setf (get ros_sensor_msgs::RcvrZeroizeRequest :md5sum-) "1a6092fd53941ce04a5c576a57bbdbb6")
(setf (get ros_sensor_msgs::RcvrZeroizeRequest :datatype-) "ros_sensor_msgs/RcvrZeroizeRequest")
(setf (get ros_sensor_msgs::RcvrZeroizeRequest :definition-)
      "bool clear_keys
bool clear_rcvr_data
bool clear_position_and_time
---
bool success
string message
")

(setf (get ros_sensor_msgs::RcvrZeroizeResponse :md5sum-) "1a6092fd53941ce04a5c576a57bbdbb6")
(setf (get ros_sensor_msgs::RcvrZeroizeResponse :datatype-) "ros_sensor_msgs/RcvrZeroizeResponse")
(setf (get ros_sensor_msgs::RcvrZeroizeResponse :definition-)
      "bool clear_keys
bool clear_rcvr_data
bool clear_position_and_time
---
bool success
string message
")



(provide :ros_sensor_msgs/RcvrZeroize "1a6092fd53941ce04a5c576a57bbdbb6")


