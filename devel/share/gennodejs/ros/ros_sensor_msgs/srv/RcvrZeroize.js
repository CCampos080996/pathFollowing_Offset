// Auto-generated. Do not edit!

// (in-package ros_sensor_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class RcvrZeroizeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.clear_keys = null;
      this.clear_rcvr_data = null;
      this.clear_position_and_time = null;
    }
    else {
      if (initObj.hasOwnProperty('clear_keys')) {
        this.clear_keys = initObj.clear_keys
      }
      else {
        this.clear_keys = false;
      }
      if (initObj.hasOwnProperty('clear_rcvr_data')) {
        this.clear_rcvr_data = initObj.clear_rcvr_data
      }
      else {
        this.clear_rcvr_data = false;
      }
      if (initObj.hasOwnProperty('clear_position_and_time')) {
        this.clear_position_and_time = initObj.clear_position_and_time
      }
      else {
        this.clear_position_and_time = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RcvrZeroizeRequest
    // Serialize message field [clear_keys]
    bufferOffset = _serializer.bool(obj.clear_keys, buffer, bufferOffset);
    // Serialize message field [clear_rcvr_data]
    bufferOffset = _serializer.bool(obj.clear_rcvr_data, buffer, bufferOffset);
    // Serialize message field [clear_position_and_time]
    bufferOffset = _serializer.bool(obj.clear_position_and_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RcvrZeroizeRequest
    let len;
    let data = new RcvrZeroizeRequest(null);
    // Deserialize message field [clear_keys]
    data.clear_keys = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [clear_rcvr_data]
    data.clear_rcvr_data = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [clear_position_and_time]
    data.clear_position_and_time = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_sensor_msgs/RcvrZeroizeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '00be833a0082ac75852a29b8e8053002';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool clear_keys
    bool clear_rcvr_data
    bool clear_position_and_time
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RcvrZeroizeRequest(null);
    if (msg.clear_keys !== undefined) {
      resolved.clear_keys = msg.clear_keys;
    }
    else {
      resolved.clear_keys = false
    }

    if (msg.clear_rcvr_data !== undefined) {
      resolved.clear_rcvr_data = msg.clear_rcvr_data;
    }
    else {
      resolved.clear_rcvr_data = false
    }

    if (msg.clear_position_and_time !== undefined) {
      resolved.clear_position_and_time = msg.clear_position_and_time;
    }
    else {
      resolved.clear_position_and_time = false
    }

    return resolved;
    }
};

class RcvrZeroizeResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RcvrZeroizeResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RcvrZeroizeResponse
    let len;
    let data = new RcvrZeroizeResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_sensor_msgs/RcvrZeroizeResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '937c9679a518e3a18d831e57125ea522';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string message
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RcvrZeroizeResponse(null);
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

    return resolved;
    }
};

module.exports = {
  Request: RcvrZeroizeRequest,
  Response: RcvrZeroizeResponse,
  md5sum() { return '1a6092fd53941ce04a5c576a57bbdbb6'; },
  datatype() { return 'ros_sensor_msgs/RcvrZeroize'; }
};
