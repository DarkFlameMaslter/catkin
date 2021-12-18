
(cl:in-package :asdf)

(defsystem "sensors-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "sensors_flag" :depends-on ("_package_sensors_flag"))
    (:file "_package_sensors_flag" :depends-on ("_package"))
  ))