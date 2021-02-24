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

class SteerAngle {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.steer_angle = null;
      this.steer_angle_variance = null;
      this.steer_angle_rate = null;
      this.steer_angle_rate_variance = null;
      this.wheel_name = null;
    }
    else {
      if (initObj.hasOwnProperty('steer_angle')) {
        this.steer_angle = initObj.steer_angle
      }
      else {
        this.steer_angle = 0.0;
      }
      if (initObj.hasOwnProperty('steer_angle_variance')) {
        this.steer_angle_variance = initObj.steer_angle_variance
      }
      else {
        this.steer_angle_variance = 0.0;
      }
      if (initObj.hasOwnProperty('steer_angle_rate')) {
        this.steer_angle_rate = initObj.steer_angle_rate
      }
      else {
        this.steer_angle_rate = 0.0;
      }
      if (initObj.hasOwnProperty('steer_angle_rate_variance')) {
        this.steer_angle_rate_variance = initObj.steer_angle_rate_variance
      }
      else {
        this.steer_angle_rate_variance = 0.0;
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
    // Serializes a message object of type SteerAngle
    // Serialize message field [steer_angle]
    bufferOffset = _serializer.float64(obj.steer_angle, buffer, bufferOffset);
    // Serialize message field [steer_angle_variance]
    bufferOffset = _serializer.float64(obj.steer_angle_variance, buffer, bufferOffset);
    // Serialize message field [steer_angle_rate]
    bufferOffset = _serializer.float64(obj.steer_angle_rate, buffer, bufferOffset);
    // Serialize message field [steer_angle_rate_variance]
    bufferOffset = _serializer.float64(obj.steer_angle_rate_variance, buffer, bufferOffset);
    // Serialize message field [wheel_name]
    bufferOffset = _serializer.string(obj.wheel_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SteerAngle
    let len;
    let data = new SteerAngle(null);
    // Deserialize message field [steer_angle]
    data.steer_angle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [steer_angle_variance]
    data.steer_angle_variance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [steer_angle_rate]
    data.steer_angle_rate = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [steer_angle_rate_variance]
    data.steer_angle_rate_variance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [wheel_name]
    data.wheel_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.wheel_name.length;
    return length + 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_sensor_msgs/SteerAngle';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c00ba70d13b583019559e4ba72c1a15a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64    steer_angle				 # rad
    float64    steer_angle_variance 	 # rad^2
    float64    steer_angle_rate          # rad/s
    float64    steer_angle_rate_variance # (rad/s)^2
    string     wheel_name
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SteerAngle(null);
    if (msg.steer_angle !== undefined) {
      resolved.steer_angle = msg.steer_angle;
    }
    else {
      resolved.steer_angle = 0.0
    }

    if (msg.steer_angle_variance !== undefined) {
      resolved.steer_angle_variance = msg.steer_angle_variance;
    }
    else {
      resolved.steer_angle_variance = 0.0
    }

    if (msg.steer_angle_rate !== undefined) {
      resolved.steer_angle_rate = msg.steer_angle_rate;
    }
    else {
      resolved.steer_angle_rate = 0.0
    }

    if (msg.steer_angle_rate_variance !== undefined) {
      resolved.steer_angle_rate_variance = msg.steer_angle_rate_variance;
    }
    else {
      resolved.steer_angle_rate_variance = 0.0
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

module.exports = SteerAngle;
