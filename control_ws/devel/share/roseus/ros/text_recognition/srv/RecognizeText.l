;; Auto-generated. Do not edit!


(when (boundp 'text_recognition::RecognizeText)
  (if (not (find-package "TEXT_RECOGNITION"))
    (make-package "TEXT_RECOGNITION"))
  (shadow 'RecognizeText (find-package "TEXT_RECOGNITION")))
(unless (find-package "TEXT_RECOGNITION::RECOGNIZETEXT")
  (make-package "TEXT_RECOGNITION::RECOGNIZETEXT"))
(unless (find-package "TEXT_RECOGNITION::RECOGNIZETEXTREQUEST")
  (make-package "TEXT_RECOGNITION::RECOGNIZETEXTREQUEST"))
(unless (find-package "TEXT_RECOGNITION::RECOGNIZETEXTRESPONSE")
  (make-package "TEXT_RECOGNITION::RECOGNIZETEXTRESPONSE"))

(in-package "ROS")

(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))




(defclass text_recognition::RecognizeTextRequest
  :super ros::object
  :slots (_image ))

(defmethod text_recognition::RecognizeTextRequest
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

(defclass text_recognition::RecognizeTextResponse
  :super ros::object
  :slots (_text _confidence _status ))

(defmethod text_recognition::RecognizeTextResponse
  (:init
   (&key
    ((:text __text) "")
    ((:confidence __confidence) 0.0)
    ((:status __status) "")
    )
   (send-super :init)
   (setq _text (string __text))
   (setq _confidence (float __confidence))
   (setq _status (string __status))
   self)
  (:text
   (&optional __text)
   (if __text (setq _text __text)) _text)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; string _text
    4 (length _text)
    ;; float32 _confidence
    4
    ;; string _status
    4 (length _status)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _text
       (write-long (length _text) s) (princ _text s)
     ;; float32 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _confidence
     (setq _confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass text_recognition::RecognizeText
  :super ros::object
  :slots ())

(setf (get text_recognition::RecognizeText :md5sum-) "56d74e4557366e6ce23664c10a470391")
(setf (get text_recognition::RecognizeText :datatype-) "text_recognition/RecognizeText")
(setf (get text_recognition::RecognizeText :request) text_recognition::RecognizeTextRequest)
(setf (get text_recognition::RecognizeText :response) text_recognition::RecognizeTextResponse)

(defmethod text_recognition::RecognizeTextRequest
  (:response () (instance text_recognition::RecognizeTextResponse :init)))

(setf (get text_recognition::RecognizeTextRequest :md5sum-) "56d74e4557366e6ce23664c10a470391")
(setf (get text_recognition::RecognizeTextRequest :datatype-) "text_recognition/RecognizeTextRequest")
(setf (get text_recognition::RecognizeTextRequest :definition-)
      "# 请求：传入摄像头图像
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
string text          # 识别的文字
float32 confidence   # 置信度
string status        # 状态信息

")

(setf (get text_recognition::RecognizeTextResponse :md5sum-) "56d74e4557366e6ce23664c10a470391")
(setf (get text_recognition::RecognizeTextResponse :datatype-) "text_recognition/RecognizeTextResponse")
(setf (get text_recognition::RecognizeTextResponse :definition-)
      "# 请求：传入摄像头图像
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
string text          # 识别的文字
float32 confidence   # 置信度
string status        # 状态信息

")



(provide :text_recognition/RecognizeText "56d74e4557366e6ce23664c10a470391")


