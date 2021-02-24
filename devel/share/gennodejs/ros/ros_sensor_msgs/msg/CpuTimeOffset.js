// Auto-generated. Do not edit!

// (in-package ros_sensor_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class CpuTimeOffset {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.valid = null;
      this.secondsOffset = null;
    }
    else {
      if (initObj.hasOwnProperty('valid')) {
        this.valid = initObj.valid
      }
      else {
        this.valid = false;
      }
      if (initObj.hasOwnProperty('secondsOffset')) {
        this.secondsOffset = initObj.secondsOffset
      }
      else {
        this.secondsOffset = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CpuTimeOffset
    // Serialize message field [valid]
    bufferOffset = _serializer.bool(obj.valid, buffer, bufferOffset);
    // Serialize message field [secondsOffset]
    bufferOffset = _serializer.float64(obj.secondsOffset, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CpuTimeOffset
    let len;
    let data = new CpuTimeOffset(null);
    // Deserialize message field [valid]
    data.valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [secondsOffset]
    data.secondsOffset = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_sensor_msgs/CpuTimeOffset';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fe6721beec4e50ad7c1762c7c1827237';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool    valid
    float64 secondsOffset
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CpuTimeOffset(null);
    if (msg.valid !== undefined) {
      resolved.valid = msg.valid;
    }
    else {
      resolved.valid = false
    }

    if (msg.secondsOffset !== undefined) {
      resolved.secondsOffset = msg.secondsOffset;
    }
    else {
      resolved.secondsOffset = 0.0
    }

    return resolved;
    }
};

module.exports = CpuTimeOffset;
