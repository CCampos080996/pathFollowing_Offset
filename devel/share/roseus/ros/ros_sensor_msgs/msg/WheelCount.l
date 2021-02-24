;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::WheelCount)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'WheelCount (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::WHEELCOUNT")
  (make-package "ROS_SENSOR_MSGS::WHEELCOUNT"))

(in-package "ROS")
;;//! \htmlinclude WheelCount.msg.html


(defclass ros_sensor_msgs::WheelCount
  :super ros::object
  :slots (_wheel_count _dir_forward _wheel_name ))

(defmethod ros_sensor_msgs::WheelCount
  (:init
   (&key
    ((:wheel_count __wheel_count) 0)
    ((:dir_forward __dir_forward) nil)
    ((:wheel_name __wheel_name) "")
    )
   (send-super :init)
   (setq _wheel_count (round __wheel_count))
   (setq _dir_forward __dir_forward)
   (setq _wheel_name (string __wheel_name))
   self)
  (:wheel_count
   (&optional __wheel_count)
   (if __wheel_count (setq _wheel_count __wheel_count)) _wheel_count)
  (:dir_forward
   (&optional __dir_forward)
   (if __dir_forward (setq _dir_forward __dir_forward)) _dir_forward)
  (:wheel_name
   (&optional __wheel_name)
   (if __wheel_name (setq _wheel_name __wheel_name)) _wheel_name)
  (:serialization-length
   ()
   (+
    ;; uint32 _wheel_count
    4
    ;; bool _dir_forward
    1
    ;; string _wheel_name
    4 (length _wheel_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _wheel_count
       (write-long _wheel_count s)
     ;; bool _dir_forward
       (if _dir_forward (write-byte -1 s) (write-byte 0 s))
     ;; string _wheel_name
       (write-long (length _wheel_name) s) (princ _wheel_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _wheel_count
     (setq _wheel_count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _dir_forward
     (setq _dir_forward (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _wheel_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _wheel_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get ros_sensor_msgs::WheelCount :md5sum-) "646b4e36307f301fd26a03a7399d37d4")
(setf (get ros_sensor_msgs::WheelCount :datatype-) "ros_sensor_msgs/WheelCount")
(setf (get ros_sensor_msgs::WheelCount :definition-)
      "uint32  wheel_count   # [counts]
bool    dir_forward   # true if moving forward
string  wheel_name
")



(provide :ros_sensor_msgs/WheelCount "646b4e36307f301fd26a03a7399d37d4")


