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

class GpsEphemeris {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.prn = null;
      this.subframe1 = null;
      this.subframe2 = null;
      this.subframe3 = null;
    }
    else {
      if (initObj.hasOwnProperty('prn')) {
        this.prn = initObj.prn
      }
      else {
        this.prn = 0;
      }
      if (initObj.hasOwnProperty('subframe1')) {
        this.subframe1 = initObj.subframe1
      }
      else {
        this.subframe1 = new Array(30).fill(0);
      }
      if (initObj.hasOwnProperty('subframe2')) {
        this.subframe2 = initObj.subframe2
      }
      else {
        this.subframe2 = new Array(30).fill(0);
      }
      if (initObj.hasOwnProperty('subframe3')) {
        this.subframe3 = initObj.subframe3
      }
      else {
        this.subframe3 = new Array(30).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GpsEphemeris
    // Serialize message field [prn]
    bufferOffset = _serializer.uint16(obj.prn, buffer, bufferOffset);
    // Check that the constant length array field [subframe1] has the right length
    if (obj.subframe1.length !== 30) {
      throw new Error('Unable to serialize array field subframe1 - length must be 30')
    }
    // Serialize message field [subframe1]
    bufferOffset = _arraySerializer.uint8(obj.subframe1, buffer, bufferOffset, 30);
    // Check that the constant length array field [subframe2] has the right length
    if (obj.subframe2.length !== 30) {
      throw new Error('Unable to serialize array field subframe2 - length must be 30')
    }
    // Serialize message field [subframe2]
    bufferOffset = _arraySerializer.uint8(obj.subframe2, buffer, bufferOffset, 30);
    // Check that the constant length array field [subframe3] has the right length
    if (obj.subframe3.length !== 30) {
      throw new Error('Unable to serialize array field subframe3 - length must be 30')
    }
    // Serialize message field [subframe3]
    bufferOffset = _arraySerializer.uint8(obj.subframe3, buffer, bufferOffset, 30);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GpsEphemeris
    let len;
    let data = new GpsEphemeris(null);
    // Deserialize message field [prn]
    data.prn = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [subframe1]
    data.subframe1 = _arrayDeserializer.uint8(buffer, bufferOffset, 30)
    // Deserialize message field [subframe2]
    data.subframe2 = _arrayDeserializer.uint8(buffer, bufferOffset, 30)
    // Deserialize message field [subframe3]
    data.subframe3 = _arrayDeserializer.uint8(buffer, bufferOffset, 30)
    return data;
  }

  static getMessageSize(object) {
    return 92;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_sensor_msgs/GpsEphemeris';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '572e67f241916f12c8e2d567d3205ad7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ## Gps Ephemeris subframes for one satellite
    
    uint16      prn
    uint8[30]   subframe1
    uint8[30]   subframe2
    uint8[30]   subframe3
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GpsEphemeris(null);
    if (msg.prn !== undefined) {
      resolved.prn = msg.prn;
    }
    else {
      resolved.prn = 0
    }

    if (msg.subframe1 !== undefined) {
      resolved.subframe1 = msg.subframe1;
    }
    else {
      resolved.subframe1 = new Array(30).fill(0)
    }

    if (msg.subframe2 !== undefined) {
      resolved.subframe2 = msg.subframe2;
    }
    else {
      resolved.subframe2 = new Array(30).fill(0)
    }

    if (msg.subframe3 !== undefined) {
      resolved.subframe3 = msg.subframe3;
    }
    else {
      resolved.subframe3 = new Array(30).fill(0)
    }

    return resolved;
    }
};

module.exports = GpsEphemeris;
