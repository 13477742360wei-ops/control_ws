
(cl:in-package :asdf)

(defsystem "text_recognition-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "RecognizeText" :depends-on ("_package_RecognizeText"))
    (:file "_package_RecognizeText" :depends-on ("_package"))
  ))