// Auto-generated. Do not edit!

// (in-package ros_sensor_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let QuaternionCov = require('./QuaternionCov.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Attitude {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.parent_frame_id = null;
      this.attitude = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('parent_frame_id')) {
        this.parent_frame_id = initObj.parent_frame_id
      }
      else {
        this.parent_frame_id = '';
      }
      if (initObj.hasOwnProperty('attitude')) {
        this.attitude = initObj.attitude
      }
      else {
        this.attitude = new QuaternionCov();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Attitude
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [parent_frame_id]
    bufferOffset = _serializer.string(obj.parent_frame_id, buffer, bufferOffset);
    // Serialize message field [attitude]
    bufferOffset = QuaternionCov.serialize(obj.attitude, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Attitude
    let len;
    let data = new Attitude(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [parent_frame_id]
    data.parent_frame_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [attitude]
    data.attitude = QuaternionCov.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.parent_frame_id.length;
    return length + 108;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_sensor_msgs/Attitude';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e12ad82999e20dd8d27d2ef18130aab1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    string 			parent_frame_id
    QuaternionCov 	attitude			# none, rad^2
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
    MSG: ros_sensor_msgs/QuaternionCov
    geometry_msgs/Quaternion 	value
    float64[9] 				 	covariance 	# rad^2
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Attitude(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.parent_frame_id !== undefined) {
      resolved.parent_frame_id = msg.parent_frame_id;
    }
    else {
      resolved.parent_frame_id = ''
    }

    if (msg.attitude !== undefined) {
      resolved.attitude = QuaternionCov.Resolve(msg.attitude)
    }
    else {
      resolved.attitude = new QuaternionCov()
    }

    return resolved;
    }
};

module.exports = Attitude;
