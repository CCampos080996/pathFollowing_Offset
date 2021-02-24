
(cl:in-package :asdf)

(defsystem "drtk-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :ros_sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "DrtkDiagnostics" :depends-on ("_package_DrtkDiagnostics"))
    (:file "_package_DrtkDiagnostics" :depends-on ("_package"))
    (:file "DrtkOutput" :depends-on ("_package_DrtkOutput"))
    (:file "_package_DrtkOutput" :depends-on ("_package"))
    (:file "DrtkOutputState" :depends-on ("_package_DrtkOutputState"))
    (:file "_package_DrtkOutputState" :depends-on ("_package"))
  ))