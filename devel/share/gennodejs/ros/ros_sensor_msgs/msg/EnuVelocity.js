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

class EnuVelocity {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.eastVelocity = null;
      this.northVelocity = null;
      this.upVelocity = null;
      this.horizontalAccuracy = null;
      this.verticalAccuracy = null;
    }
    else {
      if (initObj.hasOwnProperty('eastVelocity')) {
        this.eastVelocity = initObj.eastVelocity
      }
      else {
        this.eastVelocity = 0.0;
      }
      if (initObj.hasOwnProperty('northVelocity')) {
        this.northVelocity = initObj.northVelocity
      }
      else {
        this.northVelocity = 0.0;
      }
      if (initObj.hasOwnProperty('upVelocity')) {
        this.upVelocity = initObj.upVelocity
      }
      else {
        this.upVelocity = 0.0;
      }
      if (initObj.hasOwnProperty('horizontalAccuracy')) {
        this.horizontalAccuracy = initObj.horizontalAccuracy
      }
      else {
        this.horizontalAccuracy = 0.0;
      }
      if (initObj.hasOwnProperty('verticalAccuracy')) {
        this.verticalAccuracy = initObj.verticalAccuracy
      }
      else {
        this.verticalAccuracy = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EnuVelocity
    // Serialize message field [eastVelocity]
    bufferOffset = _serializer.float64(obj.eastVelocity, buffer, bufferOffset);
    // Serialize message field [northVelocity]
    bufferOffset = _serializer.float64(obj.northVelocity, buffer, bufferOffset);
    // Serialize message field [upVelocity]
    bufferOffset = _serializer.float64(obj.upVelocity, buffer, bufferOffset);
    // Serialize message field [horizontalAccuracy]
    bufferOffset = _serializer.float32(obj.horizontalAccuracy, buffer, bufferOffset);
    // Serialize message field [verticalAccuracy]
    bufferOffset = _serializer.float32(obj.verticalAccuracy, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EnuVelocity
    let len;
    let data = new EnuVelocity(null);
    // Deserialize message field [eastVelocity]
    data.eastVelocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [northVelocity]
    data.northVelocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [upVelocity]
    data.upVelocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [horizontalAccuracy]
    data.horizontalAccuracy = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [verticalAccuracy]
    data.verticalAccuracy = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_sensor_msgs/EnuVelocity';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '35b89ee4c05fa6d6175468cce6ddc8fd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64					 eastVelocity
    float64                  northVelocity
    float64                  upVelocity
    float32                  horizontalAccuracy
    float32                  verticalAccuracy    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EnuVelocity(null);
    if (msg.eastVelocity !== undefined) {
      resolved.eastVelocity = msg.eastVelocity;
    }
    else {
      resolved.eastVelocity = 0.0
    }

    if (msg.northVelocity !== undefined) {
      resolved.northVelocity = msg.northVelocity;
    }
    else {
      resolved.northVelocity = 0.0
    }

    if (msg.upVelocity !== undefined) {
      resolved.upVelocity = msg.upVelocity;
    }
    else {
      resolved.upVelocity = 0.0
    }

    if (msg.horizontalAccuracy !== undefined) {
      resolved.horizontalAccuracy = msg.horizontalAccuracy;
    }
    else {
      resolved.horizontalAccuracy = 0.0
    }

    if (msg.verticalAccuracy !== undefined) {
      resolved.verticalAccuracy = msg.verticalAccuracy;
    }
    else {
      resolved.verticalAccuracy = 0.0
    }

    return resolved;
    }
};

module.exports = EnuVelocity;
