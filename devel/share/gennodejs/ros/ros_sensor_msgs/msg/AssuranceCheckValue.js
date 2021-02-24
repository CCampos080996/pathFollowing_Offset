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

class AssuranceCheckValue {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.prn = null;
      this.checkVal = null;
    }
    else {
      if (initObj.hasOwnProperty('prn')) {
        this.prn = initObj.prn
      }
      else {
        this.prn = 0;
      }
      if (initObj.hasOwnProperty('checkVal')) {
        this.checkVal = initObj.checkVal
      }
      else {
        this.checkVal = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AssuranceCheckValue
    // Serialize message field [prn]
    bufferOffset = _serializer.uint32(obj.prn, buffer, bufferOffset);
    // Serialize message field [checkVal]
    bufferOffset = _serializer.uint32(obj.checkVal, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AssuranceCheckValue
    let len;
    let data = new AssuranceCheckValue(null);
    // Deserialize message field [prn]
    data.prn = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [checkVal]
    data.checkVal = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_sensor_msgs/AssuranceCheckValue';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a70b393a62ceefc4ae65dcd785400bfb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ## An assurance check value for a given prn
    
    uint32    prn
    uint32    checkVal
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AssuranceCheckValue(null);
    if (msg.prn !== undefined) {
      resolved.prn = msg.prn;
    }
    else {
      resolved.prn = 0
    }

    if (msg.checkVal !== undefined) {
      resolved.checkVal = msg.checkVal;
    }
    else {
      resolved.checkVal = 0
    }

    return resolved;
    }
};

module.exports = AssuranceCheckValue;
