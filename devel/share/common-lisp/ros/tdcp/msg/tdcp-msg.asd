
(cl:in-package :asdf)

(defsystem "tdcp-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :ros_sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "TdcpDiagnostics" :depends-on ("_package_TdcpDiagnostics"))
    (:file "_package_TdcpDiagnostics" :depends-on ("_package"))
    (:file "TdcpOutput" :depends-on ("_package_TdcpOutput"))
    (:file "_package_TdcpOutput" :depends-on ("_package"))
  ))