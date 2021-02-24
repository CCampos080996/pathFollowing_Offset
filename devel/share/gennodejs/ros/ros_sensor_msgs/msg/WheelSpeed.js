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

class WheelSpeed {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.wheel_speed = null;
      this.wheel_speed_variance = null;
      this.wheel_name = null;
    }
    else {
      if (initObj.hasOwnProperty('wheel_speed')) {
        this.wheel_speed = initObj.wheel_speed
      }
      else {
        this.wheel_speed = 0.0;
      }
      if (initObj.hasOwnProperty('wheel_speed_variance')) {
        this.wheel_speed_variance = initObj.wheel_speed_variance
      }
      else {
        this.wheel_speed_variance = 0.0;
      }
      if (initObj.hasOwnProperty('wheel_name')) {
        this.wheel_name = initObj.wheel_name
      }
      else {
        this.wheel_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WheelSpeed
    // Serialize message field [wheel_speed]
    bufferOffset = _serializer.float64(obj.wheel_speed, buffer, bufferOffset);
    // Serialize message field [wheel_speed_variance]
    bufferOffset = _serializer.float32(obj.wheel_speed_variance, buffer, bufferOffset);
    // Serialize message field [wheel_name]
    bufferOffset = _serializer.string(obj.wheel_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WheelSpeed
    let len;
    let data = new WheelSpeed(null);
    // Deserialize message field [wheel_speed]
    data.wheel_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [wheel_speed_variance]
    data.wheel_speed_variance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [wheel_name]
    data.wheel_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.wheel_name.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_sensor_msgs/WheelSpeed';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a79d594773fea65f5c40acf76550658c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 	wheel_speed				    # m/s
    float32 	wheel_speed_variance 	# (m/s)^2
    string    wheel_name
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WheelSpeed(null);
    if (msg.wheel_speed !== undefined) {
      resolved.wheel_speed = msg.wheel_speed;
    }
    else {
      resolved.wheel_speed = 0.0
    }

    if (msg.wheel_speed_variance !== undefined) {
      resolved.wheel_speed_variance = msg.wheel_speed_variance;
    }
    else {
      resolved.wheel_speed_variance = 0.0
    }

    if (msg.wheel_name !== undefined) {
      resolved.wheel_name = msg.wheel_name;
    }
    else {
      resolved.wheel_name = ''
    }

    return resolved;
    }
};

module.exports = WheelSpeed;
