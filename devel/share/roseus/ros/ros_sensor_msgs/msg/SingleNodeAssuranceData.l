;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::SingleNodeAssuranceData)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'SingleNodeAssuranceData (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::SINGLENODEASSURANCEDATA")
  (make-package "ROS_SENSOR_MSGS::SINGLENODEASSURANCEDATA"))

(in-package "ROS")
;;//! \htmlinclude SingleNodeAssuranceData.msg.html


(defclass ros_sensor_msgs::SingleNodeAssuranceData
  :super ros::object
  :slots (_pseudoDopplerDiffs _pseudoDopplerDiffAssuranceLevel _carrierToNoiseCheckData _cnoCheckAssuranceLevel ))

(defmethod ros_sensor_msgs::SingleNodeAssuranceData
  (:init
   (&key
    ((:pseudoDopplerDiffs __pseudoDopplerDiffs) (let (r) (dotimes (i 0) (push (instance ros_sensor_msgs::PrnDifference :init) r)) r))
    ((:pseudoDopplerDiffAssuranceLevel __pseudoDopplerDiffAssuranceLevel) (instance ros_sensor_msgs::AssuranceLevel :init))
    ((:carrierToNoiseCheckData __carrierToNoiseCheckData) (let (r) (dotimes (i 0) (push (instance ros_sensor_msgs::PrnDifference :init) r)) r))
    ((:cnoCheckAssuranceLevel __cnoCheckAssuranceLevel) (instance ros_sensor_msgs::AssuranceLevel :init))
    )
   (send-super :init)
   (setq _pseudoDopplerDiffs __pseudoDopplerDiffs)
   (setq _pseudoDopplerDiffAssuranceLevel __pseudoDopplerDiffAssuranceLevel)
   (setq _carrierToNoiseCheckData __carrierToNoiseCheckData)
   (setq _cnoCheckAssuranceLevel __cnoCheckAssuranceLevel)
   self)
  (:pseudoDopplerDiffs
   (&rest __pseudoDopplerDiffs)
   (if (keywordp (car __pseudoDopplerDiffs))
       (send* _pseudoDopplerDiffs __pseudoDopplerDiffs)
     (progn
       (if __pseudoDopplerDiffs (setq _pseudoDopplerDiffs (car __pseudoDopplerDiffs)))
       _pseudoDopplerDiffs)))
  (:pseudoDopplerDiffAssuranceLevel
   (&rest __pseudoDopplerDiffAssuranceLevel)
   (if (keywordp (car __pseudoDopplerDiffAssuranceLevel))
       (send* _pseudoDopplerDiffAssuranceLevel __pseudoDopplerDiffAssuranceLevel)
     (progn
       (if __pseudoDopplerDiffAssuranceLevel (setq _pseudoDopplerDiffAssuranceLevel (car __pseudoDopplerDiffAssuranceLevel)))
       _pseudoDopplerDiffAssuranceLevel)))
  (:carrierToNoiseCheckData
   (&rest __carrierToNoiseCheckData)
   (if (keywordp (car __carrierToNoiseCheckData))
       (send* _carrierToNoiseCheckData __carrierToNoiseCheckData)
     (progn
       (if __carrierToNoiseCheckData (setq _carrierToNoiseCheckData (car __carrierToNoiseCheckData)))
       _carrierToNoiseCheckData)))
  (:cnoCheckAssuranceLevel
   (&rest __cnoCheckAssuranceLevel)
   (if (keywordp (car __cnoCheckAssuranceLevel))
       (send* _cnoCheckAssuranceLevel __cnoCheckAssuranceLevel)
     (progn
       (if __cnoCheckAssuranceLevel (setq _cnoCheckAssuranceLevel (car __cnoCheckAssuranceLevel)))
       _cnoCheckAssuranceLevel)))
  (:serialization-length
   ()
   (+
    ;; ros_sensor_msgs/PrnDifference[] _pseudoDopplerDiffs
    (apply #'+ (send-all _pseudoDopplerDiffs :serialization-length)) 4
    ;; ros_sensor_msgs/AssuranceLevel _pseudoDopplerDiffAssuranceLevel
    (send _pseudoDopplerDiffAssuranceLevel :serialization-length)
    ;; ros_sensor_msgs/PrnDifference[] _carrierToNoiseCheckData
    (apply #'+ (send-all _carrierToNoiseCheckData :serialization-length)) 4
    ;; ros_sensor_msgs/AssuranceLevel _cnoCheckAssuranceLevel
    (send _cnoCheckAssuranceLevel :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ros_sensor_msgs/PrnDifference[] _pseudoDopplerDiffs
     (write-long (length _pseudoDopplerDiffs) s)
     (dolist (elem _pseudoDopplerDiffs)
       (send elem :serialize s)
       )
     ;; ros_sensor_msgs/AssuranceLevel _pseudoDopplerDiffAssuranceLevel
       (send _pseudoDopplerDiffAssuranceLevel :serialize s)
     ;; ros_sensor_msgs/PrnDifference[] _carrierToNoiseCheckData
     (write-long (length _carrierToNoiseCheckData) s)
     (dolist (elem _carrierToNoiseCheckData)
       (send elem :serialize s)
       )
     ;; ros_sensor_msgs/AssuranceLevel _cnoCheckAssuranceLevel
       (send _cnoCheckAssuranceLevel :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ros_sensor_msgs/PrnDifference[] _pseudoDopplerDiffs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pseudoDopplerDiffs (let (r) (dotimes (i n) (push (instance ros_sensor_msgs::PrnDifference :init) r)) r))
     (dolist (elem- _pseudoDopplerDiffs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; ros_sensor_msgs/AssuranceLevel _pseudoDopplerDiffAssuranceLevel
     (send _pseudoDopplerDiffAssuranceLevel :deserialize buf ptr-) (incf ptr- (send _pseudoDopplerDiffAssuranceLevel :serialization-length))
   ;; ros_sensor_msgs/PrnDifference[] _carrierToNoiseCheckData
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _carrierToNoiseCheckData (let (r) (dotimes (i n) (push (instance ros_sensor_msgs::PrnDifference :init) r)) r))
     (dolist (elem- _carrierToNoiseCheckData)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; ros_sensor_msgs/AssuranceLevel _cnoCheckAssuranceLevel
     (send _cnoCheckAssuranceLevel :deserialize buf ptr-) (incf ptr- (send _cnoCheckAssuranceLevel :serialization-length))
   ;;
   self)
  )

(setf (get ros_sensor_msgs::SingleNodeAssuranceData :md5sum-) "4197bc43f12a41cc3da00c30445631eb")
(setf (get ros_sensor_msgs::SingleNodeAssuranceData :datatype-) "ros_sensor_msgs/SingleNodeAssuranceData")
(setf (get ros_sensor_msgs::SingleNodeAssuranceData :definition-)
      "PrnDifference[]  pseudoDopplerDiffs
AssuranceLevel   pseudoDopplerDiffAssuranceLevel
PrnDifference[]  carrierToNoiseCheckData
AssuranceLevel   cnoCheckAssuranceLevel
================================================================================
MSG: ros_sensor_msgs/PrnDifference
uint32   prn
float64  difference
================================================================================
MSG: ros_sensor_msgs/AssuranceLevel
uint8  Normal   = 0
uint8  Unknown  = 1
uint8  Warning  = 2
uint8  Attack   = 3

uint8 level
")



(provide :ros_sensor_msgs/SingleNodeAssuranceData "4197bc43f12a41cc3da00c30445631eb")


