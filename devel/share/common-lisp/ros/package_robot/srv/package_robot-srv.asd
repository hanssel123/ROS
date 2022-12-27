
(cl:in-package :asdf)

(defsystem "package_robot-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SumTwoInts" :depends-on ("_package_SumTwoInts"))
    (:file "_package_SumTwoInts" :depends-on ("_package"))
  ))