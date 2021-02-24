;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::SetFloat64)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'SetFloat64 (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::SETFLOAT64")
  (make-package "ROS_SENSOR_MSGS::SETFLOAT64"))
(unless (find-package "ROS_SENSOR_MSGS::SETFLOAT64REQUEST")
  (make-package "ROS_SENSOR_MSGS::SETFLOAT64REQUEST"))
(unless (find-package "ROS_SENSOR_MSGS::SETFLOAT64RESPONSE")
  (make-package "ROS_SENSOR_MSGS::SETFLOAT64RESPONSE"))

(in-package "ROS")





(defclass ros_sensor_msgs::SetFloat64Request
  :super ros::object
  :slots (_f64 ))

(defmethod ros_sensor_msgs::SetFloat64Request
  (:init
   (&key
    ((:f64 __f64) 0.0)
    )
   (send-super :init)
   (setq _f64 (float __f64))
   self)
  (:f64
   (&optional __f64)
   (if __f64 (setq _f64 __f64)) _f64)
  (:serialization-length
   ()
   (+
    ;; float64 _f64
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _f64
       (sys::poke _f64 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _f64
     (setq _f64 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass ros_sensor_msgs::SetFloat64Response
  :super ros::object
  :slots (_success _message ))

(defmethod ros_sensor_msgs::SetFloat64Response
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

(defclass ros_sensor_msgs::SetFloat64
  :super ros::object
  :slots ())

(setf (get ros_sensor_msgs::SetFloat64 :md5sum-) "998706f213761460dbdc37d3d50cd39b")
(setf (get ros_sensor_msgs::SetFloat64 :datatype-) "ros_sensor_msgs/SetFloat64")
(setf (get ros_sensor_msgs::SetFloat64 :request) ros_sensor_msgs::SetFloat64Request)
(setf (get ros_sensor_msgs::SetFloat64 :response) ros_sensor_msgs::SetFloat64Response)

(defmethod ros_sensor_msgs::SetFloat64Request
  (:response () (instance ros_sensor_msgs::SetFloat64Response :init)))

(setf (get ros_sensor_msgs::SetFloat64Request :md5sum-) "998706f213761460dbdc37d3d50cd39b")
(setf (get ros_sensor_msgs::SetFloat64Request :datatype-) "ros_sensor_msgs/SetFloat64Request")
(setf (get ros_sensor_msgs::SetFloat64Request :definition-)
      "float64 f64

---
bool success
string message
")

(setf (get ros_sensor_msgs::SetFloat64Response :md5sum-) "998706f213761460dbdc37d3d50cd39b")
(setf (get ros_sensor_msgs::SetFloat64Response :datatype-) "ros_sensor_msgs/SetFloat64Response")
(setf (get ros_sensor_msgs::SetFloat64Response :definition-)
      "float64 f64

---
bool success
string message
")



(provide :ros_sensor_msgs/SetFloat64 "998706f213761460dbdc37d3d50cd39b")


