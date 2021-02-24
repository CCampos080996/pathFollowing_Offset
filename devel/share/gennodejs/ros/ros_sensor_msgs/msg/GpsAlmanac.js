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

class GpsAlmanac {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.prn = null;
      this.reference_week = null;
      this.subframe = null;
    }
    else {
      if (initObj.hasOwnProperty('prn')) {
        this.prn = initObj.prn
      }
      else {
        this.prn = 0;
      }
      if (initObj.hasOwnProperty('reference_week')) {
        this.reference_week = initObj.reference_week
      }
      else {
        this.reference_week = 0;
      }
      if (initObj.hasOwnProperty('subframe')) {
        this.subframe = initObj.subframe
      }
      else {
        this.subframe = new Array(30).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GpsAlmanac
    // Serialize message field [prn]
    bufferOffset = _serializer.uint16(obj.prn, buffer, bufferOffset);
    // Serialize message field [reference_week]
    bufferOffset = _serializer.uint16(obj.reference_week, buffer, bufferOffset);
    // Check that the constant length array field [subframe] has the right length
    if (obj.subframe.length !== 30) {
      throw new Error('Unable to serialize array field subframe - length must be 30')
    }
    // Serialize message field [subframe]
    bufferOffset = _arraySerializer.uint8(obj.subframe, buffer, bufferOffset, 30);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GpsAlmanac
    let len;
    let data = new GpsAlmanac(null);
    // Deserialize message field [prn]
    data.prn = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [reference_week]
    data.reference_week = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [subframe]
    data.subframe = _arrayDeserializer.uint8(buffer, bufferOffset, 30)
    return data;
  }

  static getMessageSize(object) {
    return 34;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_sensor_msgs/GpsAlmanac';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0f1c30b6e49d1d575a6b6c2bf03fd6fa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    uint16      prn
    uint16      reference_week
    uint8[30]   subframe
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GpsAlmanac(null);
    if (msg.prn !== undefined) {
      resolved.prn = msg.prn;
    }
    else {
      resolved.prn = 0
    }

    if (msg.reference_week !== undefined) {
      resolved.reference_week = msg.reference_week;
    }
    else {
      resolved.reference_week = 0
    }

    if (msg.subframe !== undefined) {
      resolved.subframe = msg.subframe;
    }
    else {
      resolved.subframe = new Array(30).fill(0)
    }

    return resolved;
    }
};

module.exports = GpsAlmanac;
