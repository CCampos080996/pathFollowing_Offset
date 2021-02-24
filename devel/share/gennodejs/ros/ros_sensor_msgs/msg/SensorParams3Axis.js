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

//-----------------------------------------------------------

class SensorParams3Axis {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.bias = null;
      this.scaleFactor = null;
    }
    else {
      if (initObj.hasOwnProperty('bias')) {
        this.bias = initObj.bias
      }
      else {
        this.bias = new Vector3Cov();
      }
      if (initObj.hasOwnProperty('scaleFactor')) {
        this.scaleFactor = initObj.scaleFactor
      }
      else {
        this.scaleFactor = new Vector3Cov();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SensorParams3Axis
    // Serialize message field [bias]
    bufferOffset = Vector3Cov.serialize(obj.bias, buffer, bufferOffset);
    // Serialize message field [scaleFactor]
    bufferOffset = Vector3Cov.serialize(obj.scaleFactor, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SensorParams3Axis
    let len;
    let data = new SensorParams3Axis(null);
    // Deserialize message field [bias]
    data.bias = Vector3Cov.deserialize(buffer, bufferOffset);
    // Deserialize message field [scaleFactor]
    data.scaleFactor = Vector3Cov.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 192;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_sensor_msgs/SensorParams3Axis';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '24c3e2bb8a356470f1a6dba76b1bcfc1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Vector3Cov bias
    Vector3Cov scaleFactor
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
    const resolved = new SensorParams3Axis(null);
    if (msg.bias !== undefined) {
      resolved.bias = Vector3Cov.Resolve(msg.bias)
    }
    else {
      resolved.bias = new Vector3Cov()
    }

    if (msg.scaleFactor !== undefined) {
      resolved.scaleFactor = Vector3Cov.Resolve(msg.scaleFactor)
    }
    else {
      resolved.scaleFactor = new Vector3Cov()
    }

    return resolved;
    }
};

module.exports = SensorParams3Axis;
