// Auto-generated. Do not edit!

// (in-package ros_sensor_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let FixType = require('./FixType.js');

//-----------------------------------------------------------

class FixStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.fix = null;
      this.numSvs = null;
      this.ttff = null;
    }
    else {
      if (initObj.hasOwnProperty('fix')) {
        this.fix = initObj.fix
      }
      else {
        this.fix = new FixType();
      }
      if (initObj.hasOwnProperty('numSvs')) {
        this.numSvs = initObj.numSvs
      }
      else {
        this.numSvs = 0;
      }
      if (initObj.hasOwnProperty('ttff')) {
        this.ttff = initObj.ttff
      }
      else {
        this.ttff = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FixStatus
    // Serialize message field [fix]
    bufferOffset = FixType.serialize(obj.fix, buffer, bufferOffset);
    // Serialize message field [numSvs]
    bufferOffset = _serializer.uint32(obj.numSvs, buffer, bufferOffset);
    // Serialize message field [ttff]
    bufferOffset = _serializer.float64(obj.ttff, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FixStatus
    let len;
    let data = new FixStatus(null);
    // Deserialize message field [fix]
    data.fix = FixType.deserialize(buffer, bufferOffset);
    // Deserialize message field [numSvs]
    data.numSvs = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [ttff]
    data.ttff = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_sensor_msgs/FixStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '77b3f1a3a6c728c0e4055a4f39c84ef4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # # FixStatus
    
    FixType fix
    uint32  numSvs
    float64  ttff
    ================================================================================
    MSG: ros_sensor_msgs/FixType
    ## Fix Type
    
    uint8 FixTypeNone = 0
    uint8 FixTypeDeadReckoning = 1
    uint8 FixType2D = 2
    uint8 FixType3D = 3
    uint8 FixTypeDRand3D = 4 ## Dead reckoning and GPS fix
    uint8 FixTypeTimeOnly = 5
    uint8 FixTypeStatic = 9
    
    uint8 type
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FixStatus(null);
    if (msg.fix !== undefined) {
      resolved.fix = FixType.Resolve(msg.fix)
    }
    else {
      resolved.fix = new FixType()
    }

    if (msg.numSvs !== undefined) {
      resolved.numSvs = msg.numSvs;
    }
    else {
      resolved.numSvs = 0
    }

    if (msg.ttff !== undefined) {
      resolved.ttff = msg.ttff;
    }
    else {
      resolved.ttff = 0.0
    }

    return resolved;
    }
};

module.exports = FixStatus;
