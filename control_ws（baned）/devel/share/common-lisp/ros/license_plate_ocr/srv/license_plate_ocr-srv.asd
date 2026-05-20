
(cl:in-package :asdf)

(defsystem "license_plate_ocr-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "LicensePlateOCR" :depends-on ("_package_LicensePlateOCR"))
    (:file "_package_LicensePlateOCR" :depends-on ("_package"))
  ))