; Auto-generated. Do not edit!


(cl:in-package yolo_onnx_ros-srv)


;//! \htmlinclude ObjectDetection-request.msg.html

(cl:defclass <ObjectDetection-request> (roslisp-msg-protocol:ros-message)
  ((image
    :reader image
    :initarg :image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image)))
)

(cl:defclass ObjectDetection-request (<ObjectDetection-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjectDetection-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjectDetection-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yolo_onnx_ros-srv:<ObjectDetection-request> is deprecated: use yolo_onnx_ros-srv:ObjectDetection-request instead.")))

(cl:ensure-generic-function 'image-val :lambda-list '(m))
(cl:defmethod image-val ((m <ObjectDetection-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yolo_onnx_ros-srv:image-val is deprecated.  Use yolo_onnx_ros-srv:image instead.")
  (image m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjectDetection-request>) ostream)
  "Serializes a message object of type '<ObjectDetection-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjectDetection-request>) istream)
  "Deserializes a message object of type '<ObjectDetection-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjectDetection-request>)))
  "Returns string type for a service object of type '<ObjectDetection-request>"
  "yolo_onnx_ros/ObjectDetectionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectDetection-request)))
  "Returns string type for a service object of type 'ObjectDetection-request"
  "yolo_onnx_ros/ObjectDetectionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjectDetection-request>)))
  "Returns md5sum for a message object of type '<ObjectDetection-request>"
  "72cb1f993fa530515d2ffbaf79b1be27")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjectDetection-request)))
  "Returns md5sum for a message object of type 'ObjectDetection-request"
  "72cb1f993fa530515d2ffbaf79b1be27")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjectDetection-request>)))
  "Returns full string definition for message of type '<ObjectDetection-request>"
  (cl:format cl:nil "sensor_msgs/Image image~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjectDetection-request)))
  "Returns full string definition for message of type 'ObjectDetection-request"
  (cl:format cl:nil "sensor_msgs/Image image~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjectDetection-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjectDetection-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjectDetection-request
    (cl:cons ':image (image msg))
))
;//! \htmlinclude ObjectDetection-response.msg.html

(cl:defclass <ObjectDetection-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform "")
   (detected_classes
    :reader detected_classes
    :initarg :detected_classes
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (confidences
    :reader confidences
    :initarg :confidences
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (bboxes
    :reader bboxes
    :initarg :bboxes
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (class_names
    :reader class_names
    :initarg :class_names
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (class_counts
    :reader class_counts
    :initarg :class_counts
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass ObjectDetection-response (<ObjectDetection-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjectDetection-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjectDetection-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yolo_onnx_ros-srv:<ObjectDetection-response> is deprecated: use yolo_onnx_ros-srv:ObjectDetection-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ObjectDetection-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yolo_onnx_ros-srv:success-val is deprecated.  Use yolo_onnx_ros-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ObjectDetection-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yolo_onnx_ros-srv:message-val is deprecated.  Use yolo_onnx_ros-srv:message instead.")
  (message m))

(cl:ensure-generic-function 'detected_classes-val :lambda-list '(m))
(cl:defmethod detected_classes-val ((m <ObjectDetection-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yolo_onnx_ros-srv:detected_classes-val is deprecated.  Use yolo_onnx_ros-srv:detected_classes instead.")
  (detected_classes m))

(cl:ensure-generic-function 'confidences-val :lambda-list '(m))
(cl:defmethod confidences-val ((m <ObjectDetection-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yolo_onnx_ros-srv:confidences-val is deprecated.  Use yolo_onnx_ros-srv:confidences instead.")
  (confidences m))

(cl:ensure-generic-function 'bboxes-val :lambda-list '(m))
(cl:defmethod bboxes-val ((m <ObjectDetection-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yolo_onnx_ros-srv:bboxes-val is deprecated.  Use yolo_onnx_ros-srv:bboxes instead.")
  (bboxes m))

(cl:ensure-generic-function 'class_names-val :lambda-list '(m))
(cl:defmethod class_names-val ((m <ObjectDetection-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yolo_onnx_ros-srv:class_names-val is deprecated.  Use yolo_onnx_ros-srv:class_names instead.")
  (class_names m))

(cl:ensure-generic-function 'class_counts-val :lambda-list '(m))
(cl:defmethod class_counts-val ((m <ObjectDetection-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yolo_onnx_ros-srv:class_counts-val is deprecated.  Use yolo_onnx_ros-srv:class_counts instead.")
  (class_counts m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjectDetection-response>) ostream)
  "Serializes a message object of type '<ObjectDetection-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'detected_classes))))
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
   (cl:slot-value msg 'detected_classes))
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
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'bboxes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'bboxes))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'class_names))))
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
   (cl:slot-value msg 'class_names))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'class_counts))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'class_counts))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjectDetection-response>) istream)
  "Deserializes a message object of type '<ObjectDetection-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'detected_classes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'detected_classes)))
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
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'bboxes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'bboxes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'class_names) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'class_names)))
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
  (cl:setf (cl:slot-value msg 'class_counts) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'class_counts)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjectDetection-response>)))
  "Returns string type for a service object of type '<ObjectDetection-response>"
  "yolo_onnx_ros/ObjectDetectionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectDetection-response)))
  "Returns string type for a service object of type 'ObjectDetection-response"
  "yolo_onnx_ros/ObjectDetectionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjectDetection-response>)))
  "Returns md5sum for a message object of type '<ObjectDetection-response>"
  "72cb1f993fa530515d2ffbaf79b1be27")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjectDetection-response)))
  "Returns md5sum for a message object of type 'ObjectDetection-response"
  "72cb1f993fa530515d2ffbaf79b1be27")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjectDetection-response>)))
  "Returns full string definition for message of type '<ObjectDetection-response>"
  (cl:format cl:nil "bool success~%string message~%string[] detected_classes~%float32[] confidences~%int32[] bboxes~%string[] class_names~%int32[] class_counts~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjectDetection-response)))
  "Returns full string definition for message of type 'ObjectDetection-response"
  (cl:format cl:nil "bool success~%string message~%string[] detected_classes~%float32[] confidences~%int32[] bboxes~%string[] class_names~%int32[] class_counts~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjectDetection-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'detected_classes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'confidences) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'bboxes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'class_names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'class_counts) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjectDetection-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjectDetection-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
    (cl:cons ':detected_classes (detected_classes msg))
    (cl:cons ':confidences (confidences msg))
    (cl:cons ':bboxes (bboxes msg))
    (cl:cons ':class_names (class_names msg))
    (cl:cons ':class_counts (class_counts msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ObjectDetection)))
  'ObjectDetection-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ObjectDetection)))
  'ObjectDetection-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectDetection)))
  "Returns string type for a service object of type '<ObjectDetection>"
  "yolo_onnx_ros/ObjectDetection")