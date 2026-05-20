; Auto-generated. Do not edit!


(cl:in-package text_recognition-srv)


;//! \htmlinclude RecognizeText-request.msg.html

(cl:defclass <RecognizeText-request> (roslisp-msg-protocol:ros-message)
  ((image
    :reader image
    :initarg :image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image)))
)

(cl:defclass RecognizeText-request (<RecognizeText-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RecognizeText-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RecognizeText-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name text_recognition-srv:<RecognizeText-request> is deprecated: use text_recognition-srv:RecognizeText-request instead.")))

(cl:ensure-generic-function 'image-val :lambda-list '(m))
(cl:defmethod image-val ((m <RecognizeText-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader text_recognition-srv:image-val is deprecated.  Use text_recognition-srv:image instead.")
  (image m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RecognizeText-request>) ostream)
  "Serializes a message object of type '<RecognizeText-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RecognizeText-request>) istream)
  "Deserializes a message object of type '<RecognizeText-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image) istream)
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
  "56d74e4557366e6ce23664c10a470391")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RecognizeText-request)))
  "Returns md5sum for a message object of type 'RecognizeText-request"
  "56d74e4557366e6ce23664c10a470391")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RecognizeText-request>)))
  "Returns full string definition for message of type '<RecognizeText-request>"
  (cl:format cl:nil "# 请求：传入摄像头图像~%sensor_msgs/Image image~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RecognizeText-request)))
  "Returns full string definition for message of type 'RecognizeText-request"
  (cl:format cl:nil "# 请求：传入摄像头图像~%sensor_msgs/Image image~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RecognizeText-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RecognizeText-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RecognizeText-request
    (cl:cons ':image (image msg))
))
;//! \htmlinclude RecognizeText-response.msg.html

(cl:defclass <RecognizeText-response> (roslisp-msg-protocol:ros-message)
  ((text
    :reader text
    :initarg :text
    :type cl:string
    :initform "")
   (confidence
    :reader confidence
    :initarg :confidence
    :type cl:float
    :initform 0.0)
   (status
    :reader status
    :initarg :status
    :type cl:string
    :initform ""))
)

(cl:defclass RecognizeText-response (<RecognizeText-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RecognizeText-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RecognizeText-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name text_recognition-srv:<RecognizeText-response> is deprecated: use text_recognition-srv:RecognizeText-response instead.")))

(cl:ensure-generic-function 'text-val :lambda-list '(m))
(cl:defmethod text-val ((m <RecognizeText-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader text_recognition-srv:text-val is deprecated.  Use text_recognition-srv:text instead.")
  (text m))

(cl:ensure-generic-function 'confidence-val :lambda-list '(m))
(cl:defmethod confidence-val ((m <RecognizeText-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader text_recognition-srv:confidence-val is deprecated.  Use text_recognition-srv:confidence instead.")
  (confidence m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <RecognizeText-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader text_recognition-srv:status-val is deprecated.  Use text_recognition-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RecognizeText-response>) ostream)
  "Serializes a message object of type '<RecognizeText-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'text))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'text))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'confidence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RecognizeText-response>) istream)
  "Deserializes a message object of type '<RecognizeText-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'text) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'text) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'confidence) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
  "56d74e4557366e6ce23664c10a470391")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RecognizeText-response)))
  "Returns md5sum for a message object of type 'RecognizeText-response"
  "56d74e4557366e6ce23664c10a470391")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RecognizeText-response>)))
  "Returns full string definition for message of type '<RecognizeText-response>"
  (cl:format cl:nil "# 响应：返回识别结果~%string text          # 识别的文字~%float32 confidence   # 置信度~%string status        # 状态信息~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RecognizeText-response)))
  "Returns full string definition for message of type 'RecognizeText-response"
  (cl:format cl:nil "# 响应：返回识别结果~%string text          # 识别的文字~%float32 confidence   # 置信度~%string status        # 状态信息~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RecognizeText-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'text))
     4
     4 (cl:length (cl:slot-value msg 'status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RecognizeText-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RecognizeText-response
    (cl:cons ':text (text msg))
    (cl:cons ':confidence (confidence msg))
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RecognizeText)))
  'RecognizeText-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RecognizeText)))
  'RecognizeText-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RecognizeText)))
  "Returns string type for a service object of type '<RecognizeText>"
  "text_recognition/RecognizeText")