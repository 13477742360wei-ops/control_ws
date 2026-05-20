;; Auto-generated. Do not edit!


(when (boundp 'yolo_onnx_ros::ObjectDetection)
  (if (not (find-package "YOLO_ONNX_ROS"))
    (make-package "YOLO_ONNX_ROS"))
  (shadow 'ObjectDetection (find-package "YOLO_ONNX_ROS")))
(unless (find-package "YOLO_ONNX_ROS::OBJECTDETECTION")
  (make-package "YOLO_ONNX_ROS::OBJECTDETECTION"))
(unless (find-package "YOLO_ONNX_ROS::OBJECTDETECTIONREQUEST")
  (make-package "YOLO_ONNX_ROS::OBJECTDETECTIONREQUEST"))
(unless (find-package "YOLO_ONNX_ROS::OBJECTDETECTIONRESPONSE")
  (make-package "YOLO_ONNX_ROS::OBJECTDETECTIONRESPONSE"))

(in-package "ROS")

(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))




(defclass yolo_onnx_ros::ObjectDetectionRequest
  :super ros::object
  :slots (_image ))

(defmethod yolo_onnx_ros::ObjectDetectionRequest
  (:init
   (&key
    ((:image __image) (instance sensor_msgs::Image :init))
    )
   (send-super :init)
   (setq _image __image)
   self)
  (:image
   (&rest __image)
   (if (keywordp (car __image))
       (send* _image __image)
     (progn
       (if __image (setq _image (car __image)))
       _image)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/Image _image
    (send _image :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/Image _image
       (send _image :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/Image _image
     (send _image :deserialize buf ptr-) (incf ptr- (send _image :serialization-length))
   ;;
   self)
  )

(defclass yolo_onnx_ros::ObjectDetectionResponse
  :super ros::object
  :slots (_success _message _detected_classes _confidences _bboxes _class_names _class_counts ))

(defmethod yolo_onnx_ros::ObjectDetectionResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    ((:detected_classes __detected_classes) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:confidences __confidences) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:bboxes __bboxes) (make-array 0 :initial-element 0 :element-type :integer))
    ((:class_names __class_names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:class_counts __class_counts) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   (setq _detected_classes __detected_classes)
   (setq _confidences __confidences)
   (setq _bboxes __bboxes)
   (setq _class_names __class_names)
   (setq _class_counts __class_counts)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:detected_classes
   (&optional __detected_classes)
   (if __detected_classes (setq _detected_classes __detected_classes)) _detected_classes)
  (:confidences
   (&optional __confidences)
   (if __confidences (setq _confidences __confidences)) _confidences)
  (:bboxes
   (&optional __bboxes)
   (if __bboxes (setq _bboxes __bboxes)) _bboxes)
  (:class_names
   (&optional __class_names)
   (if __class_names (setq _class_names __class_names)) _class_names)
  (:class_counts
   (&optional __class_counts)
   (if __class_counts (setq _class_counts __class_counts)) _class_counts)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ;; string[] _detected_classes
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _detected_classes)) 4
    ;; float32[] _confidences
    (* 4    (length _confidences)) 4
    ;; int32[] _bboxes
    (* 4    (length _bboxes)) 4
    ;; string[] _class_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _class_names)) 4
    ;; int32[] _class_counts
    (* 4    (length _class_counts)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;; string[] _detected_classes
     (write-long (length _detected_classes) s)
     (dolist (elem _detected_classes)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float32[] _confidences
     (write-long (length _confidences) s)
     (dotimes (i (length _confidences))
       (sys::poke (elt _confidences i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; int32[] _bboxes
     (write-long (length _bboxes) s)
     (dotimes (i (length _bboxes))
       (write-long (elt _bboxes i) s)
       )
     ;; string[] _class_names
     (write-long (length _class_names) s)
     (dolist (elem _class_names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; int32[] _class_counts
     (write-long (length _class_counts) s)
     (dotimes (i (length _class_counts))
       (write-long (elt _class_counts i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _detected_classes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _detected_classes (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _detected_classes i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float32[] _confidences
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _confidences (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _confidences i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; int32[] _bboxes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _bboxes (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _bboxes i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; string[] _class_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _class_names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _class_names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; int32[] _class_counts
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _class_counts (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _class_counts i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass yolo_onnx_ros::ObjectDetection
  :super ros::object
  :slots ())

(setf (get yolo_onnx_ros::ObjectDetection :md5sum-) "72cb1f993fa530515d2ffbaf79b1be27")
(setf (get yolo_onnx_ros::ObjectDetection :datatype-) "yolo_onnx_ros/ObjectDetection")
(setf (get yolo_onnx_ros::ObjectDetection :request) yolo_onnx_ros::ObjectDetectionRequest)
(setf (get yolo_onnx_ros::ObjectDetection :response) yolo_onnx_ros::ObjectDetectionResponse)

(defmethod yolo_onnx_ros::ObjectDetectionRequest
  (:response () (instance yolo_onnx_ros::ObjectDetectionResponse :init)))

(setf (get yolo_onnx_ros::ObjectDetectionRequest :md5sum-) "72cb1f993fa530515d2ffbaf79b1be27")
(setf (get yolo_onnx_ros::ObjectDetectionRequest :datatype-) "yolo_onnx_ros/ObjectDetectionRequest")
(setf (get yolo_onnx_ros::ObjectDetectionRequest :definition-)
      "sensor_msgs/Image image

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
---
bool success
string message
string[] detected_classes
float32[] confidences
int32[] bboxes
string[] class_names
int32[] class_counts
")

(setf (get yolo_onnx_ros::ObjectDetectionResponse :md5sum-) "72cb1f993fa530515d2ffbaf79b1be27")
(setf (get yolo_onnx_ros::ObjectDetectionResponse :datatype-) "yolo_onnx_ros/ObjectDetectionResponse")
(setf (get yolo_onnx_ros::ObjectDetectionResponse :definition-)
      "sensor_msgs/Image image

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
---
bool success
string message
string[] detected_classes
float32[] confidences
int32[] bboxes
string[] class_names
int32[] class_counts
")



(provide :yolo_onnx_ros/ObjectDetection "72cb1f993fa530515d2ffbaf79b1be27")


