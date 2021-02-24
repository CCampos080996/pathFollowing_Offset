// Auto-generated. Do not edit!

// (in-package ros_sensor_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RfRange = require('./RfRange.js');
let NavState = require('./NavState.js');

//-----------------------------------------------------------

class RemoteState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.range = null;
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('range')) {
        this.range = initObj.range
      }
      else {
        this.range = new RfRange();
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = new NavState();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RemoteState
    // Serialize message field [range]
    bufferOffset = RfRange.serialize(obj.range, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = NavState.serialize(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RemoteState
    let len;
    let data = new RemoteState(null);
    // Deserialize message field [range]
    data.range = RfRange.deserialize(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = NavState.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += NavState.getMessageSize(object.state);
    return length + 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_sensor_msgs/RemoteState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd8939a9b77cb82f4bd081b34aff50780';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    RfRange           range
    NavState		  state
    ================================================================================
    MSG: ros_sensor_msgs/RfRange
    # Range to specified object
    float64 range
    float64 rangeRate
    float64 rangeVariance
    float64 rangeRateVariance
    uint32  timestamp
    uint32  sourceId
    uint32  destId
    uint16  rssi
    uint16  quality
    
    ================================================================================
    MSG: ros_sensor_msgs/NavState
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
    const resolved = new RemoteState(null);
    if (msg.range !== undefined) {
      resolved.range = RfRange.Resolve(msg.range)
    }
    else {
      resolved.range = new RfRange()
    }

    if (msg.state !== undefined) {
      resolved.state = NavState.Resolve(msg.state)
    }
    else {
      resolved.state = new NavState()
    }

    return resolved;
    }
};

module.exports = RemoteState;
