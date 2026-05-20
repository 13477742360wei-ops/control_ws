;; Auto-generated. Do not edit!


(when (boundp 'license_plate_ocr::LicensePlateOCR)
  (if (not (find-package "LICENSE_PLATE_OCR"))
    (make-package "LICENSE_PLATE_OCR"))
  (shadow 'LicensePlateOCR (find-package "LICENSE_PLATE_OCR")))
(unless (find-package "LICENSE_PLATE_OCR::LICENSEPLATEOCR")
  (make-package "LICENSE_PLATE_OCR::LICENSEPLATEOCR"))
(unless (find-package "LICENSE_PLATE_OCR::LICENSEPLATEOCRREQUEST")
  (make-package "LICENSE_PLATE_OCR::LICENSEPLATEOCRREQUEST"))
(unless (find-package "LICENSE_PLATE_OCR::LICENSEPLATEOCRRESPONSE")
  (make-package "LICENSE_PLATE_OCR::LICENSEPLATEOCRRESPONSE"))

(in-package "ROS")

(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))




(defclass license_plate_ocr::LicensePlateOCRRequest
  :super ros::object
  :slots (_image ))

(defmethod license_plate_ocr::LicensePlateOCRRequest
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

(defclass license_plate_ocr::LicensePlateOCRResponse
  :super ros::object
  :slots (_plate_texts _confidences _status_message ))

(defmethod license_plate_ocr::LicensePlateOCRResponse
  (:init
   (&key
    ((:plate_texts __plate_texts) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:confidences __confidences) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:status_message __status_message) "")
    )
   (send-super :init)
   (setq _plate_texts __plate_texts)
   (setq _confidences __confidences)
   (setq _status_message (string __status_message))
   self)
  (:plate_texts
   (&optional __plate_texts)
   (if __plate_texts (setq _plate_texts __plate_texts)) _plate_texts)
  (:confidences
   (&optional __confidences)
   (if __confidences (setq _confidences __confidences)) _confidences)
  (:status_message
   (&optional __status_message)
   (if __status_message (setq _status_message __status_message)) _status_message)
  (:serialization-length
   ()
   (+
    ;; string[] _plate_texts
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _plate_texts)) 4
    ;; float32[] _confidences
    (* 4    (length _confidences)) 4
    ;; string _status_message
    4 (length _status_message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _plate_texts
     (write-long (length _plate_texts) s)
     (dolist (elem _plate_texts)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float32[] _confidences
     (write-long (length _confidences) s)
     (dotimes (i (length _confidences))
       (sys::poke (elt _confidences i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; string _status_message
       (write-long (length _status_message) s) (princ _status_message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _plate_texts
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _plate_texts (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _plate_texts i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float32[] _confidences
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _confidences (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _confidences i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; string _status_message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status_message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass license_plate_ocr::LicensePlateOCR
  :super ros::object
  :slots ())

(setf (get license_plate_ocr::LicensePlateOCR :md5sum-) "bc0aa725c8a3f5abac8f917be5e39777")
(setf (get license_plate_ocr::LicensePlateOCR :datatype-) "license_plate_ocr/LicensePlateOCR")
(setf (get license_plate_ocr::LicensePlateOCR :request) license_plate_ocr::LicensePlateOCRRequest)
(setf (get license_plate_ocr::LicensePlateOCR :response) license_plate_ocr::LicensePlateOCRResponse)

(defmethod license_plate_ocr::LicensePlateOCRRequest
  (:response () (instance license_plate_ocr::LicensePlateOCRResponse :init)))

(setf (get license_plate_ocr::LicensePlateOCRRequest :md5sum-) "bc0aa725c8a3f5abac8f917be5e39777")
(setf (get license_plate_ocr::LicensePlateOCRRequest :datatype-) "license_plate_ocr/LicensePlateOCRRequest")
(setf (get license_plate_ocr::LicensePlateOCRRequest :definition-)
      "# 请求：输入图片
sensor_msgs/Image image


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
# 响应：返回识别结果
string[] plate_texts
float32[] confidences
string status_message
")

(setf (get license_plate_ocr::LicensePlateOCRResponse :md5sum-) "bc0aa725c8a3f5abac8f917be5e39777")
(setf (get license_plate_ocr::LicensePlateOCRResponse :datatype-) "license_plate_ocr/LicensePlateOCRResponse")
(setf (get license_plate_ocr::LicensePlateOCRResponse :definition-)
      "# 请求：输入图片
sensor_msgs/Image image


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
# 响应：返回识别结果
string[] plate_texts
float32[] confidences
string status_message
")



(provide :license_plate_ocr/LicensePlateOCR "bc0aa725c8a3f5abac8f917be5e39777")


