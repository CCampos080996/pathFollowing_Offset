;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::CmdGpsAssistSrv)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'CmdGpsAssistSrv (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::CMDGPSASSISTSRV")
  (make-package "ROS_SENSOR_MSGS::CMDGPSASSISTSRV"))
(unless (find-package "ROS_SENSOR_MSGS::CMDGPSASSISTSRVREQUEST")
  (make-package "ROS_SENSOR_MSGS::CMDGPSASSISTSRVREQUEST"))
(unless (find-package "ROS_SENSOR_MSGS::CMDGPSASSISTSRVRESPONSE")
  (make-package "ROS_SENSOR_MSGS::CMDGPSASSISTSRVRESPONSE"))

(in-package "ROS")





(defclass ros_sensor_msgs::CmdGpsAssistSrvRequest
  :super ros::object
  :slots (_assist ))

(defmethod ros_sensor_msgs::CmdGpsAssistSrvRequest
  (:init
   (&key
    ((:assist __assist) (instance ros_sensor_msgs::CmdGpsAssist :init))
    )
   (send-super :init)
   (setq _assist __assist)
   self)
  (:assist
   (&rest __assist)
   (if (keywordp (car __assist))
       (send* _assist __assist)
     (progn
       (if __assist (setq _assist (car __assist)))
       _assist)))
  (:serialization-length
   ()
   (+
    ;; ros_sensor_msgs/CmdGpsAssist _assist
    (send _assist :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ros_sensor_msgs/CmdGpsAssist _assist
       (send _assist :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ros_sensor_msgs/CmdGpsAssist _assist
     (send _assist :deserialize buf ptr-) (incf ptr- (send _assist :serialization-length))
   ;;
   self)
  )

(defclass ros_sensor_msgs::CmdGpsAssistSrvResponse
  :super ros::object
  :slots (_success ))

(defmethod ros_sensor_msgs::CmdGpsAssistSrvResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass ros_sensor_msgs::CmdGpsAssistSrv
  :super ros::object
  :slots ())

(setf (get ros_sensor_msgs::CmdGpsAssistSrv :md5sum-) "6bdb59dd737011607cc3575b372fe7eb")
(setf (get ros_sensor_msgs::CmdGpsAssistSrv :datatype-) "ros_sensor_msgs/CmdGpsAssistSrv")
(setf (get ros_sensor_msgs::CmdGpsAssistSrv :request) ros_sensor_msgs::CmdGpsAssistSrvRequest)
(setf (get ros_sensor_msgs::CmdGpsAssistSrv :response) ros_sensor_msgs::CmdGpsAssistSrvResponse)

(defmethod ros_sensor_msgs::CmdGpsAssistSrvRequest
  (:response () (instance ros_sensor_msgs::CmdGpsAssistSrvResponse :init)))

(setf (get ros_sensor_msgs::CmdGpsAssistSrvRequest :md5sum-) "6bdb59dd737011607cc3575b372fe7eb")
(setf (get ros_sensor_msgs::CmdGpsAssistSrvRequest :datatype-) "ros_sensor_msgs/CmdGpsAssistSrvRequest")
(setf (get ros_sensor_msgs::CmdGpsAssistSrvRequest :definition-)
      "CmdGpsAssist assist

================================================================================
MSG: ros_sensor_msgs/CmdGpsAssist
bool assist_time
bool assist_position
bool assist_gps_ephemeris
bool assist_gps_almanac
bool assist_gps_utc_iono
---
bool success
")

(setf (get ros_sensor_msgs::CmdGpsAssistSrvResponse :md5sum-) "6bdb59dd737011607cc3575b372fe7eb")
(setf (get ros_sensor_msgs::CmdGpsAssistSrvResponse :datatype-) "ros_sensor_msgs/CmdGpsAssistSrvResponse")
(setf (get ros_sensor_msgs::CmdGpsAssistSrvResponse :definition-)
      "CmdGpsAssist assist

================================================================================
MSG: ros_sensor_msgs/CmdGpsAssist
bool assist_time
bool assist_position
bool assist_gps_ephemeris
bool assist_gps_almanac
bool assist_gps_utc_iono
---
bool success
")



(provide :ros_sensor_msgs/CmdGpsAssistSrv "6bdb59dd737011607cc3575b372fe7eb")


