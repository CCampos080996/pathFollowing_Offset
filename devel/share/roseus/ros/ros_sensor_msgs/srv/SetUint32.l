;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::SetUint32)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'SetUint32 (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::SETUINT32")
  (make-package "ROS_SENSOR_MSGS::SETUINT32"))
(unless (find-package "ROS_SENSOR_MSGS::SETUINT32REQUEST")
  (make-package "ROS_SENSOR_MSGS::SETUINT32REQUEST"))
(unless (find-package "ROS_SENSOR_MSGS::SETUINT32RESPONSE")
  (make-package "ROS_SENSOR_MSGS::SETUINT32RESPONSE"))

(in-package "ROS")





(defclass ros_sensor_msgs::SetUint32Request
  :super ros::object
  :slots (_u32 ))

(defmethod ros_sensor_msgs::SetUint32Request
  (:init
   (&key
    ((:u32 __u32) 0)
    )
   (send-super :init)
   (setq _u32 (round __u32))
   self)
  (:u32
   (&optional __u32)
   (if __u32 (setq _u32 __u32)) _u32)
  (:serialization-length
   ()
   (+
    ;; uint32 _u32
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _u32
       (write-long _u32 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _u32
     (setq _u32 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass ros_sensor_msgs::SetUint32Response
  :super ros::object
  :slots (_success _message ))

(defmethod ros_sensor_msgs::SetUint32Response
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

(defclass ros_sensor_msgs::SetUint32
  :super ros::object
  :slots ())

(setf (get ros_sensor_msgs::SetUint32 :md5sum-) "9dbe221d5688a4a9812af0e2d37c83a8")
(setf (get ros_sensor_msgs::SetUint32 :datatype-) "ros_sensor_msgs/SetUint32")
(setf (get ros_sensor_msgs::SetUint32 :request) ros_sensor_msgs::SetUint32Request)
(setf (get ros_sensor_msgs::SetUint32 :response) ros_sensor_msgs::SetUint32Response)

(defmethod ros_sensor_msgs::SetUint32Request
  (:response () (instance ros_sensor_msgs::SetUint32Response :init)))

(setf (get ros_sensor_msgs::SetUint32Request :md5sum-) "9dbe221d5688a4a9812af0e2d37c83a8")
(setf (get ros_sensor_msgs::SetUint32Request :datatype-) "ros_sensor_msgs/SetUint32Request")
(setf (get ros_sensor_msgs::SetUint32Request :definition-)
      "uint32 u32

---
bool success
string message
")

(setf (get ros_sensor_msgs::SetUint32Response :md5sum-) "9dbe221d5688a4a9812af0e2d37c83a8")
(setf (get ros_sensor_msgs::SetUint32Response :datatype-) "ros_sensor_msgs/SetUint32Response")
(setf (get ros_sensor_msgs::SetUint32Response :definition-)
      "uint32 u32

---
bool success
string message
")



(provide :ros_sensor_msgs/SetUint32 "9dbe221d5688a4a9812af0e2d37c83a8")


