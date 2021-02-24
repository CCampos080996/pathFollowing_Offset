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

class PpsOffsetCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.offset_counts = null;
      this.drift_counts = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('offset_counts')) {
        this.offset_counts = initObj.offset_counts
      }
      else {
        this.offset_counts = 0;
      }
      if (initObj.hasOwnProperty('drift_counts')) {
        this.drift_counts = initObj.drift_counts
      }
      else {
        this.drift_counts = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PpsOffsetCmd
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [offset_counts]
    bufferOffset = _serializer.int32(obj.offset_counts, buffer, bufferOffset);
    // Serialize message field [drift_counts]
    bufferOffset = _serializer.int32(obj.drift_counts, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PpsOffsetCmd
    let len;
    let data = new PpsOffsetCmd(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [offset_counts]
    data.offset_counts = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [drift_counts]
    data.drift_counts = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_sensor_msgs/PpsOffsetCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9fc7471197658b908cb56e3b379ad9ed';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    std_msgs/Header   header
    int32             offset_counts
    int32             drift_counts
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
    const resolved = new PpsOffsetCmd(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.offset_counts !== undefined) {
      resolved.offset_counts = msg.offset_counts;
    }
    else {
      resolved.offset_counts = 0
    }

    if (msg.drift_counts !== undefined) {
      resolved.drift_counts = msg.drift_counts;
    }
    else {
      resolved.drift_counts = 0
    }

    return resolved;
    }
};

module.exports = PpsOffsetCmd;
