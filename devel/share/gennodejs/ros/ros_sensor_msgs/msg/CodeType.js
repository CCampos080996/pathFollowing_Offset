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

class CodeType {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CodeType
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CodeType
    let len;
    let data = new CodeType(null);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_sensor_msgs/CodeType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '499f851ef67c04bdd8c13b2eb63a144a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ## Code Type
    
    uint8 CodeTypeUnknown         = 0
    uint8 CodeTypeGpsCa           = 1
    uint8 CodeTypeGpsP            = 2
    uint8 CodeTypeGpsPCodeless    = 3
    uint8 CodeTypeGpsY            = 4
    uint8 CodeTypeGpsC            = 5
    uint8 CodeTypeGpsCCodeless    = 6
    uint8 CodeTypeGpsM            = 8
    uint8 CodeTypeGpsMPrime       = 9
    
    uint8 CodeTypeGlonass  = 16
    uint8 CodeTypeGalileo  = 32
    
    uint8 type
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CodeType(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    return resolved;
    }
};

// Constants for message
CodeType.Constants = {
  CODETYPEUNKNOWN: 0,
  CODETYPEGPSCA: 1,
  CODETYPEGPSP: 2,
  CODETYPEGPSPCODELESS: 3,
  CODETYPEGPSY: 4,
  CODETYPEGPSC: 5,
  CODETYPEGPSCCODELESS: 6,
  CODETYPEGPSM: 8,
  CODETYPEGPSMPRIME: 9,
  CODETYPEGLONASS: 16,
  CODETYPEGALILEO: 32,
}

module.exports = CodeType;
