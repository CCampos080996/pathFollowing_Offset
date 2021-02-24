// Auto-generated. Do not edit!

// (in-package drtk.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class DrtkOutputState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DrtkOutputState
    // Serialize message field [state]
    bufferOffset = _serializer.uint8(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DrtkOutputState
    let len;
    let data = new DrtkOutputState(null);
    // Deserialize message field [state]
    data.state = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'drtk/DrtkOutputState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '67e2d094bf94231fdd9d2866239c68fd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # DrtkOutputState
    
    uint8 Unknown = 0
    uint8 PositionDifferenceSolution = 1
    uint8 PseudorangeOnlySolution = 2
    uint8 LowPrecisionSolution = 3
    uint8 HighPrecisionSolution = 4 
    
    uint8 state
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DrtkOutputState(null);
    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = 0
    }

    return resolved;
    }
};

// Constants for message
DrtkOutputState.Constants = {
  UNKNOWN: 0,
  POSITIONDIFFERENCESOLUTION: 1,
  PSEUDORANGEONLYSOLUTION: 2,
  LOWPRECISIONSOLUTION: 3,
  HIGHPRECISIONSOLUTION: 4,
}

module.exports = DrtkOutputState;
