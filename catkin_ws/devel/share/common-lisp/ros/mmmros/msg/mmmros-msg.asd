
(cl:in-package :asdf)

(defsystem "mmmros-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Movement" :depends-on ("_package_Movement"))
    (:file "_package_Movement" :depends-on ("_package"))
    (:file "SensorData" :depends-on ("_package_SensorData"))
    (:file "_package_SensorData" :depends-on ("_package"))
  ))