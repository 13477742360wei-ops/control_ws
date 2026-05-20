// Auto-generated. Do not edit!

// (in-package license_plate_ocr.srv)


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

class LicensePlateOCRRequest {
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
    // Serializes a message object of type LicensePlateOCRRequest
    // Serialize message field [image]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.image, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LicensePlateOCRRequest
    let len;
    let data = new LicensePlateOCRRequest(null);
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
    return 'license_plate_ocr/LicensePlateOCRRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b13d2865c5af2a64e6e30ab1b56e1dd5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 请求：输入图片
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
    const resolved = new LicensePlateOCRRequest(null);
    if (msg.image !== undefined) {
      resolved.image = sensor_msgs.msg.Image.Resolve(msg.image)
    }
    else {
      resolved.image = new sensor_msgs.msg.Image()
    }

    return resolved;
    }
};

class LicensePlateOCRResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.plate_texts = null;
      this.confidences = null;
      this.status_message = null;
    }
    else {
      if (initObj.hasOwnProperty('plate_texts')) {
        this.plate_texts = initObj.plate_texts
      }
      else {
        this.plate_texts = [];
      }
      if (initObj.hasOwnProperty('confidences')) {
        this.confidences = initObj.confidences
      }
      else {
        this.confidences = [];
      }
      if (initObj.hasOwnProperty('status_message')) {
        this.status_message = initObj.status_message
      }
      else {
        this.status_message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LicensePlateOCRResponse
    // Serialize message field [plate_texts]
    bufferOffset = _arraySerializer.string(obj.plate_texts, buffer, bufferOffset, null);
    // Serialize message field [confidences]
    bufferOffset = _arraySerializer.float32(obj.confidences, buffer, bufferOffset, null);
    // Serialize message field [status_message]
    bufferOffset = _serializer.string(obj.status_message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LicensePlateOCRResponse
    let len;
    let data = new LicensePlateOCRResponse(null);
    // Deserialize message field [plate_texts]
    data.plate_texts = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [confidences]
    data.confidences = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [status_message]
    data.status_message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.plate_texts.forEach((val) => {
      length += 4 + val.length;
    });
    length += 4 * object.confidences.length;
    length += object.status_message.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'license_plate_ocr/LicensePlateOCRResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '992dcf1bf25275ccf4fb7dcadfb15de4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 响应：返回识别结果
    string[] plate_texts
    float32[] confidences
    string status_message
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LicensePlateOCRResponse(null);
    if (msg.plate_texts !== undefined) {
      resolved.plate_texts = msg.plate_texts;
    }
    else {
      resolved.plate_texts = []
    }

    if (msg.confidences !== undefined) {
      resolved.confidences = msg.confidences;
    }
    else {
      resolved.confidences = []
    }

    if (msg.status_message !== undefined) {
      resolved.status_message = msg.status_message;
    }
    else {
      resolved.status_message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: LicensePlateOCRRequest,
  Response: LicensePlateOCRResponse,
  md5sum() { return 'bc0aa725c8a3f5abac8f917be5e39777'; },
  datatype() { return 'license_plate_ocr/LicensePlateOCR'; }
};
