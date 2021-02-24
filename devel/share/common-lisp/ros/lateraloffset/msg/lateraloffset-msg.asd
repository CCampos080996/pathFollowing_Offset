
(cl:in-package :asdf)

(defsystem "lateraloffset-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :ros_sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "PathDiagnostics" :depends-on ("_package_PathDiagnostics"))
    (:file "_package_PathDiagnostics" :depends-on ("_package"))
  ))