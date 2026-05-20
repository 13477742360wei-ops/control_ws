// Auto-generated. Do not edit!

// (in-package text_recognition.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class RecognizeTextRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.image_path = null;
    }
    else {
      if (initObj.hasOwnProperty('image_path')) {
        this.image_path = initObj.image_path
      }
      else {
        this.image_path = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RecognizeTextRequest
    // Serialize message field [image_path]
    bufferOffset = _serializer.string(obj.image_path, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RecognizeTextRequest
    let len;
    let data = new RecognizeTextRequest(null);
    // Deserialize message field [image_path]
    data.image_path = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.image_path.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'text_recognition/RecognizeTextRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '65568c775bfbc96c6265c3d13d7e1a07';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 请求：图片路径
    string image_path
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RecognizeTextRequest(null);
    if (msg.image_path !== undefined) {
      resolved.image_path = msg.image_path;
    }
    else {
      resolved.image_path = ''
    }

    return resolved;
    }
};

class RecognizeTextResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lab_open = null;
      this.wait_seconds = null;
      this.speech_text = null;
    }
    else {
      if (initObj.hasOwnProperty('lab_open')) {
        this.lab_open = initObj.lab_open
      }
      else {
        this.lab_open = false;
      }
      if (initObj.hasOwnProperty('wait_seconds')) {
        this.wait_seconds = initObj.wait_seconds
      }
      else {
        this.wait_seconds = 0;
      }
      if (initObj.hasOwnProperty('speech_text')) {
        this.speech_text = initObj.speech_text
      }
      else {
        this.speech_text = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RecognizeTextResponse
    // Serialize message field [lab_open]
    bufferOffset = _serializer.bool(obj.lab_open, buffer, bufferOffset);
    // Serialize message field [wait_seconds]
    bufferOffset = _serializer.int32(obj.wait_seconds, buffer, bufferOffset);
    // Serialize message field [speech_text]
    bufferOffset = _serializer.string(obj.speech_text, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RecognizeTextResponse
    let len;
    let data = new RecognizeTextResponse(null);
    // Deserialize message field [lab_open]
    data.lab_open = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [wait_seconds]
    data.wait_seconds = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [speech_text]
    data.speech_text = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.speech_text.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'text_recognition/RecognizeTextResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '61a7d919646176c35855862f25c89e0a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 响应
    bool lab_open        # 是否空闲（可扩展）
    int32 wait_seconds   # 等待秒数（可扩展）
    string speech_text   # 识别出的文字
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RecognizeTextResponse(null);
    if (msg.lab_open !== undefined) {
      resolved.lab_open = msg.lab_open;
    }
    else {
      resolved.lab_open = false
    }

    if (msg.wait_seconds !== undefined) {
      resolved.wait_seconds = msg.wait_seconds;
    }
    else {
      resolved.wait_seconds = 0
    }

    if (msg.speech_text !== undefined) {
      resolved.speech_text = msg.speech_text;
    }
    else {
      resolved.speech_text = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: RecognizeTextRequest,
  Response: RecognizeTextResponse,
  md5sum() { return '992db631aebc62bb18995fe2bf59be7e'; },
  datatype() { return 'text_recognition/RecognizeText'; }
};
