
(cl:in-package :asdf)

(defsystem "ros_sensor_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :ros_sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "CmdGpsAssistSrv" :depends-on ("_package_CmdGpsAssistSrv"))
    (:file "_package_CmdGpsAssistSrv" :depends-on ("_package"))
    (:file "GpsAssistSrv" :depends-on ("_package_GpsAssistSrv"))
    (:file "_package_GpsAssistSrv" :depends-on ("_package"))
    (:file "RcvrZeroize" :depends-on ("_package_RcvrZeroize"))
    (:file "_package_RcvrZeroize" :depends-on ("_package"))
    (:file "SetFloat64" :depends-on ("_package_SetFloat64"))
    (:file "_package_SetFloat64" :depends-on ("_package"))
    (:file "SetInt32" :depends-on ("_package_SetInt32"))
    (:file "_package_SetInt32" :depends-on ("_package"))
    (:file "SetUint32" :depends-on ("_package_SetUint32"))
    (:file "_package_SetUint32" :depends-on ("_package"))
  ))