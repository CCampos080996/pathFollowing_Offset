// Auto-generated. Do not edit!

// (in-package ros_sensor_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Vector3Cov = require('./Vector3Cov.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class NavInput {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.parent_frame_id = null;
      this.angular_velocity = null;
      this.specific_force = null;
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
      if (initObj.hasOwnProperty('angular_velocity')) {
        this.angular_velocity = initObj.angular_velocity
      }
      else {
        this.angular_velocity = new Vector3Cov();
      }
      if (initObj.hasOwnProperty('specific_force')) {
        this.specific_force = initObj.specific_force
      }
      else {
        this.specific_force = new Vector3Cov();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NavInput
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [parent_frame_id]
    bufferOffset = _serializer.string(obj.parent_frame_id, buffer, bufferOffset);
    // Serialize message field [angular_velocity]
    bufferOffset = Vector3Cov.serialize(obj.angular_velocity, buffer, bufferOffset);
    // Serialize message field [specific_force]
    bufferOffset = Vector3Cov.serialize(obj.specific_force, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NavInput
    let len;
    let data = new NavInput(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [parent_frame_id]
    data.parent_frame_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [angular_velocity]
    data.angular_velocity = Vector3Cov.deserialize(buffer, bufferOffset);
    // Deserialize message field [specific_force]
    data.specific_force = Vector3Cov.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.parent_frame_id.length;
    return length + 196;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_sensor_msgs/NavInput';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6557125bee8e6f09abab155a5183d467';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    string 			parent_frame_id
    
    Vector3Cov 		angular_velocity	# rad/s, (rad/s)^2/Hz (noise spectral density)
    Vector3Cov 		specific_force		# m/(s^2), (m/(s^2))^2/Hz (noise spectral density)
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
    MSG: ros_sensor_msgs/Vector3Cov
    geometry_msgs/Vector3 	value 		# unit
    float64[9] 				covariance 	# unit^2
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NavInput(null);
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

    if (msg.angular_velocity !== undefined) {
      resolved.angular_velocity = Vector3Cov.Resolve(msg.angular_velocity)
    }
    else {
      resolved.angular_velocity = new Vector3Cov()
    }

    if (msg.specific_force !== undefined) {
      resolved.specific_force = Vector3Cov.Resolve(msg.specific_force)
    }
    else {
      resolved.specific_force = new Vector3Cov()
    }

    return resolved;
    }
};

module.exports = NavInput;
