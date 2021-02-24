
(cl:in-package :asdf)

(defsystem "wgs_conversions-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "WgsConversion" :depends-on ("_package_WgsConversion"))
    (:file "_package_WgsConversion" :depends-on ("_package"))
  ))