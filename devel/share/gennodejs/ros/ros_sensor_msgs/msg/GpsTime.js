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

class GpsTime {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.gps_week = null;
      this.gps_seconds = null;
    }
    else {
      if (initObj.hasOwnProperty('gps_week')) {
        this.gps_week = initObj.gps_week
      }
      else {
        this.gps_week = 0;
      }
      if (initObj.hasOwnProperty('gps_seconds')) {
        this.gps_seconds = initObj.gps_seconds
      }
      else {
        this.gps_seconds = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GpsTime
    // Serialize message field [gps_week]
    bufferOffset = _serializer.uint32(obj.gps_week, buffer, bufferOffset);
    // Serialize message field [gps_seconds]
    bufferOffset = _serializer.float64(obj.gps_seconds, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GpsTime
    let len;
    let data = new GpsTime(null);
    // Deserialize message field [gps_week]
    data.gps_week = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [gps_seconds]
    data.gps_seconds = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_sensor_msgs/GpsTime';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '137ebf93fd4c356decbd306ad6f360b9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ## GPS time structure
    uint32          gps_week        # Full GPS week from (0:0:00 Jan 06, 1980)
    float64         gps_seconds     # GPS seconds into week [sec]
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GpsTime(null);
    if (msg.gps_week !== undefined) {
      resolved.gps_week = msg.gps_week;
    }
    else {
      resolved.gps_week = 0
    }

    if (msg.gps_seconds !== undefined) {
      resolved.gps_seconds = msg.gps_seconds;
    }
    else {
      resolved.gps_seconds = 0.0
    }

    return resolved;
    }
};

module.exports = GpsTime;
