// Auto-generated. Do not edit!

// (in-package ros_sensor_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class QuaternionCov {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.value = null;
      this.covariance = null;
    }
    else {
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = new geometry_msgs.msg.Quaternion();
      }
      if (initObj.hasOwnProperty('covariance')) {
        this.covariance = initObj.covariance
      }
      else {
        this.covariance = new Array(9).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type QuaternionCov
    // Serialize message field [value]
    bufferOffset = geometry_msgs.msg.Quaternion.serialize(obj.value, buffer, bufferOffset);
    // Check that the constant length array field [covariance] has the right length
    if (obj.covariance.length !== 9) {
      throw new Error('Unable to serialize array field covariance - length must be 9')
    }
    // Serialize message field [covariance]
    bufferOffset = _arraySerializer.float64(obj.covariance, buffer, bufferOffset, 9);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type QuaternionCov
    let len;
    let data = new QuaternionCov(null);
    // Deserialize message field [value]
    data.value = geometry_msgs.msg.Quaternion.deserialize(buffer, bufferOffset);
    // Deserialize message field [covariance]
    data.covariance = _arrayDeserializer.float64(buffer, bufferOffset, 9)
    return data;
  }

  static getMessageSize(object) {
    return 104;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_sensor_msgs/QuaternionCov';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3b94d7700299a5d383fc6e27f12bd18b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new QuaternionCov(null);
    if (msg.value !== undefined) {
      resolved.value = geometry_msgs.msg.Quaternion.Resolve(msg.value)
    }
    else {
      resolved.value = new geometry_msgs.msg.Quaternion()
    }

    if (msg.covariance !== undefined) {
      resolved.covariance = msg.covariance;
    }
    else {
      resolved.covariance = new Array(9).fill(0)
    }

    return resolved;
    }
};

module.exports = QuaternionCov;
