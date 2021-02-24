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

class ClockParameters {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.clock_bias = null;
      this.clock_drift = null;
    }
    else {
      if (initObj.hasOwnProperty('clock_bias')) {
        this.clock_bias = initObj.clock_bias
      }
      else {
        this.clock_bias = 0.0;
      }
      if (initObj.hasOwnProperty('clock_drift')) {
        this.clock_drift = initObj.clock_drift
      }
      else {
        this.clock_drift = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ClockParameters
    // Serialize message field [clock_bias]
    bufferOffset = _serializer.float64(obj.clock_bias, buffer, bufferOffset);
    // Serialize message field [clock_drift]
    bufferOffset = _serializer.float64(obj.clock_drift, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ClockParameters
    let len;
    let data = new ClockParameters(null);
    // Deserialize message field [clock_bias]
    data.clock_bias = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [clock_drift]
    data.clock_drift = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_sensor_msgs/ClockParameters';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '24edc28b4670d4220f6e8a16b9ececc2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ## Recevier clock parameters
    
    float64 clock_bias    # Receiver clock bias [sec]
    float64 clock_drift   # Receiver clock drift [sec/sec]
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ClockParameters(null);
    if (msg.clock_bias !== undefined) {
      resolved.clock_bias = msg.clock_bias;
    }
    else {
      resolved.clock_bias = 0.0
    }

    if (msg.clock_drift !== undefined) {
      resolved.clock_drift = msg.clock_drift;
    }
    else {
      resolved.clock_drift = 0.0
    }

    return resolved;
    }
};

module.exports = ClockParameters;
