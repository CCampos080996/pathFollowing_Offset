// Auto-generated. Do not edit!

// (in-package ros_sensor_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SensorParams3Axis = require('./SensorParams3Axis.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ImuParameters {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.gyro = null;
      this.accel = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('gyro')) {
        this.gyro = initObj.gyro
      }
      else {
        this.gyro = new SensorParams3Axis();
      }
      if (initObj.hasOwnProperty('accel')) {
        this.accel = initObj.accel
      }
      else {
        this.accel = new SensorParams3Axis();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ImuParameters
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [gyro]
    bufferOffset = SensorParams3Axis.serialize(obj.gyro, buffer, bufferOffset);
    // Serialize message field [accel]
    bufferOffset = SensorParams3Axis.serialize(obj.accel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ImuParameters
    let len;
    let data = new ImuParameters(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [gyro]
    data.gyro = SensorParams3Axis.deserialize(buffer, bufferOffset);
    // Deserialize message field [accel]
    data.accel = SensorParams3Axis.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 384;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_sensor_msgs/ImuParameters';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '65bb04ba3e7976a0cb2a90024977dfd3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    SensorParams3Axis gyro
    SensorParams3Axis accel
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
    MSG: ros_sensor_msgs/SensorParams3Axis
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
    const resolved = new ImuParameters(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.gyro !== undefined) {
      resolved.gyro = SensorParams3Axis.Resolve(msg.gyro)
    }
    else {
      resolved.gyro = new SensorParams3Axis()
    }

    if (msg.accel !== undefined) {
      resolved.accel = SensorParams3Axis.Resolve(msg.accel)
    }
    else {
      resolved.accel = new SensorParams3Axis()
    }

    return resolved;
    }
};

module.exports = ImuParameters;
