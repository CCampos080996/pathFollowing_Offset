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

class CmdGpsAssist {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.assist_time = null;
      this.assist_position = null;
      this.assist_gps_ephemeris = null;
      this.assist_gps_almanac = null;
      this.assist_gps_utc_iono = null;
      this.assist_precise_time = null;
    }
    else {
      if (initObj.hasOwnProperty('assist_time')) {
        this.assist_time = initObj.assist_time
      }
      else {
        this.assist_time = false;
      }
      if (initObj.hasOwnProperty('assist_position')) {
        this.assist_position = initObj.assist_position
      }
      else {
        this.assist_position = false;
      }
      if (initObj.hasOwnProperty('assist_gps_ephemeris')) {
        this.assist_gps_ephemeris = initObj.assist_gps_ephemeris
      }
      else {
        this.assist_gps_ephemeris = false;
      }
      if (initObj.hasOwnProperty('assist_gps_almanac')) {
        this.assist_gps_almanac = initObj.assist_gps_almanac
      }
      else {
        this.assist_gps_almanac = false;
      }
      if (initObj.hasOwnProperty('assist_gps_utc_iono')) {
        this.assist_gps_utc_iono = initObj.assist_gps_utc_iono
      }
      else {
        this.assist_gps_utc_iono = false;
      }
      if (initObj.hasOwnProperty('assist_precise_time')) {
        this.assist_precise_time = initObj.assist_precise_time
      }
      else {
        this.assist_precise_time = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CmdGpsAssist
    // Serialize message field [assist_time]
    bufferOffset = _serializer.bool(obj.assist_time, buffer, bufferOffset);
    // Serialize message field [assist_position]
    bufferOffset = _serializer.bool(obj.assist_position, buffer, bufferOffset);
    // Serialize message field [assist_gps_ephemeris]
    bufferOffset = _serializer.bool(obj.assist_gps_ephemeris, buffer, bufferOffset);
    // Serialize message field [assist_gps_almanac]
    bufferOffset = _serializer.bool(obj.assist_gps_almanac, buffer, bufferOffset);
    // Serialize message field [assist_gps_utc_iono]
    bufferOffset = _serializer.bool(obj.assist_gps_utc_iono, buffer, bufferOffset);
    // Serialize message field [assist_precise_time]
    bufferOffset = _serializer.bool(obj.assist_precise_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CmdGpsAssist
    let len;
    let data = new CmdGpsAssist(null);
    // Deserialize message field [assist_time]
    data.assist_time = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [assist_position]
    data.assist_position = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [assist_gps_ephemeris]
    data.assist_gps_ephemeris = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [assist_gps_almanac]
    data.assist_gps_almanac = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [assist_gps_utc_iono]
    data.assist_gps_utc_iono = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [assist_precise_time]
    data.assist_precise_time = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_sensor_msgs/CmdGpsAssist';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9888cfe375cffb0c1d61c05b99896408';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool assist_time
    bool assist_position
    bool assist_gps_ephemeris
    bool assist_gps_almanac
    bool assist_gps_utc_iono
    bool assist_precise_time
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CmdGpsAssist(null);
    if (msg.assist_time !== undefined) {
      resolved.assist_time = msg.assist_time;
    }
    else {
      resolved.assist_time = false
    }

    if (msg.assist_position !== undefined) {
      resolved.assist_position = msg.assist_position;
    }
    else {
      resolved.assist_position = false
    }

    if (msg.assist_gps_ephemeris !== undefined) {
      resolved.assist_gps_ephemeris = msg.assist_gps_ephemeris;
    }
    else {
      resolved.assist_gps_ephemeris = false
    }

    if (msg.assist_gps_almanac !== undefined) {
      resolved.assist_gps_almanac = msg.assist_gps_almanac;
    }
    else {
      resolved.assist_gps_almanac = false
    }

    if (msg.assist_gps_utc_iono !== undefined) {
      resolved.assist_gps_utc_iono = msg.assist_gps_utc_iono;
    }
    else {
      resolved.assist_gps_utc_iono = false
    }

    if (msg.assist_precise_time !== undefined) {
      resolved.assist_precise_time = msg.assist_precise_time;
    }
    else {
      resolved.assist_precise_time = false
    }

    return resolved;
    }
};

module.exports = CmdGpsAssist;
