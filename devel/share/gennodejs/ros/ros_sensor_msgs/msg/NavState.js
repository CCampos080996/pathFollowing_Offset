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
let QuaternionCov = require('./QuaternionCov.js');
let AssuranceLevel = require('./AssuranceLevel.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class NavState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.parent_frame_id = null;
      this.position = null;
      this.velocity = null;
      this.attitude = null;
      this.assuranceLevel = null;
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
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new Vector3Cov();
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new Vector3Cov();
      }
      if (initObj.hasOwnProperty('attitude')) {
        this.attitude = initObj.attitude
      }
      else {
        this.attitude = new QuaternionCov();
      }
      if (initObj.hasOwnProperty('assuranceLevel')) {
        this.assuranceLevel = initObj.assuranceLevel
      }
      else {
        this.assuranceLevel = new AssuranceLevel();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NavState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [parent_frame_id]
    bufferOffset = _serializer.string(obj.parent_frame_id, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = Vector3Cov.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = Vector3Cov.serialize(obj.velocity, buffer, bufferOffset);
    // Serialize message field [attitude]
    bufferOffset = QuaternionCov.serialize(obj.attitude, buffer, bufferOffset);
    // Serialize message field [assuranceLevel]
    bufferOffset = AssuranceLevel.serialize(obj.assuranceLevel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NavState
    let len;
    let data = new NavState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [parent_frame_id]
    data.parent_frame_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = Vector3Cov.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = Vector3Cov.deserialize(buffer, bufferOffset);
    // Deserialize message field [attitude]
    data.attitude = QuaternionCov.deserialize(buffer, bufferOffset);
    // Deserialize message field [assuranceLevel]
    data.assuranceLevel = AssuranceLevel.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.parent_frame_id.length;
    return length + 301;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_sensor_msgs/NavState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '24804c40e60ccc8400a9fcc2cccc88b2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    string 			parent_frame_id
    
    Vector3Cov 		position		# m, m^2
    Vector3Cov 		velocity		# m/s, (m/s)^2
    QuaternionCov 	attitude		# none, rad^2
    AssuranceLevel  assuranceLevel
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
    
    ================================================================================
    MSG: ros_sensor_msgs/AssuranceLevel
    uint8  Normal   = 0
    uint8  Unknown  = 1
    uint8  Warning  = 2
    uint8  Attack   = 3
    
    uint8 level
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NavState(null);
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

    if (msg.position !== undefined) {
      resolved.position = Vector3Cov.Resolve(msg.position)
    }
    else {
      resolved.position = new Vector3Cov()
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = Vector3Cov.Resolve(msg.velocity)
    }
    else {
      resolved.velocity = new Vector3Cov()
    }

    if (msg.attitude !== undefined) {
      resolved.attitude = QuaternionCov.Resolve(msg.attitude)
    }
    else {
      resolved.attitude = new QuaternionCov()
    }

    if (msg.assuranceLevel !== undefined) {
      resolved.assuranceLevel = AssuranceLevel.Resolve(msg.assuranceLevel)
    }
    else {
      resolved.assuranceLevel = new AssuranceLevel()
    }

    return resolved;
    }
};

module.exports = NavState;
