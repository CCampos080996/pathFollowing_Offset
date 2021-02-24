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

class FrequencyType {
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
    // Serializes a message object of type FrequencyType
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FrequencyType
    let len;
    let data = new FrequencyType(null);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_sensor_msgs/FrequencyType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0401b2908f64151d32113b6c4ffdc15a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ## Frequency Type
    
    uint8 FrequencyTypeUnknown      = 0
    uint8 FrequencyTypeL1           = 1
    uint8 FrequencyTypeL2           = 2
    uint8 FrequencyTypeL5           = 3
    uint8 FrequencyTypeGalileoE1    = 4
    uint8 FrequencyTypeGalileoE5    = 5
    uint8 FrequencyTypeGalileoE6    = 6
    uint8 FrequencyTypeGalileoC     = 7
    uint8 FrequencyTypeGlonassL1F   = 8
    uint8 FrequencyTypeGlonassL2F   = 9
    uint8 FrequencyTypeGlonassL1C   = 10
    uint8 FrequencyTypeGlonassL2C   = 11
    uint8 FrequencyTypeGlonassL3C   = 12
    
    uint8 type
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FrequencyType(null);
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
FrequencyType.Constants = {
  FREQUENCYTYPEUNKNOWN: 0,
  FREQUENCYTYPEL1: 1,
  FREQUENCYTYPEL2: 2,
  FREQUENCYTYPEL5: 3,
  FREQUENCYTYPEGALILEOE1: 4,
  FREQUENCYTYPEGALILEOE5: 5,
  FREQUENCYTYPEGALILEOE6: 6,
  FREQUENCYTYPEGALILEOC: 7,
  FREQUENCYTYPEGLONASSL1F: 8,
  FREQUENCYTYPEGLONASSL2F: 9,
  FREQUENCYTYPEGLONASSL1C: 10,
  FREQUENCYTYPEGLONASSL2C: 11,
  FREQUENCYTYPEGLONASSL3C: 12,
}

module.exports = FrequencyType;
