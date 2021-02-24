;; Auto-generated. Do not edit!


(when (boundp 'drtk::DrtkOutputState)
  (if (not (find-package "DRTK"))
    (make-package "DRTK"))
  (shadow 'DrtkOutputState (find-package "DRTK")))
(unless (find-package "DRTK::DRTKOUTPUTSTATE")
  (make-package "DRTK::DRTKOUTPUTSTATE"))

(in-package "ROS")
;;//! \htmlinclude DrtkOutputState.msg.html


(intern "*UNKNOWN*" (find-package "DRTK::DRTKOUTPUTSTATE"))
(shadow '*UNKNOWN* (find-package "DRTK::DRTKOUTPUTSTATE"))
(defconstant drtk::DrtkOutputState::*UNKNOWN* 0)
(intern "*POSITIONDIFFERENCESOLUTION*" (find-package "DRTK::DRTKOUTPUTSTATE"))
(shadow '*POSITIONDIFFERENCESOLUTION* (find-package "DRTK::DRTKOUTPUTSTATE"))
(defconstant drtk::DrtkOutputState::*POSITIONDIFFERENCESOLUTION* 1)
(intern "*PSEUDORANGEONLYSOLUTION*" (find-package "DRTK::DRTKOUTPUTSTATE"))
(shadow '*PSEUDORANGEONLYSOLUTION* (find-package "DRTK::DRTKOUTPUTSTATE"))
(defconstant drtk::DrtkOutputState::*PSEUDORANGEONLYSOLUTION* 2)
(intern "*LOWPRECISIONSOLUTION*" (find-package "DRTK::DRTKOUTPUTSTATE"))
(shadow '*LOWPRECISIONSOLUTION* (find-package "DRTK::DRTKOUTPUTSTATE"))
(defconstant drtk::DrtkOutputState::*LOWPRECISIONSOLUTION* 3)
(intern "*HIGHPRECISIONSOLUTION*" (find-package "DRTK::DRTKOUTPUTSTATE"))
(shadow '*HIGHPRECISIONSOLUTION* (find-package "DRTK::DRTKOUTPUTSTATE"))
(defconstant drtk::DrtkOutputState::*HIGHPRECISIONSOLUTION* 4)
(defclass drtk::DrtkOutputState
  :super ros::object
  :slots (_state ))

(defmethod drtk::DrtkOutputState
  (:init
   (&key
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _state (round __state))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; uint8 _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _state
       (write-byte _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get drtk::DrtkOutputState :md5sum-) "67e2d094bf94231fdd9d2866239c68fd")
(setf (get drtk::DrtkOutputState :datatype-) "drtk/DrtkOutputState")
(setf (get drtk::DrtkOutputState :definition-)
      "# DrtkOutputState

uint8 Unknown = 0
uint8 PositionDifferenceSolution = 1
uint8 PseudorangeOnlySolution = 2
uint8 LowPrecisionSolution = 3
uint8 HighPrecisionSolution = 4 

uint8 state
")



(provide :drtk/DrtkOutputState "67e2d094bf94231fdd9d2866239c68fd")


