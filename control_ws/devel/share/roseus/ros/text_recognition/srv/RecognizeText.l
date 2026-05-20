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





(defclass text_recognition::RecognizeTextRequest
  :super ros::object
  :slots (_image_path ))

(defmethod text_recognition::RecognizeTextRequest
  (:init
   (&key
    ((:image_path __image_path) "")
    )
   (send-super :init)
   (setq _image_path (string __image_path))
   self)
  (:image_path
   (&optional __image_path)
   (if __image_path (setq _image_path __image_path)) _image_path)
  (:serialization-length
   ()
   (+
    ;; string _image_path
    4 (length _image_path)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _image_path
       (write-long (length _image_path) s) (princ _image_path s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _image_path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _image_path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass text_recognition::RecognizeTextResponse
  :super ros::object
  :slots (_lab_open _wait_seconds _speech_text ))

(defmethod text_recognition::RecognizeTextResponse
  (:init
   (&key
    ((:lab_open __lab_open) nil)
    ((:wait_seconds __wait_seconds) 0)
    ((:speech_text __speech_text) "")
    )
   (send-super :init)
   (setq _lab_open __lab_open)
   (setq _wait_seconds (round __wait_seconds))
   (setq _speech_text (string __speech_text))
   self)
  (:lab_open
   (&optional __lab_open)
   (if __lab_open (setq _lab_open __lab_open)) _lab_open)
  (:wait_seconds
   (&optional __wait_seconds)
   (if __wait_seconds (setq _wait_seconds __wait_seconds)) _wait_seconds)
  (:speech_text
   (&optional __speech_text)
   (if __speech_text (setq _speech_text __speech_text)) _speech_text)
  (:serialization-length
   ()
   (+
    ;; bool _lab_open
    1
    ;; int32 _wait_seconds
    4
    ;; string _speech_text
    4 (length _speech_text)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _lab_open
       (if _lab_open (write-byte -1 s) (write-byte 0 s))
     ;; int32 _wait_seconds
       (write-long _wait_seconds s)
     ;; string _speech_text
       (write-long (length _speech_text) s) (princ _speech_text s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _lab_open
     (setq _lab_open (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _wait_seconds
     (setq _wait_seconds (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _speech_text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _speech_text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass text_recognition::RecognizeText
  :super ros::object
  :slots ())

(setf (get text_recognition::RecognizeText :md5sum-) "992db631aebc62bb18995fe2bf59be7e")
(setf (get text_recognition::RecognizeText :datatype-) "text_recognition/RecognizeText")
(setf (get text_recognition::RecognizeText :request) text_recognition::RecognizeTextRequest)
(setf (get text_recognition::RecognizeText :response) text_recognition::RecognizeTextResponse)

(defmethod text_recognition::RecognizeTextRequest
  (:response () (instance text_recognition::RecognizeTextResponse :init)))

(setf (get text_recognition::RecognizeTextRequest :md5sum-) "992db631aebc62bb18995fe2bf59be7e")
(setf (get text_recognition::RecognizeTextRequest :datatype-) "text_recognition/RecognizeTextRequest")
(setf (get text_recognition::RecognizeTextRequest :definition-)
      "# 请求：图片路径
string image_path

---
# 响应
bool lab_open        # 是否空闲（可扩展）
int32 wait_seconds   # 等待秒数（可扩展）
string speech_text   # 识别出的文字

")

(setf (get text_recognition::RecognizeTextResponse :md5sum-) "992db631aebc62bb18995fe2bf59be7e")
(setf (get text_recognition::RecognizeTextResponse :datatype-) "text_recognition/RecognizeTextResponse")
(setf (get text_recognition::RecognizeTextResponse :definition-)
      "# 请求：图片路径
string image_path

---
# 响应
bool lab_open        # 是否空闲（可扩展）
int32 wait_seconds   # 等待秒数（可扩展）
string speech_text   # 识别出的文字

")



(provide :text_recognition/RecognizeText "992db631aebc62bb18995fe2bf59be7e")


