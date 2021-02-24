;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::AtmosphericCorrection)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'AtmosphericCorrection (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::ATMOSPHERICCORRECTION")
  (make-package "ROS_SENSOR_MSGS::ATMOSPHERICCORRECTION"))

(in-package "ROS")
;;//! \htmlinclude AtmosphericCorrection.msg.html


(defclass ros_sensor_msgs::AtmosphericCorrection
  :super ros::object
  :slots (_prn _ionosphereCorrectionL1 _ionosphereCorrectionL2 _troposphereCorrection ))

(defmethod ros_sensor_msgs::AtmosphericCorrection
  (:init
   (&key
    ((:prn __prn) 0)
    ((:ionosphereCorrectionL1 __ionosphereCorrectionL1) 0.0)
    ((:ionosphereCorrectionL2 __ionosphereCorrectionL2) 0.0)
    ((:troposphereCorrection __troposphereCorrection) 0.0)
    )
   (send-super :init)
   (setq _prn (round __prn))
   (setq _ionosphereCorrectionL1 (float __ionosphereCorrectionL1))
   (setq _ionosphereCorrectionL2 (float __ionosphereCorrectionL2))
   (setq _troposphereCorrection (float __troposphereCorrection))
   self)
  (:prn
   (&optional __prn)
   (if __prn (setq _prn __prn)) _prn)
  (:ionosphereCorrectionL1
   (&optional __ionosphereCorrectionL1)
   (if __ionosphereCorrectionL1 (setq _ionosphereCorrectionL1 __ionosphereCorrectionL1)) _ionosphereCorrectionL1)
  (:ionosphereCorrectionL2
   (&optional __ionosphereCorrectionL2)
   (if __ionosphereCorrectionL2 (setq _ionosphereCorrectionL2 __ionosphereCorrectionL2)) _ionosphereCorrectionL2)
  (:troposphereCorrection
   (&optional __troposphereCorrection)
   (if __troposphereCorrection (setq _troposphereCorrection __troposphereCorrection)) _troposphereCorrection)
  (:serialization-length
   ()
   (+
    ;; uint16 _prn
    2
    ;; float64 _ionosphereCorrectionL1
    8
    ;; float64 _ionosphereCorrectionL2
    8
    ;; float64 _troposphereCorrection
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _prn
       (write-word _prn s)
     ;; float64 _ionosphereCorrectionL1
       (sys::poke _ionosphereCorrectionL1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ionosphereCorrectionL2
       (sys::poke _ionosphereCorrectionL2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _troposphereCorrection
       (sys::poke _troposphereCorrection (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _prn
     (setq _prn (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64 _ionosphereCorrectionL1
     (setq _ionosphereCorrectionL1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ionosphereCorrectionL2
     (setq _ionosphereCorrectionL2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _troposphereCorrection
     (setq _troposphereCorrection (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ros_sensor_msgs::AtmosphericCorrection :md5sum-) "92e3c73c19da61c0e7d80415c20426e9")
(setf (get ros_sensor_msgs::AtmosphericCorrection :datatype-) "ros_sensor_msgs/AtmosphericCorrection")
(setf (get ros_sensor_msgs::AtmosphericCorrection :definition-)
      "## The GPS atmospheric correction 

uint16  prn                    # GPS [1-32], GLONASS may be negative
float64 ionosphereCorrectionL1 # Pseudorange ionosphere correction (carrier correction has opposite sign) [m]
float64 ionosphereCorrectionL2 # Pseudorange ionosphere correction (carrier correction has opposite sign) [m]
float64 troposphereCorrection  # Troposphere correction [m]
")



(provide :ros_sensor_msgs/AtmosphericCorrection "92e3c73c19da61c0e7d80415c20426e9")


