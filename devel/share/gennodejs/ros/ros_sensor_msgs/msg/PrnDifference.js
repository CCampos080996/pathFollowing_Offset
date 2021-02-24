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

class PrnDifference {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.prn = null;
      this.difference = null;
    }
    else {
      if (initObj.hasOwnProperty('prn')) {
        this.prn = initObj.prn
      }
      else {
        this.prn = 0;
      }
      if (initObj.hasOwnProperty('difference')) {
        this.difference = initObj.difference
      }
      else {
        this.difference = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PrnDifference
    // Serialize message field [prn]
    bufferOffset = _serializer.uint32(obj.prn, buffer, bufferOffset);
    // Serialize message field [difference]
    bufferOffset = _serializer.float64(obj.difference, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PrnDifference
    let len;
    let data = new PrnDifference(null);
    // Deserialize message field [prn]
    data.prn = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [difference]
    data.difference = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_sensor_msgs/PrnDifference';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c858497f90c1f6e07daed8d782b2a3cd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32   prn
    float64  difference
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PrnDifference(null);
    if (msg.prn !== undefined) {
      resolved.prn = msg.prn;
    }
    else {
      resolved.prn = 0
    }

    if (msg.difference !== undefined) {
      resolved.difference = msg.difference;
    }
    else {
      resolved.difference = 0.0
    }

    return resolved;
    }
};

module.exports = PrnDifference;
