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

class UtcIonosphere {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.subframe = null;
    }
    else {
      if (initObj.hasOwnProperty('subframe')) {
        this.subframe = initObj.subframe
      }
      else {
        this.subframe = new Array(30).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UtcIonosphere
    // Check that the constant length array field [subframe] has the right length
    if (obj.subframe.length !== 30) {
      throw new Error('Unable to serialize array field subframe - length must be 30')
    }
    // Serialize message field [subframe]
    bufferOffset = _arraySerializer.uint8(obj.subframe, buffer, bufferOffset, 30);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UtcIonosphere
    let len;
    let data = new UtcIonosphere(null);
    // Deserialize message field [subframe]
    data.subframe = _arrayDeserializer.uint8(buffer, bufferOffset, 30)
    return data;
  }

  static getMessageSize(object) {
    return 30;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_sensor_msgs/UtcIonosphere';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c92739dcbce54dec72a584c1ec4e54c7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ## Subframe of UTC and Ionospheric Parameters
    
    uint8[30]   subframe
    
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UtcIonosphere(null);
    if (msg.subframe !== undefined) {
      resolved.subframe = msg.subframe;
    }
    else {
      resolved.subframe = new Array(30).fill(0)
    }

    return resolved;
    }
};

module.exports = UtcIonosphere;
