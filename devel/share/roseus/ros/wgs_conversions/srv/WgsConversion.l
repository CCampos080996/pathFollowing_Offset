;; Auto-generated. Do not edit!


(when (boundp 'wgs_conversions::WgsConversion)
  (if (not (find-package "WGS_CONVERSIONS"))
    (make-package "WGS_CONVERSIONS"))
  (shadow 'WgsConversion (find-package "WGS_CONVERSIONS")))
(unless (find-package "WGS_CONVERSIONS::WGSCONVERSION")
  (make-package "WGS_CONVERSIONS::WGSCONVERSION"))
(unless (find-package "WGS_CONVERSIONS::WGSCONVERSIONREQUEST")
  (make-package "WGS_CONVERSIONS::WGSCONVERSIONREQUEST"))
(unless (find-package "WGS_CONVERSIONS::WGSCONVERSIONRESPONSE")
  (make-package "WGS_CONVERSIONS::WGSCONVERSIONRESPONSE"))

(in-package "ROS")





(defclass wgs_conversions::WgsConversionRequest
  :super ros::object
  :slots (_lla _xyz _enu _xyz_cov _enu_cov _ref_lla ))

(defmethod wgs_conversions::WgsConversionRequest
  (:init
   (&key
    ((:lla __lla) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:xyz __xyz) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:enu __enu) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:xyz_cov __xyz_cov) (make-array 9 :initial-element 0.0 :element-type :float))
    ((:enu_cov __enu_cov) (make-array 9 :initial-element 0.0 :element-type :float))
    ((:ref_lla __ref_lla) (make-array 3 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _lla __lla)
   (setq _xyz __xyz)
   (setq _enu __enu)
   (setq _xyz_cov __xyz_cov)
   (setq _enu_cov __enu_cov)
   (setq _ref_lla __ref_lla)
   self)
  (:lla
   (&optional __lla)
   (if __lla (setq _lla __lla)) _lla)
  (:xyz
   (&optional __xyz)
   (if __xyz (setq _xyz __xyz)) _xyz)
  (:enu
   (&optional __enu)
   (if __enu (setq _enu __enu)) _enu)
  (:xyz_cov
   (&optional __xyz_cov)
   (if __xyz_cov (setq _xyz_cov __xyz_cov)) _xyz_cov)
  (:enu_cov
   (&optional __enu_cov)
   (if __enu_cov (setq _enu_cov __enu_cov)) _enu_cov)
  (:ref_lla
   (&optional __ref_lla)
   (if __ref_lla (setq _ref_lla __ref_lla)) _ref_lla)
  (:serialization-length
   ()
   (+
    ;; float64[3] _lla
    (* 8    3)
    ;; float64[3] _xyz
    (* 8    3)
    ;; float64[3] _enu
    (* 8    3)
    ;; float64[9] _xyz_cov
    (* 8    9)
    ;; float64[9] _enu_cov
    (* 8    9)
    ;; float64[3] _ref_lla
    (* 8    3)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[3] _lla
     (dotimes (i 3)
       (sys::poke (elt _lla i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[3] _xyz
     (dotimes (i 3)
       (sys::poke (elt _xyz i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[3] _enu
     (dotimes (i 3)
       (sys::poke (elt _enu i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[9] _xyz_cov
     (dotimes (i 9)
       (sys::poke (elt _xyz_cov i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[9] _enu_cov
     (dotimes (i 9)
       (sys::poke (elt _enu_cov i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[3] _ref_lla
     (dotimes (i 3)
       (sys::poke (elt _ref_lla i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[3] _lla
   (dotimes (i (length _lla))
     (setf (elt _lla i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[3] _xyz
   (dotimes (i (length _xyz))
     (setf (elt _xyz i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[3] _enu
   (dotimes (i (length _enu))
     (setf (elt _enu i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[9] _xyz_cov
   (dotimes (i (length _xyz_cov))
     (setf (elt _xyz_cov i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[9] _enu_cov
   (dotimes (i (length _enu_cov))
     (setf (elt _enu_cov i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[3] _ref_lla
   (dotimes (i (length _ref_lla))
     (setf (elt _ref_lla i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(defclass wgs_conversions::WgsConversionResponse
  :super ros::object
  :slots (_lla _xyz _enu _xyz_cov _enu_cov ))

(defmethod wgs_conversions::WgsConversionResponse
  (:init
   (&key
    ((:lla __lla) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:xyz __xyz) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:enu __enu) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:xyz_cov __xyz_cov) (make-array 9 :initial-element 0.0 :element-type :float))
    ((:enu_cov __enu_cov) (make-array 9 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _lla __lla)
   (setq _xyz __xyz)
   (setq _enu __enu)
   (setq _xyz_cov __xyz_cov)
   (setq _enu_cov __enu_cov)
   self)
  (:lla
   (&optional __lla)
   (if __lla (setq _lla __lla)) _lla)
  (:xyz
   (&optional __xyz)
   (if __xyz (setq _xyz __xyz)) _xyz)
  (:enu
   (&optional __enu)
   (if __enu (setq _enu __enu)) _enu)
  (:xyz_cov
   (&optional __xyz_cov)
   (if __xyz_cov (setq _xyz_cov __xyz_cov)) _xyz_cov)
  (:enu_cov
   (&optional __enu_cov)
   (if __enu_cov (setq _enu_cov __enu_cov)) _enu_cov)
  (:serialization-length
   ()
   (+
    ;; float64[3] _lla
    (* 8    3)
    ;; float64[3] _xyz
    (* 8    3)
    ;; float64[3] _enu
    (* 8    3)
    ;; float64[9] _xyz_cov
    (* 8    9)
    ;; float64[9] _enu_cov
    (* 8    9)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[3] _lla
     (dotimes (i 3)
       (sys::poke (elt _lla i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[3] _xyz
     (dotimes (i 3)
       (sys::poke (elt _xyz i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[3] _enu
     (dotimes (i 3)
       (sys::poke (elt _enu i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[9] _xyz_cov
     (dotimes (i 9)
       (sys::poke (elt _xyz_cov i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[9] _enu_cov
     (dotimes (i 9)
       (sys::poke (elt _enu_cov i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[3] _lla
   (dotimes (i (length _lla))
     (setf (elt _lla i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[3] _xyz
   (dotimes (i (length _xyz))
     (setf (elt _xyz i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[3] _enu
   (dotimes (i (length _enu))
     (setf (elt _enu i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[9] _xyz_cov
   (dotimes (i (length _xyz_cov))
     (setf (elt _xyz_cov i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[9] _enu_cov
   (dotimes (i (length _enu_cov))
     (setf (elt _enu_cov i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(defclass wgs_conversions::WgsConversion
  :super ros::object
  :slots ())

(setf (get wgs_conversions::WgsConversion :md5sum-) "ea85c4235117ae109ef1fb9d826c2e78")
(setf (get wgs_conversions::WgsConversion :datatype-) "wgs_conversions/WgsConversion")
(setf (get wgs_conversions::WgsConversion :request) wgs_conversions::WgsConversionRequest)
(setf (get wgs_conversions::WgsConversion :response) wgs_conversions::WgsConversionResponse)

(defmethod wgs_conversions::WgsConversionRequest
  (:response () (instance wgs_conversions::WgsConversionResponse :init)))

(setf (get wgs_conversions::WgsConversionRequest :md5sum-) "ea85c4235117ae109ef1fb9d826c2e78")
(setf (get wgs_conversions::WgsConversionRequest :datatype-) "wgs_conversions/WgsConversionRequest")
(setf (get wgs_conversions::WgsConversionRequest :definition-)
      "float64[3] lla
float64[3] xyz
float64[3] enu
float64[9] xyz_cov
float64[9] enu_cov
float64[3] ref_lla
---
float64[3] lla
float64[3] xyz
float64[3] enu
float64[9] xyz_cov
float64[9] enu_cov
")

(setf (get wgs_conversions::WgsConversionResponse :md5sum-) "ea85c4235117ae109ef1fb9d826c2e78")
(setf (get wgs_conversions::WgsConversionResponse :datatype-) "wgs_conversions/WgsConversionResponse")
(setf (get wgs_conversions::WgsConversionResponse :definition-)
      "float64[3] lla
float64[3] xyz
float64[3] enu
float64[9] xyz_cov
float64[9] enu_cov
float64[3] ref_lla
---
float64[3] lla
float64[3] xyz
float64[3] enu
float64[9] xyz_cov
float64[9] enu_cov
")



(provide :wgs_conversions/WgsConversion "ea85c4235117ae109ef1fb9d826c2e78")


