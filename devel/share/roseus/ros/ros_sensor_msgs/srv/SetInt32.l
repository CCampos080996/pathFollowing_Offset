;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::SetInt32)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'SetInt32 (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::SETINT32")
  (make-package "ROS_SENSOR_MSGS::SETINT32"))
(unless (find-package "ROS_SENSOR_MSGS::SETINT32REQUEST")
  (make-package "ROS_SENSOR_MSGS::SETINT32REQUEST"))
(unless (find-package "ROS_SENSOR_MSGS::SETINT32RESPONSE")
  (make-package "ROS_SENSOR_MSGS::SETINT32RESPONSE"))

(in-package "ROS")





(defclass ros_sensor_msgs::SetInt32Request
  :super ros::object
  :slots (_i32 ))

(defmethod ros_sensor_msgs::SetInt32Request
  (:init
   (&key
    ((:i32 __i32) 0)
    )
   (send-super :init)
   (setq _i32 (round __i32))
   self)
  (:i32
   (&optional __i32)
   (if __i32 (setq _i32 __i32)) _i32)
  (:serialization-length
   ()
   (+
    ;; int32 _i32
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _i32
       (write-long _i32 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _i32
     (setq _i32 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass ros_sensor_msgs::SetInt32Response
  :super ros::object
  :slots (_success _message ))

(defmethod ros_sensor_msgs::SetInt32Response
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

(defclass ros_sensor_msgs::SetInt32
  :super ros::object
  :slots ())

(setf (get ros_sensor_msgs::SetInt32 :md5sum-) "04d7cbd5177c76f7add321244a139b5c")
(setf (get ros_sensor_msgs::SetInt32 :datatype-) "ros_sensor_msgs/SetInt32")
(setf (get ros_sensor_msgs::SetInt32 :request) ros_sensor_msgs::SetInt32Request)
(setf (get ros_sensor_msgs::SetInt32 :response) ros_sensor_msgs::SetInt32Response)

(defmethod ros_sensor_msgs::SetInt32Request
  (:response () (instance ros_sensor_msgs::SetInt32Response :init)))

(setf (get ros_sensor_msgs::SetInt32Request :md5sum-) "04d7cbd5177c76f7add321244a139b5c")
(setf (get ros_sensor_msgs::SetInt32Request :datatype-) "ros_sensor_msgs/SetInt32Request")
(setf (get ros_sensor_msgs::SetInt32Request :definition-)
      "int32 i32

---
bool success
string message
")

(setf (get ros_sensor_msgs::SetInt32Response :md5sum-) "04d7cbd5177c76f7add321244a139b5c")
(setf (get ros_sensor_msgs::SetInt32Response :datatype-) "ros_sensor_msgs/SetInt32Response")
(setf (get ros_sensor_msgs::SetInt32Response :definition-)
      "int32 i32

---
bool success
string message
")



(provide :ros_sensor_msgs/SetInt32 "04d7cbd5177c76f7add321244a139b5c")


