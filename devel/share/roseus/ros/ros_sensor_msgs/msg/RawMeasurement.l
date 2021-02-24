;; Auto-generated. Do not edit!


(when (boundp 'ros_sensor_msgs::RawMeasurement)
  (if (not (find-package "ROS_SENSOR_MSGS"))
    (make-package "ROS_SENSOR_MSGS"))
  (shadow 'RawMeasurement (find-package "ROS_SENSOR_MSGS")))
(unless (find-package "ROS_SENSOR_MSGS::RAWMEASUREMENT")
  (make-package "ROS_SENSOR_MSGS::RAWMEASUREMENT"))

(in-package "ROS")
;;//! \htmlinclude RawMeasurement.msg.html


(defclass ros_sensor_msgs::RawMeasurement
  :super ros::object
  :slots (_prn _pseudorange _pseudorange_variance _frequency _carrier_phase _carrier_phase_variance _doppler _doppler_variance _carrier_to_noise _loss_of_lock ))

(defmethod ros_sensor_msgs::RawMeasurement
  (:init
   (&key
    ((:prn __prn) 0)
    ((:pseudorange __pseudorange) 0.0)
    ((:pseudorange_variance __pseudorange_variance) 0.0)
    ((:frequency __frequency) (instance ros_sensor_msgs::FrequencyType :init))
    ((:carrier_phase __carrier_phase) 0.0)
    ((:carrier_phase_variance __carrier_phase_variance) 0.0)
    ((:doppler __doppler) 0.0)
    ((:doppler_variance __doppler_variance) 0.0)
    ((:carrier_to_noise __carrier_to_noise) 0.0)
    ((:loss_of_lock __loss_of_lock) nil)
    )
   (send-super :init)
   (setq _prn (round __prn))
   (setq _pseudorange (float __pseudorange))
   (setq _pseudorange_variance (float __pseudorange_variance))
   (setq _frequency __frequency)
   (setq _carrier_phase (float __carrier_phase))
   (setq _carrier_phase_variance (float __carrier_phase_variance))
   (setq _doppler (float __doppler))
   (setq _doppler_variance (float __doppler_variance))
   (setq _carrier_to_noise (float __carrier_to_noise))
   (setq _loss_of_lock __loss_of_lock)
   self)
  (:prn
   (&optional __prn)
   (if __prn (setq _prn __prn)) _prn)
  (:pseudorange
   (&optional __pseudorange)
   (if __pseudorange (setq _pseudorange __pseudorange)) _pseudorange)
  (:pseudorange_variance
   (&optional __pseudorange_variance)
   (if __pseudorange_variance (setq _pseudorange_variance __pseudorange_variance)) _pseudorange_variance)
  (:frequency
   (&rest __frequency)
   (if (keywordp (car __frequency))
       (send* _frequency __frequency)
     (progn
       (if __frequency (setq _frequency (car __frequency)))
       _frequency)))
  (:carrier_phase
   (&optional __carrier_phase)
   (if __carrier_phase (setq _carrier_phase __carrier_phase)) _carrier_phase)
  (:carrier_phase_variance
   (&optional __carrier_phase_variance)
   (if __carrier_phase_variance (setq _carrier_phase_variance __carrier_phase_variance)) _carrier_phase_variance)
  (:doppler
   (&optional __doppler)
   (if __doppler (setq _doppler __doppler)) _doppler)
  (:doppler_variance
   (&optional __doppler_variance)
   (if __doppler_variance (setq _doppler_variance __doppler_variance)) _doppler_variance)
  (:carrier_to_noise
   (&optional __carrier_to_noise)
   (if __carrier_to_noise (setq _carrier_to_noise __carrier_to_noise)) _carrier_to_noise)
  (:loss_of_lock
   (&optional __loss_of_lock)
   (if __loss_of_lock (setq _loss_of_lock __loss_of_lock)) _loss_of_lock)
  (:serialization-length
   ()
   (+
    ;; uint16 _prn
    2
    ;; float64 _pseudorange
    8
    ;; float32 _pseudorange_variance
    4
    ;; ros_sensor_msgs/FrequencyType _frequency
    (send _frequency :serialization-length)
    ;; float64 _carrier_phase
    8
    ;; float32 _carrier_phase_variance
    4
    ;; float64 _doppler
    8
    ;; float32 _doppler_variance
    4
    ;; float64 _carrier_to_noise
    8
    ;; bool _loss_of_lock
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _prn
       (write-word _prn s)
     ;; float64 _pseudorange
       (sys::poke _pseudorange (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _pseudorange_variance
       (sys::poke _pseudorange_variance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; ros_sensor_msgs/FrequencyType _frequency
       (send _frequency :serialize s)
     ;; float64 _carrier_phase
       (sys::poke _carrier_phase (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _carrier_phase_variance
       (sys::poke _carrier_phase_variance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float64 _doppler
       (sys::poke _doppler (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _doppler_variance
       (sys::poke _doppler_variance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float64 _carrier_to_noise
       (sys::poke _carrier_to_noise (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _loss_of_lock
       (if _loss_of_lock (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _prn
     (setq _prn (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64 _pseudorange
     (setq _pseudorange (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _pseudorange_variance
     (setq _pseudorange_variance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; ros_sensor_msgs/FrequencyType _frequency
     (send _frequency :deserialize buf ptr-) (incf ptr- (send _frequency :serialization-length))
   ;; float64 _carrier_phase
     (setq _carrier_phase (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _carrier_phase_variance
     (setq _carrier_phase_variance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float64 _doppler
     (setq _doppler (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _doppler_variance
     (setq _doppler_variance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float64 _carrier_to_noise
     (setq _carrier_to_noise (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _loss_of_lock
     (setq _loss_of_lock (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ros_sensor_msgs::RawMeasurement :md5sum-) "beb1d4f15a4abead550e7439d0f65ebb")
(setf (get ros_sensor_msgs::RawMeasurement :datatype-) "ros_sensor_msgs/RawMeasurement")
(setf (get ros_sensor_msgs::RawMeasurement :definition-)
      "## Raw measurements for a single channel

uint16        prn                     # GPS [1-32], GLONASS may be negative
float64       pseudorange             # [m]
float32		  pseudorange_variance	  # [m^2]
FrequencyType frequency               # 
float64       carrier_phase           # [m]
float32		  carrier_phase_variance  # [m^2]
float64       doppler                 # [Hz]
float32       doppler_variance		  # [Hz^2]
float64       carrier_to_noise        # [db-Hz]
bool          loss_of_lock            # True - indicates likely loss of
                                      # carrier lock in previous interval
================================================================================
MSG: ros_sensor_msgs/FrequencyType
## Frequency Type

uint8 FrequencyTypeUnknown      = 0
uint8 FrequencyTypeL1           = 1
uint8 FrequencyTypeL2           = 2
uint8 FrequencyTypeL5           = 3
uint8 FrequencyTypeGalileoE1    = 4
uint8 FrequencyTypeGalileoE5    = 5
uint8 FrequencyTypeGalileoE6    = 6
uint8 FrequencyTypeGalileoC     = 7
uint8 FrequencyTypeGlonassL1F   = 8
uint8 FrequencyTypeGlonassL2F   = 9
uint8 FrequencyTypeGlonassL1C   = 10
uint8 FrequencyTypeGlonassL2C   = 11
uint8 FrequencyTypeGlonassL3C   = 12

uint8 type
")



(provide :ros_sensor_msgs/RawMeasurement "beb1d4f15a4abead550e7439d0f65ebb")


