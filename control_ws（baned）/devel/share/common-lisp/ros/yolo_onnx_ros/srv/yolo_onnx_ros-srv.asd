
(cl:in-package :asdf)

(defsystem "yolo_onnx_ros-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "ObjectDetection" :depends-on ("_package_ObjectDetection"))
    (:file "_package_ObjectDetection" :depends-on ("_package"))
  ))