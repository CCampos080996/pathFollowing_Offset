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

class SvRae {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.prn = null;
      this.range = null;
      this.az = null;
      this.el = null;
    }
    else {
      if (initObj.hasOwnProperty('prn')) {
        this.prn = initObj.prn
      }
      else {
        this.prn = 0;
      }
      if (initObj.hasOwnProperty('range')) {
        this.range = initObj.range
      }
      else {
        this.range = 0.0;
      }
      if (initObj.hasOwnProperty('az')) {
        this.az = initObj.az
      }
      else {
        this.az = 0.0;
      }
      if (initObj.hasOwnProperty('el')) {
        this.el = initObj.el
      }
      else {
        this.el = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SvRae
    // Serialize message field [prn]
    bufferOffset = _serializer.uint32(obj.prn, buffer, bufferOffset);
    // Serialize message field [range]
    bufferOffset = _serializer.float64(obj.range, buffer, bufferOffset);
    // Serialize message field [az]
    bufferOffset = _serializer.float64(obj.az, buffer, bufferOffset);
    // Serialize message field [el]
    bufferOffset = _serializer.float64(obj.el, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SvRae
    let len;
    let data = new SvRae(null);
    // Deserialize message field [prn]
    data.prn = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [range]
    data.range = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [az]
    data.az = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [el]
    data.el = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_sensor_msgs/SvRae';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd34951c1a7060337ca1e7e3cb824c99d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Range, az, and el information
    
    uint32          prn            # GPS [1-32], GLONASS may be negative
    float64         range          # range to a satellite vehicle from a point [m]
    float64         az             # relative azimuth angle to a satellite vehicle from a point [deg]
    float64         el             # relateive elevation angle to a satellite vehicle from a point [deg]
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SvRae(null);
    if (msg.prn !== undefined) {
      resolved.prn = msg.prn;
    }
    else {
      resolved.prn = 0
    }

    if (msg.range !== undefined) {
      resolved.range = msg.range;
    }
    else {
      resolved.range = 0.0
    }

    if (msg.az !== undefined) {
      resolved.az = msg.az;
    }
    else {
      resolved.az = 0.0
    }

    if (msg.el !== undefined) {
      resolved.el = msg.el;
    }
    else {
      resolved.el = 0.0
    }

    return resolved;
    }
};

module.exports = SvRae;
