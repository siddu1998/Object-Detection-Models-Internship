
(cl:in-package :asdf)

(defsystem "depth_nav_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Point32List" :depends-on ("_package_Point32List"))
    (:file "_package_Point32List" :depends-on ("_package"))
  ))