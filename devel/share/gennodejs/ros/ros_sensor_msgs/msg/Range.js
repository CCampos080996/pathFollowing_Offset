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

class Range {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.end_point_id = null;
      this.range = null;
    }
    else {
      if (initObj.hasOwnProperty('end_point_id')) {
        this.end_point_id = initObj.end_point_id
      }
      else {
        this.end_point_id = '';
      }
      if (initObj.hasOwnProperty('range')) {
        this.range = initObj.range
      }
      else {
        this.range = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Range
    // Serialize message field [end_point_id]
    bufferOffset = _serializer.string(obj.end_point_id, buffer, bufferOffset);
    // Serialize message field [range]
    bufferOffset = _serializer.float64(obj.range, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Range
    let len;
    let data = new Range(null);
    // Deserialize message field [end_point_id]
    data.end_point_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [range]
    data.range = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.end_point_id.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_sensor_msgs/Range';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e5ee2cd940f60a30182714cdfd9f49b4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Range to specified object
    string  end_point_id
    float64 range
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Range(null);
    if (msg.end_point_id !== undefined) {
      resolved.end_point_id = msg.end_point_id;
    }
    else {
      resolved.end_point_id = ''
    }

    if (msg.range !== undefined) {
      resolved.range = msg.range;
    }
    else {
      resolved.range = 0.0
    }

    return resolved;
    }
};

module.exports = Range;
