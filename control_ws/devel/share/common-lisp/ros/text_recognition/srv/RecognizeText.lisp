; Auto-generated. Do not edit!


(cl:in-package text_recognition-srv)


;//! \htmlinclude RecognizeText-request.msg.html

(cl:defclass <RecognizeText-request> (roslisp-msg-protocol:ros-message)
  ((image_path
    :reader image_path
    :initarg :image_path
    :type cl:string
    :initform ""))
)

(cl:defclass RecognizeText-request (<RecognizeText-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RecognizeText-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RecognizeText-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name text_recognition-srv:<RecognizeText-request> is deprecated: use text_recognition-srv:RecognizeText-request instead.")))

(cl:ensure-generic-function 'image_path-val :lambda-list '(m))
(cl:defmethod image_path-val ((m <RecognizeText-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader text_recognition-srv:image_path-val is deprecated.  Use text_recognition-srv:image_path instead.")
  (image_path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RecognizeText-request>) ostream)
  "Serializes a message object of type '<RecognizeText-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'image_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'image_path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RecognizeText-request>) istream)
  "Deserializes a message object of type '<RecognizeText-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'image_path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'image_path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RecognizeText-request>)))
  "Returns string type for a service object of type '<RecognizeText-request>"
  "text_recognition/RecognizeTextRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RecognizeText-request)))
  "Returns string type for a service object of type 'RecognizeText-request"
  "text_recognition/RecognizeTextRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RecognizeText-request>)))
  "Returns md5sum for a message object of type '<RecognizeText-request>"
  "992db631aebc62bb18995fe2bf59be7e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RecognizeText-request)))
  "Returns md5sum for a message object of type 'RecognizeText-request"
  "992db631aebc62bb18995fe2bf59be7e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RecognizeText-request>)))
  "Returns full string definition for message of type '<RecognizeText-request>"
  (cl:format cl:nil "# 请求：图片路径~%string image_path~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RecognizeText-request)))
  "Returns full string definition for message of type 'RecognizeText-request"
  (cl:format cl:nil "# 请求：图片路径~%string image_path~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RecognizeText-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'image_path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RecognizeText-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RecognizeText-request
    (cl:cons ':image_path (image_path msg))
))
;//! \htmlinclude RecognizeText-response.msg.html

(cl:defclass <RecognizeText-response> (roslisp-msg-protocol:ros-message)
  ((lab_open
    :reader lab_open
    :initarg :lab_open
    :type cl:boolean
    :initform cl:nil)
   (wait_seconds
    :reader wait_seconds
    :initarg :wait_seconds
    :type cl:integer
    :initform 0)
   (speech_text
    :reader speech_text
    :initarg :speech_text
    :type cl:string
    :initform ""))
)

(cl:defclass RecognizeText-response (<RecognizeText-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RecognizeText-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RecognizeText-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name text_recognition-srv:<RecognizeText-response> is deprecated: use text_recognition-srv:RecognizeText-response instead.")))

(cl:ensure-generic-function 'lab_open-val :lambda-list '(m))
(cl:defmethod lab_open-val ((m <RecognizeText-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader text_recognition-srv:lab_open-val is deprecated.  Use text_recognition-srv:lab_open instead.")
  (lab_open m))

(cl:ensure-generic-function 'wait_seconds-val :lambda-list '(m))
(cl:defmethod wait_seconds-val ((m <RecognizeText-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader text_recognition-srv:wait_seconds-val is deprecated.  Use text_recognition-srv:wait_seconds instead.")
  (wait_seconds m))

(cl:ensure-generic-function 'speech_text-val :lambda-list '(m))
(cl:defmethod speech_text-val ((m <RecognizeText-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader text_recognition-srv:speech_text-val is deprecated.  Use text_recognition-srv:speech_text instead.")
  (speech_text m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RecognizeText-response>) ostream)
  "Serializes a message object of type '<RecognizeText-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'lab_open) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'wait_seconds)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'speech_text))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'speech_text))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RecognizeText-response>) istream)
  "Deserializes a message object of type '<RecognizeText-response>"
    (cl:setf (cl:slot-value msg 'lab_open) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'wait_seconds) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'speech_text) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'speech_text) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RecognizeText-response>)))
  "Returns string type for a service object of type '<RecognizeText-response>"
  "text_recognition/RecognizeTextResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RecognizeText-response)))
  "Returns string type for a service object of type 'RecognizeText-response"
  "text_recognition/RecognizeTextResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RecognizeText-response>)))
  "Returns md5sum for a message object of type '<RecognizeText-response>"
  "992db631aebc62bb18995fe2bf59be7e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RecognizeText-response)))
  "Returns md5sum for a message object of type 'RecognizeText-response"
  "992db631aebc62bb18995fe2bf59be7e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RecognizeText-response>)))
  "Returns full string definition for message of type '<RecognizeText-response>"
  (cl:format cl:nil "# 响应~%bool lab_open        # 是否空闲（可扩展）~%int32 wait_seconds   # 等待秒数（可扩展）~%string speech_text   # 识别出的文字~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RecognizeText-response)))
  "Returns full string definition for message of type 'RecognizeText-response"
  (cl:format cl:nil "# 响应~%bool lab_open        # 是否空闲（可扩展）~%int32 wait_seconds   # 等待秒数（可扩展）~%string speech_text   # 识别出的文字~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RecognizeText-response>))
  (cl:+ 0
     1
     4
     4 (cl:length (cl:slot-value msg 'speech_text))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RecognizeText-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RecognizeText-response
    (cl:cons ':lab_open (lab_open msg))
    (cl:cons ':wait_seconds (wait_seconds msg))
    (cl:cons ':speech_text (speech_text msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RecognizeText)))
  'RecognizeText-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RecognizeText)))
  'RecognizeText-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RecognizeText)))
  "Returns string type for a service object of type '<RecognizeText>"
  "text_recognition/RecognizeText")