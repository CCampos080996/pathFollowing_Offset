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

class GaitDetection {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.zeroAccBool = null;
      this.underLocalAccStdBool = null;
      this.zeroAngVelBool = null;
      this.stepDetectedBool = null;
      this.posBwrtLinR = null;
      this.stepLength = null;
      this.stepHeight = null;
      this.stepAngle = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('zeroAccBool')) {
        this.zeroAccBool = initObj.zeroAccBool
      }
      else {
        this.zeroAccBool = false;
      }
      if (initObj.hasOwnProperty('underLocalAccStdBool')) {
        this.underLocalAccStdBool = initObj.underLocalAccStdBool
      }
      else {
        this.underLocalAccStdBool = false;
      }
      if (initObj.hasOwnProperty('zeroAngVelBool')) {
        this.zeroAngVelBool = initObj.zeroAngVelBool
      }
      else {
        this.zeroAngVelBool = false;
      }
      if (initObj.hasOwnProperty('stepDetectedBool')) {
        this.stepDetectedBool = initObj.stepDetectedBool
      }
      else {
        this.stepDetectedBool = false;
      }
      if (initObj.hasOwnProperty('posBwrtLinR')) {
        this.posBwrtLinR = initObj.posBwrtLinR
      }
      else {
        this.posBwrtLinR = new Vector3Cov();
      }
      if (initObj.hasOwnProperty('stepLength')) {
        this.stepLength = initObj.stepLength
      }
      else {
        this.stepLength = 0.0;
      }
      if (initObj.hasOwnProperty('stepHeight')) {
        this.stepHeight = initObj.stepHeight
      }
      else {
        this.stepHeight = 0.0;
      }
      if (initObj.hasOwnProperty('stepAngle')) {
        this.stepAngle = initObj.stepAngle
      }
      else {
        this.stepAngle = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GaitDetection
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [zeroAccBool]
    bufferOffset = _serializer.bool(obj.zeroAccBool, buffer, bufferOffset);
    // Serialize message field [underLocalAccStdBool]
    bufferOffset = _serializer.bool(obj.underLocalAccStdBool, buffer, bufferOffset);
    // Serialize message field [zeroAngVelBool]
    bufferOffset = _serializer.bool(obj.zeroAngVelBool, buffer, bufferOffset);
    // Serialize message field [stepDetectedBool]
    bufferOffset = _serializer.bool(obj.stepDetectedBool, buffer, bufferOffset);
    // Serialize message field [posBwrtLinR]
    bufferOffset = Vector3Cov.serialize(obj.posBwrtLinR, buffer, bufferOffset);
    // Serialize message field [stepLength]
    bufferOffset = _serializer.float64(obj.stepLength, buffer, bufferOffset);
    // Serialize message field [stepHeight]
    bufferOffset = _serializer.float64(obj.stepHeight, buffer, bufferOffset);
    // Serialize message field [stepAngle]
    bufferOffset = _serializer.float64(obj.stepAngle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GaitDetection
    let len;
    let data = new GaitDetection(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [zeroAccBool]
    data.zeroAccBool = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [underLocalAccStdBool]
    data.underLocalAccStdBool = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [zeroAngVelBool]
    data.zeroAngVelBool = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [stepDetectedBool]
    data.stepDetectedBool = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [posBwrtLinR]
    data.posBwrtLinR = Vector3Cov.deserialize(buffer, bufferOffset);
    // Deserialize message field [stepLength]
    data.stepLength = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [stepHeight]
    data.stepHeight = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [stepAngle]
    data.stepAngle = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 124;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_sensor_msgs/GaitDetection';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f261dd9516cbda3f5e7d59b11e4500c5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    std_msgs/Header header
    
    bool 		zeroAccBool
    bool 		underLocalAccStdBool
    bool 		zeroAngVelBool
    
    bool 		stepDetectedBool
    
    Vector3Cov 	posBwrtLinR
    
    float64 	stepLength
    float64 	stepHeight
    float64 	stepAngle
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
    const resolved = new GaitDetection(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.zeroAccBool !== undefined) {
      resolved.zeroAccBool = msg.zeroAccBool;
    }
    else {
      resolved.zeroAccBool = false
    }

    if (msg.underLocalAccStdBool !== undefined) {
      resolved.underLocalAccStdBool = msg.underLocalAccStdBool;
    }
    else {
      resolved.underLocalAccStdBool = false
    }

    if (msg.zeroAngVelBool !== undefined) {
      resolved.zeroAngVelBool = msg.zeroAngVelBool;
    }
    else {
      resolved.zeroAngVelBool = false
    }

    if (msg.stepDetectedBool !== undefined) {
      resolved.stepDetectedBool = msg.stepDetectedBool;
    }
    else {
      resolved.stepDetectedBool = false
    }

    if (msg.posBwrtLinR !== undefined) {
      resolved.posBwrtLinR = Vector3Cov.Resolve(msg.posBwrtLinR)
    }
    else {
      resolved.posBwrtLinR = new Vector3Cov()
    }

    if (msg.stepLength !== undefined) {
      resolved.stepLength = msg.stepLength;
    }
    else {
      resolved.stepLength = 0.0
    }

    if (msg.stepHeight !== undefined) {
      resolved.stepHeight = msg.stepHeight;
    }
    else {
      resolved.stepHeight = 0.0
    }

    if (msg.stepAngle !== undefined) {
      resolved.stepAngle = msg.stepAngle;
    }
    else {
      resolved.stepAngle = 0.0
    }

    return resolved;
    }
};

module.exports = GaitDetection;
