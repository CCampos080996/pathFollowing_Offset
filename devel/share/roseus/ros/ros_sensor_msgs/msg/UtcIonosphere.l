;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::UtcIonosphere)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'UtcIonosphere (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::UTCIONOSPHERE")
  (make-package "ROS_SENSOR_MSGS::UTCIONOSPHERE"))

(in-package "ROS")
;;//! \htmlinclude UtcIonosphere.msg.html


(defclass ros_sensor_msgs::UtcIonosphere
  :super ros::object
  :slots (_subframe ))

(defmethod ros_sensor_msgs::UtcIonosphere
  (:init
   (&key
    ((:subframe __subframe) (make-array 30 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _subframe __subframe)
   self)
  (:subframe
   (&optional __subframe)
   (if __subframe (setq _subframe __subframe)) _subframe)
  (:serialization-length
   ()
   (+
    ;; uint8[30] _subframe
    (* 1    30)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[30] _subframe
     (princ _subframe s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[30] _subframe
   (setq _subframe (make-array 30 :element-type :char))
   (replace _subframe buf :start2 ptr-) (incf ptr- 30)
   ;;
   self)
  )

(setf (get ros_sensor_msgs::UtcIonosphere :md5sum-) "c92739dcbce54dec72a584c1ec4e54c7")
(setf (get ros_sensor_msgs::UtcIonosphere :datatype-) "ros_sensor_msgs/UtcIonosphere")
(setf (get ros_sensor_msgs::UtcIonosphere :definition-)
      "## Subframe of UTC and Ionospheric Parameters

uint8[30]   subframe




")



(provide :ros_sensor_msgs/UtcIonosphere "c92739dcbce54dec72a584c1ec4e54c7")


