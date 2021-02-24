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

class NavStateCorrection {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.parent_frame_id = null;
      this.position_correction = null;
      this.velocity_correction = null;
      this.attitude_correction = null;
      this.gyro_bias = null;
      this.accel_bias = null;
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
      if (initObj.hasOwnProperty('position_correction')) {
        this.position_correction = initObj.position_correction
      }
      else {
        this.position_correction = new Vector3Cov();
      }
      if (initObj.hasOwnProperty('velocity_correction')) {
        this.velocity_correction = initObj.velocity_correction
      }
      else {
        this.velocity_correction = new Vector3Cov();
      }
      if (initObj.hasOwnProperty('attitude_correction')) {
        this.attitude_correction = initObj.attitude_correction
      }
      else {
        this.attitude_correction = new Vector3Cov();
      }
      if (initObj.hasOwnProperty('gyro_bias')) {
        this.gyro_bias = initObj.gyro_bias
      }
      else {
        this.gyro_bias = new Vector3Cov();
      }
      if (initObj.hasOwnProperty('accel_bias')) {
        this.accel_bias = initObj.accel_bias
      }
      else {
        this.accel_bias = new Vector3Cov();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NavStateCorrection
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [parent_frame_id]
    bufferOffset = _serializer.string(obj.parent_frame_id, buffer, bufferOffset);
    // Serialize message field [position_correction]
    bufferOffset = Vector3Cov.serialize(obj.position_correction, buffer, bufferOffset);
    // Serialize message field [velocity_correction]
    bufferOffset = Vector3Cov.serialize(obj.velocity_correction, buffer, bufferOffset);
    // Serialize message field [attitude_correction]
    bufferOffset = Vector3Cov.serialize(obj.attitude_correction, buffer, bufferOffset);
    // Serialize message field [gyro_bias]
    bufferOffset = Vector3Cov.serialize(obj.gyro_bias, buffer, bufferOffset);
    // Serialize message field [accel_bias]
    bufferOffset = Vector3Cov.serialize(obj.accel_bias, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NavStateCorrection
    let len;
    let data = new NavStateCorrection(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [parent_frame_id]
    data.parent_frame_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [position_correction]
    data.position_correction = Vector3Cov.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity_correction]
    data.velocity_correction = Vector3Cov.deserialize(buffer, bufferOffset);
    // Deserialize message field [attitude_correction]
    data.attitude_correction = Vector3Cov.deserialize(buffer, bufferOffset);
    // Deserialize message field [gyro_bias]
    data.gyro_bias = Vector3Cov.deserialize(buffer, bufferOffset);
    // Deserialize message field [accel_bias]
    data.accel_bias = Vector3Cov.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.parent_frame_id.length;
    return length + 484;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_sensor_msgs/NavStateCorrection';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a318981e584d094f12f75c3a0b2e6e1a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    string 			parent_frame_id
    Vector3Cov 		position_correction		# m, m^2
    Vector3Cov 		velocity_correction 	# m/s, (m/s)^2
    Vector3Cov 		attitude_correction 	# none, rad^2
    Vector3Cov 		gyro_bias 				# rad/s, (rad/s)^2
    Vector3Cov 		accel_bias 				# (m/s^2), (m/s^2)^2
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
    const resolved = new NavStateCorrection(null);
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

    if (msg.position_correction !== undefined) {
      resolved.position_correction = Vector3Cov.Resolve(msg.position_correction)
    }
    else {
      resolved.position_correction = new Vector3Cov()
    }

    if (msg.velocity_correction !== undefined) {
      resolved.velocity_correction = Vector3Cov.Resolve(msg.velocity_correction)
    }
    else {
      resolved.velocity_correction = new Vector3Cov()
    }

    if (msg.attitude_correction !== undefined) {
      resolved.attitude_correction = Vector3Cov.Resolve(msg.attitude_correction)
    }
    else {
      resolved.attitude_correction = new Vector3Cov()
    }

    if (msg.gyro_bias !== undefined) {
      resolved.gyro_bias = Vector3Cov.Resolve(msg.gyro_bias)
    }
    else {
      resolved.gyro_bias = new Vector3Cov()
    }

    if (msg.accel_bias !== undefined) {
      resolved.accel_bias = Vector3Cov.Resolve(msg.accel_bias)
    }
    else {
      resolved.accel_bias = new Vector3Cov()
    }

    return resolved;
    }
};

module.exports = NavStateCorrection;
