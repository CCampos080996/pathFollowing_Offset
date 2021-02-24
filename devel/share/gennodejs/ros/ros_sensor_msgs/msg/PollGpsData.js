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

class PollGpsData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pvt = null;
      this.ephemeris = null;
      this.almanac = null;
      this.utc_iono = null;
      this.ranges = null;
    }
    else {
      if (initObj.hasOwnProperty('pvt')) {
        this.pvt = initObj.pvt
      }
      else {
        this.pvt = false;
      }
      if (initObj.hasOwnProperty('ephemeris')) {
        this.ephemeris = initObj.ephemeris
      }
      else {
        this.ephemeris = false;
      }
      if (initObj.hasOwnProperty('almanac')) {
        this.almanac = initObj.almanac
      }
      else {
        this.almanac = false;
      }
      if (initObj.hasOwnProperty('utc_iono')) {
        this.utc_iono = initObj.utc_iono
      }
      else {
        this.utc_iono = false;
      }
      if (initObj.hasOwnProperty('ranges')) {
        this.ranges = initObj.ranges
      }
      else {
        this.ranges = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PollGpsData
    // Serialize message field [pvt]
    bufferOffset = _serializer.bool(obj.pvt, buffer, bufferOffset);
    // Serialize message field [ephemeris]
    bufferOffset = _serializer.bool(obj.ephemeris, buffer, bufferOffset);
    // Serialize message field [almanac]
    bufferOffset = _serializer.bool(obj.almanac, buffer, bufferOffset);
    // Serialize message field [utc_iono]
    bufferOffset = _serializer.bool(obj.utc_iono, buffer, bufferOffset);
    // Serialize message field [ranges]
    bufferOffset = _serializer.bool(obj.ranges, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PollGpsData
    let len;
    let data = new PollGpsData(null);
    // Deserialize message field [pvt]
    data.pvt = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ephemeris]
    data.ephemeris = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [almanac]
    data.almanac = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [utc_iono]
    data.utc_iono = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ranges]
    data.ranges = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_sensor_msgs/PollGpsData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '92871acf07b81d655c7b80e6382140a2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool    pvt
    bool    ephemeris
    bool    almanac
    bool    utc_iono
    bool    ranges
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PollGpsData(null);
    if (msg.pvt !== undefined) {
      resolved.pvt = msg.pvt;
    }
    else {
      resolved.pvt = false
    }

    if (msg.ephemeris !== undefined) {
      resolved.ephemeris = msg.ephemeris;
    }
    else {
      resolved.ephemeris = false
    }

    if (msg.almanac !== undefined) {
      resolved.almanac = msg.almanac;
    }
    else {
      resolved.almanac = false
    }

    if (msg.utc_iono !== undefined) {
      resolved.utc_iono = msg.utc_iono;
    }
    else {
      resolved.utc_iono = false
    }

    if (msg.ranges !== undefined) {
      resolved.ranges = msg.ranges;
    }
    else {
      resolved.ranges = false
    }

    return resolved;
    }
};

module.exports = PollGpsData;
