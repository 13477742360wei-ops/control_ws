// Auto-generated. Do not edit!

// (in-package yolo_onnx_ros.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class ObjectDetectionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.image = null;
    }
    else {
      if (initObj.hasOwnProperty('image')) {
        this.image = initObj.image
      }
      else {
        this.image = new sensor_msgs.msg.Image();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObjectDetectionRequest
    // Serialize message field [image]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.image, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObjectDetectionRequest
    let len;
    let data = new ObjectDetectionRequest(null);
    // Deserialize message field [image]
    data.image = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.Image.getMessageSize(object.image);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'yolo_onnx_ros/ObjectDetectionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b13d2865c5af2a64e6e30ab1b56e1dd5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ObjectDetectionRequest(null);
    if (msg.image !== undefined) {
      resolved.image = sensor_msgs.msg.Image.Resolve(msg.image)
    }
    else {
      resolved.image = new sensor_msgs.msg.Image()
    }

    return resolved;
    }
};

class ObjectDetectionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
      this.detected_classes = null;
      this.confidences = null;
      this.bboxes = null;
      this.class_names = null;
      this.class_counts = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
      if (initObj.hasOwnProperty('detected_classes')) {
        this.detected_classes = initObj.detected_classes
      }
      else {
        this.detected_classes = [];
      }
      if (initObj.hasOwnProperty('confidences')) {
        this.confidences = initObj.confidences
      }
      else {
        this.confidences = [];
      }
      if (initObj.hasOwnProperty('bboxes')) {
        this.bboxes = initObj.bboxes
      }
      else {
        this.bboxes = [];
      }
      if (initObj.hasOwnProperty('class_names')) {
        this.class_names = initObj.class_names
      }
      else {
        this.class_names = [];
      }
      if (initObj.hasOwnProperty('class_counts')) {
        this.class_counts = initObj.class_counts
      }
      else {
        this.class_counts = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObjectDetectionResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [detected_classes]
    bufferOffset = _arraySerializer.string(obj.detected_classes, buffer, bufferOffset, null);
    // Serialize message field [confidences]
    bufferOffset = _arraySerializer.float32(obj.confidences, buffer, bufferOffset, null);
    // Serialize message field [bboxes]
    bufferOffset = _arraySerializer.int32(obj.bboxes, buffer, bufferOffset, null);
    // Serialize message field [class_names]
    bufferOffset = _arraySerializer.string(obj.class_names, buffer, bufferOffset, null);
    // Serialize message field [class_counts]
    bufferOffset = _arraySerializer.int32(obj.class_counts, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObjectDetectionResponse
    let len;
    let data = new ObjectDetectionResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [detected_classes]
    data.detected_classes = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [confidences]
    data.confidences = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [bboxes]
    data.bboxes = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [class_names]
    data.class_names = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [class_counts]
    data.class_counts = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    object.detected_classes.forEach((val) => {
      length += 4 + val.length;
    });
    length += 4 * object.confidences.length;
    length += 4 * object.bboxes.length;
    object.class_names.forEach((val) => {
      length += 4 + val.length;
    });
    length += 4 * object.class_counts.length;
    return length + 25;
  }

  static datatype() {
    // Returns string type for a service object
    return 'yolo_onnx_ros/ObjectDetectionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '489bc24994a8b7435ec34005c4c3ad9a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string message
    string[] detected_classes
    float32[] confidences
    int32[] bboxes
    string[] class_names
    int32[] class_counts
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ObjectDetectionResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    if (msg.detected_classes !== undefined) {
      resolved.detected_classes = msg.detected_classes;
    }
    else {
      resolved.detected_classes = []
    }

    if (msg.confidences !== undefined) {
      resolved.confidences = msg.confidences;
    }
    else {
      resolved.confidences = []
    }

    if (msg.bboxes !== undefined) {
      resolved.bboxes = msg.bboxes;
    }
    else {
      resolved.bboxes = []
    }

    if (msg.class_names !== undefined) {
      resolved.class_names = msg.class_names;
    }
    else {
      resolved.class_names = []
    }

    if (msg.class_counts !== undefined) {
      resolved.class_counts = msg.class_counts;
    }
    else {
      resolved.class_counts = []
    }

    return resolved;
    }
};

module.exports = {
  Request: ObjectDetectionRequest,
  Response: ObjectDetectionResponse,
  md5sum() { return '72cb1f993fa530515d2ffbaf79b1be27'; },
  datatype() { return 'yolo_onnx_ros/ObjectDetection'; }
};
