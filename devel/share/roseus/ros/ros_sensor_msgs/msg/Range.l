;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::Range)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'Range (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::RANGE")
  (make-package "ROS_SENSOR_MSGS::RANGE"))

(in-package "ROS")
;;//! \htmlinclude Range.msg.html


(defclass ros_sensor_msgs::Range
  :super ros::object
  :slots (_end_point_id _range ))

(defmethod ros_sensor_msgs::Range
  (:init
   (&key
    ((:end_point_id __end_point_id) "")
    ((:range __range) 0.0)
    )
   (send-super :init)
   (setq _end_point_id (string __end_point_id))
   (setq _range (float __range))
   self)
  (:end_point_id
   (&optional __end_point_id)
   (if __end_point_id (setq _end_point_id __end_point_id)) _end_point_id)
  (:range
   (&optional __range)
   (if __range (setq _range __range)) _range)
  (:serialization-length
   ()
   (+
    ;; string _end_point_id
    4 (length _end_point_id)
    ;; float64 _range
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _end_point_id
       (write-long (length _end_point_id) s) (princ _end_point_id s)
     ;; float64 _range
       (sys::poke _range (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _end_point_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _end_point_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _range
     (setq _range (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ros_sensor_msgs::Range :md5sum-) "e5ee2cd940f60a30182714cdfd9f49b4")
(setf (get ros_sensor_msgs::Range :datatype-) "ros_sensor_msgs/Range")
(setf (get ros_sensor_msgs::Range :definition-)
      "# Range to specified object
string  end_point_id
float64 range
")



(provide :ros_sensor_msgs/Range "e5ee2cd940f60a30182714cdfd9f49b4")


