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

class LlhPosition {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.latitude = null;
      this.longitude = null;
      this.altitude = null;
      this.horizontalAccuracy = null;
      this.verticalAccuracy = null;
    }
    else {
      if (initObj.hasOwnProperty('latitude')) {
        this.latitude = initObj.latitude
      }
      else {
        this.latitude = 0.0;
      }
      if (initObj.hasOwnProperty('longitude')) {
        this.longitude = initObj.longitude
      }
      else {
        this.longitude = 0.0;
      }
      if (initObj.hasOwnProperty('altitude')) {
        this.altitude = initObj.altitude
      }
      else {
        this.altitude = 0.0;
      }
      if (initObj.hasOwnProperty('horizontalAccuracy')) {
        this.horizontalAccuracy = initObj.horizontalAccuracy
      }
      else {
        this.horizontalAccuracy = 0;
      }
      if (initObj.hasOwnProperty('verticalAccuracy')) {
        this.verticalAccuracy = initObj.verticalAccuracy
      }
      else {
        this.verticalAccuracy = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LlhPosition
    // Serialize message field [latitude]
    bufferOffset = _serializer.float64(obj.latitude, buffer, bufferOffset);
    // Serialize message field [longitude]
    bufferOffset = _serializer.float64(obj.longitude, buffer, bufferOffset);
    // Serialize message field [altitude]
    bufferOffset = _serializer.float64(obj.altitude, buffer, bufferOffset);
    // Serialize message field [horizontalAccuracy]
    bufferOffset = _serializer.uint16(obj.horizontalAccuracy, buffer, bufferOffset);
    // Serialize message field [verticalAccuracy]
    bufferOffset = _serializer.uint16(obj.verticalAccuracy, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LlhPosition
    let len;
    let data = new LlhPosition(null);
    // Deserialize message field [latitude]
    data.latitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [longitude]
    data.longitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [altitude]
    data.altitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [horizontalAccuracy]
    data.horizontalAccuracy = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [verticalAccuracy]
    data.verticalAccuracy = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_sensor_msgs/LlhPosition';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c6f425fbcae84dae779ac1c441d3712e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # # LlhPosition
    
    float64                  latitude   # [deg]
    float64                  longitude  # [deg]
    float64                  altitude   # [m]
    uint16                   horizontalAccuracy
    uint16                   verticalAccuracy
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LlhPosition(null);
    if (msg.latitude !== undefined) {
      resolved.latitude = msg.latitude;
    }
    else {
      resolved.latitude = 0.0
    }

    if (msg.longitude !== undefined) {
      resolved.longitude = msg.longitude;
    }
    else {
      resolved.longitude = 0.0
    }

    if (msg.altitude !== undefined) {
      resolved.altitude = msg.altitude;
    }
    else {
      resolved.altitude = 0.0
    }

    if (msg.horizontalAccuracy !== undefined) {
      resolved.horizontalAccuracy = msg.horizontalAccuracy;
    }
    else {
      resolved.horizontalAccuracy = 0
    }

    if (msg.verticalAccuracy !== undefined) {
      resolved.verticalAccuracy = msg.verticalAccuracy;
    }
    else {
      resolved.verticalAccuracy = 0
    }

    return resolved;
    }
};

module.exports = LlhPosition;
