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

class RcvrCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.rcvr_cmd = null;
    }
    else {
      if (initObj.hasOwnProperty('rcvr_cmd')) {
        this.rcvr_cmd = initObj.rcvr_cmd
      }
      else {
        this.rcvr_cmd = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RcvrCommand
    // Serialize message field [rcvr_cmd]
    bufferOffset = _serializer.uint8(obj.rcvr_cmd, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RcvrCommand
    let len;
    let data = new RcvrCommand(null);
    // Deserialize message field [rcvr_cmd]
    data.rcvr_cmd = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_sensor_msgs/RcvrCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1e0d96ca5be79f9b64d93ff7047bbbe8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 ZEROIZE = 0
    uint8 CLEAR_SAAS_KEYS = 1
    uint8 COLD_RESET = 2
    uint8 WARM_RESET = 3
    uint8 HOT_RESET = 4
    uint8 CONNECT = 5
    uint8 DISCONNECT = 6
    
    uint8 rcvr_cmd
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RcvrCommand(null);
    if (msg.rcvr_cmd !== undefined) {
      resolved.rcvr_cmd = msg.rcvr_cmd;
    }
    else {
      resolved.rcvr_cmd = 0
    }

    return resolved;
    }
};

// Constants for message
RcvrCommand.Constants = {
  ZEROIZE: 0,
  CLEAR_SAAS_KEYS: 1,
  COLD_RESET: 2,
  WARM_RESET: 3,
  HOT_RESET: 4,
  CONNECT: 5,
  DISCONNECT: 6,
}

module.exports = RcvrCommand;
