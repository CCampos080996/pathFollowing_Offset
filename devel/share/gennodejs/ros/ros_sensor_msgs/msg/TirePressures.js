// Auto-generated. Do not edit!

// (in-package ros_sensor_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class TirePressures {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.tirePressure = null;
      this.wheelName = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('tirePressure')) {
        this.tirePressure = initObj.tirePressure
      }
      else {
        this.tirePressure = [];
      }
      if (initObj.hasOwnProperty('wheelName')) {
        this.wheelName = initObj.wheelName
      }
      else {
        this.wheelName = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TirePressures
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [tirePressure]
    bufferOffset = _arraySerializer.float32(obj.tirePressure, buffer, bufferOffset, null);
    // Serialize message field [wheelName]
    bufferOffset = _arraySerializer.string(obj.wheelName, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TirePressures
    let len;
    let data = new TirePressures(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [tirePressure]
    data.tirePressure = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [wheelName]
    data.wheelName = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.tirePressure.length;
    object.wheelName.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_sensor_msgs/TirePressures';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b65c89722b8915fad4ed661e18330f28';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header   header
    
    float32[] tirePressure
    string[] wheelName
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TirePressures(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.tirePressure !== undefined) {
      resolved.tirePressure = msg.tirePressure;
    }
    else {
      resolved.tirePressure = []
    }

    if (msg.wheelName !== undefined) {
      resolved.wheelName = msg.wheelName;
    }
    else {
      resolved.wheelName = []
    }

    return resolved;
    }
};

module.exports = TirePressures;
