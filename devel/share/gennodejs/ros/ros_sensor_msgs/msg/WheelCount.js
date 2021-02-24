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

class WheelCount {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.wheel_count = null;
      this.dir_forward = null;
      this.wheel_name = null;
    }
    else {
      if (initObj.hasOwnProperty('wheel_count')) {
        this.wheel_count = initObj.wheel_count
      }
      else {
        this.wheel_count = 0;
      }
      if (initObj.hasOwnProperty('dir_forward')) {
        this.dir_forward = initObj.dir_forward
      }
      else {
        this.dir_forward = false;
      }
      if (initObj.hasOwnProperty('wheel_name')) {
        this.wheel_name = initObj.wheel_name
      }
      else {
        this.wheel_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WheelCount
    // Serialize message field [wheel_count]
    bufferOffset = _serializer.uint32(obj.wheel_count, buffer, bufferOffset);
    // Serialize message field [dir_forward]
    bufferOffset = _serializer.bool(obj.dir_forward, buffer, bufferOffset);
    // Serialize message field [wheel_name]
    bufferOffset = _serializer.string(obj.wheel_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WheelCount
    let len;
    let data = new WheelCount(null);
    // Deserialize message field [wheel_count]
    data.wheel_count = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [dir_forward]
    data.dir_forward = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [wheel_name]
    data.wheel_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.wheel_name.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_sensor_msgs/WheelCount';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '646b4e36307f301fd26a03a7399d37d4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32  wheel_count   # [counts]
    bool    dir_forward   # true if moving forward
    string  wheel_name
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WheelCount(null);
    if (msg.wheel_count !== undefined) {
      resolved.wheel_count = msg.wheel_count;
    }
    else {
      resolved.wheel_count = 0
    }

    if (msg.dir_forward !== undefined) {
      resolved.dir_forward = msg.dir_forward;
    }
    else {
      resolved.dir_forward = false
    }

    if (msg.wheel_name !== undefined) {
      resolved.wheel_name = msg.wheel_name;
    }
    else {
      resolved.wheel_name = ''
    }

    return resolved;
    }
};

module.exports = WheelCount;
