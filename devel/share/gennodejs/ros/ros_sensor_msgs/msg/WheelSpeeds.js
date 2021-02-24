// Auto-generated. Do not edit!

// (in-package ros_sensor_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let WheelSpeed = require('./WheelSpeed.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class WheelSpeeds {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.timestamp = null;
      this.dt = null;
      this.wheelSpeeds = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('timestamp')) {
        this.timestamp = initObj.timestamp
      }
      else {
        this.timestamp = 0;
      }
      if (initObj.hasOwnProperty('dt')) {
        this.dt = initObj.dt
      }
      else {
        this.dt = 0.0;
      }
      if (initObj.hasOwnProperty('wheelSpeeds')) {
        this.wheelSpeeds = initObj.wheelSpeeds
      }
      else {
        this.wheelSpeeds = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WheelSpeeds
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [timestamp]
    bufferOffset = _serializer.uint32(obj.timestamp, buffer, bufferOffset);
    // Serialize message field [dt]
    bufferOffset = _serializer.float32(obj.dt, buffer, bufferOffset);
    // Serialize message field [wheelSpeeds]
    // Serialize the length for message field [wheelSpeeds]
    bufferOffset = _serializer.uint32(obj.wheelSpeeds.length, buffer, bufferOffset);
    obj.wheelSpeeds.forEach((val) => {
      bufferOffset = WheelSpeed.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WheelSpeeds
    let len;
    let data = new WheelSpeeds(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [dt]
    data.dt = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [wheelSpeeds]
    // Deserialize array length for message field [wheelSpeeds]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.wheelSpeeds = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.wheelSpeeds[i] = WheelSpeed.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.wheelSpeeds.forEach((val) => {
      length += WheelSpeed.getMessageSize(val);
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_sensor_msgs/WheelSpeeds';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '52eb70e4e79e2d8a61fc2e247cb46e3f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    uint32 timestamp  # [counts]
    float32 dt  # [sec]
    WheelSpeed[] wheelSpeeds
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: ros_sensor_msgs/WheelSpeed
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
    const resolved = new WheelSpeeds(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.timestamp !== undefined) {
      resolved.timestamp = msg.timestamp;
    }
    else {
      resolved.timestamp = 0
    }

    if (msg.dt !== undefined) {
      resolved.dt = msg.dt;
    }
    else {
      resolved.dt = 0.0
    }

    if (msg.wheelSpeeds !== undefined) {
      resolved.wheelSpeeds = new Array(msg.wheelSpeeds.length);
      for (let i = 0; i < resolved.wheelSpeeds.length; ++i) {
        resolved.wheelSpeeds[i] = WheelSpeed.Resolve(msg.wheelSpeeds[i]);
      }
    }
    else {
      resolved.wheelSpeeds = []
    }

    return resolved;
    }
};

module.exports = WheelSpeeds;
