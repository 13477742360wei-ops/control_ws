; Auto-generated. Do not edit!


(cl:in-package license_plate_ocr-srv)


;//! \htmlinclude LicensePlateOCR-request.msg.html

(cl:defclass <LicensePlateOCR-request> (roslisp-msg-protocol:ros-message)
  ((image
    :reader image
    :initarg :image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image)))
)

(cl:defclass LicensePlateOCR-request (<LicensePlateOCR-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LicensePlateOCR-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LicensePlateOCR-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name license_plate_ocr-srv:<LicensePlateOCR-request> is deprecated: use license_plate_ocr-srv:LicensePlateOCR-request instead.")))

(cl:ensure-generic-function 'image-val :lambda-list '(m))
(cl:defmethod image-val ((m <LicensePlateOCR-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader license_plate_ocr-srv:image-val is deprecated.  Use license_plate_ocr-srv:image instead.")
  (image m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LicensePlateOCR-request>) ostream)
  "Serializes a message object of type '<LicensePlateOCR-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LicensePlateOCR-request>) istream)
  "Deserializes a message object of type '<LicensePlateOCR-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LicensePlateOCR-request>)))
  "Returns string type for a service object of type '<LicensePlateOCR-request>"
  "license_plate_ocr/LicensePlateOCRRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LicensePlateOCR-request)))
  "Returns string type for a service object of type 'LicensePlateOCR-request"
  "license_plate_ocr/LicensePlateOCRRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LicensePlateOCR-request>)))
  "Returns md5sum for a message object of type '<LicensePlateOCR-request>"
  "bc0aa725c8a3f5abac8f917be5e39777")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LicensePlateOCR-request)))
  "Returns md5sum for a message object of type 'LicensePlateOCR-request"
  "bc0aa725c8a3f5abac8f917be5e39777")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LicensePlateOCR-request>)))
  "Returns full string definition for message of type '<LicensePlateOCR-request>"
  (cl:format cl:nil "# 请求：输入图片~%sensor_msgs/Image image~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LicensePlateOCR-request)))
  "Returns full string definition for message of type 'LicensePlateOCR-request"
  (cl:format cl:nil "# 请求：输入图片~%sensor_msgs/Image image~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LicensePlateOCR-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LicensePlateOCR-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LicensePlateOCR-request
    (cl:cons ':image (image msg))
))
;//! \htmlinclude LicensePlateOCR-response.msg.html

(cl:defclass <LicensePlateOCR-response> (roslisp-msg-protocol:ros-message)
  ((plate_texts
    :reader plate_texts
    :initarg :plate_texts
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (confidences
    :reader confidences
    :initarg :confidences
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (status_message
    :reader status_message
    :initarg :status_message
    :type cl:string
    :initform ""))
)

(cl:defclass LicensePlateOCR-response (<LicensePlateOCR-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LicensePlateOCR-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LicensePlateOCR-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name license_plate_ocr-srv:<LicensePlateOCR-response> is deprecated: use license_plate_ocr-srv:LicensePlateOCR-response instead.")))

(cl:ensure-generic-function 'plate_texts-val :lambda-list '(m))
(cl:defmethod plate_texts-val ((m <LicensePlateOCR-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader license_plate_ocr-srv:plate_texts-val is deprecated.  Use license_plate_ocr-srv:plate_texts instead.")
  (plate_texts m))

(cl:ensure-generic-function 'confidences-val :lambda-list '(m))
(cl:defmethod confidences-val ((m <LicensePlateOCR-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader license_plate_ocr-srv:confidences-val is deprecated.  Use license_plate_ocr-srv:confidences instead.")
  (confidences m))

(cl:ensure-generic-function 'status_message-val :lambda-list '(m))
(cl:defmethod status_message-val ((m <LicensePlateOCR-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader license_plate_ocr-srv:status_message-val is deprecated.  Use license_plate_ocr-srv:status_message instead.")
  (status_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LicensePlateOCR-response>) ostream)
  "Serializes a message object of type '<LicensePlateOCR-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'plate_texts))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'plate_texts))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'confidences))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'confidences))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status_message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LicensePlateOCR-response>) istream)
  "Deserializes a message object of type '<LicensePlateOCR-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'plate_texts) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'plate_texts)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'confidences) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'confidences)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status_message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status_message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LicensePlateOCR-response>)))
  "Returns string type for a service object of type '<LicensePlateOCR-response>"
  "license_plate_ocr/LicensePlateOCRResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LicensePlateOCR-response)))
  "Returns string type for a service object of type 'LicensePlateOCR-response"
  "license_plate_ocr/LicensePlateOCRResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LicensePlateOCR-response>)))
  "Returns md5sum for a message object of type '<LicensePlateOCR-response>"
  "bc0aa725c8a3f5abac8f917be5e39777")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LicensePlateOCR-response)))
  "Returns md5sum for a message object of type 'LicensePlateOCR-response"
  "bc0aa725c8a3f5abac8f917be5e39777")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LicensePlateOCR-response>)))
  "Returns full string definition for message of type '<LicensePlateOCR-response>"
  (cl:format cl:nil "# 响应：返回识别结果~%string[] plate_texts~%float32[] confidences~%string status_message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LicensePlateOCR-response)))
  "Returns full string definition for message of type 'LicensePlateOCR-response"
  (cl:format cl:nil "# 响应：返回识别结果~%string[] plate_texts~%float32[] confidences~%string status_message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LicensePlateOCR-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'plate_texts) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'confidences) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:length (cl:slot-value msg 'status_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LicensePlateOCR-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LicensePlateOCR-response
    (cl:cons ':plate_texts (plate_texts msg))
    (cl:cons ':confidences (confidences msg))
    (cl:cons ':status_message (status_message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LicensePlateOCR)))
  'LicensePlateOCR-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LicensePlateOCR)))
  'LicensePlateOCR-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LicensePlateOCR)))
  "Returns string type for a service object of type '<LicensePlateOCR>"
  "license_plate_ocr/LicensePlateOCR")