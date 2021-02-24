// Auto-generated. Do not edit!

// (in-package ros_sensor_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let WheelCount = require('./WheelCount.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class WheelCounts {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.timestamp = null;
      this.wheelCounts = null;
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
      if (initObj.hasOwnProperty('wheelCounts')) {
        this.wheelCounts = initObj.wheelCounts
      }
      else {
        this.wheelCounts = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WheelCounts
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [timestamp]
    bufferOffset = _serializer.uint32(obj.timestamp, buffer, bufferOffset);
    // Serialize message field [wheelCounts]
    // Serialize the length for message field [wheelCounts]
    bufferOffset = _serializer.uint32(obj.wheelCounts.length, buffer, bufferOffset);
    obj.wheelCounts.forEach((val) => {
      bufferOffset = WheelCount.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WheelCounts
    let len;
    let data = new WheelCounts(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [wheelCounts]
    // Deserialize array length for message field [wheelCounts]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.wheelCounts = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.wheelCounts[i] = WheelCount.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.wheelCounts.forEach((val) => {
      length += WheelCount.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_sensor_msgs/WheelCounts';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7b7b3ed86a61cee066b9a17b6b58914a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header   header
    uint32 timestamp  # [counts]
    WheelCount[] wheelCounts
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
    MSG: ros_sensor_msgs/WheelCount
    uint32  wheel_count   # [counts]
    bool    dir_forward   # true if moving forward
    string  wheel_name
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WheelCounts(null);
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

    if (msg.wheelCounts !== undefined) {
      resolved.wheelCounts = new Array(msg.wheelCounts.length);
      for (let i = 0; i < resolved.wheelCounts.length; ++i) {
        resolved.wheelCounts[i] = WheelCount.Resolve(msg.wheelCounts[i]);
      }
    }
    else {
      resolved.wheelCounts = []
    }

    return resolved;
    }
};

module.exports = WheelCounts;
