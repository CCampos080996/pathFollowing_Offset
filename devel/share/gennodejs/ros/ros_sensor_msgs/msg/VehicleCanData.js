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

class VehicleCanData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.vehicleSpeed = null;
      this.yawRate = null;
      this.frontLeftWheelSpeed = null;
      this.frontRightWheelSpeed = null;
      this.rearLeftWheelSpeed = null;
      this.rearRightWheelSpeed = null;
      this.steerAngle = null;
      this.steerAngleRate = null;
      this.frontLeftTirePressure = null;
      this.frontRightTirePressure = null;
      this.rearLeftTirePressure = null;
      this.rearRightTirePressure = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('vehicleSpeed')) {
        this.vehicleSpeed = initObj.vehicleSpeed
      }
      else {
        this.vehicleSpeed = 0.0;
      }
      if (initObj.hasOwnProperty('yawRate')) {
        this.yawRate = initObj.yawRate
      }
      else {
        this.yawRate = 0.0;
      }
      if (initObj.hasOwnProperty('frontLeftWheelSpeed')) {
        this.frontLeftWheelSpeed = initObj.frontLeftWheelSpeed
      }
      else {
        this.frontLeftWheelSpeed = 0.0;
      }
      if (initObj.hasOwnProperty('frontRightWheelSpeed')) {
        this.frontRightWheelSpeed = initObj.frontRightWheelSpeed
      }
      else {
        this.frontRightWheelSpeed = 0.0;
      }
      if (initObj.hasOwnProperty('rearLeftWheelSpeed')) {
        this.rearLeftWheelSpeed = initObj.rearLeftWheelSpeed
      }
      else {
        this.rearLeftWheelSpeed = 0.0;
      }
      if (initObj.hasOwnProperty('rearRightWheelSpeed')) {
        this.rearRightWheelSpeed = initObj.rearRightWheelSpeed
      }
      else {
        this.rearRightWheelSpeed = 0.0;
      }
      if (initObj.hasOwnProperty('steerAngle')) {
        this.steerAngle = initObj.steerAngle
      }
      else {
        this.steerAngle = 0.0;
      }
      if (initObj.hasOwnProperty('steerAngleRate')) {
        this.steerAngleRate = initObj.steerAngleRate
      }
      else {
        this.steerAngleRate = 0.0;
      }
      if (initObj.hasOwnProperty('frontLeftTirePressure')) {
        this.frontLeftTirePressure = initObj.frontLeftTirePressure
      }
      else {
        this.frontLeftTirePressure = 0.0;
      }
      if (initObj.hasOwnProperty('frontRightTirePressure')) {
        this.frontRightTirePressure = initObj.frontRightTirePressure
      }
      else {
        this.frontRightTirePressure = 0.0;
      }
      if (initObj.hasOwnProperty('rearLeftTirePressure')) {
        this.rearLeftTirePressure = initObj.rearLeftTirePressure
      }
      else {
        this.rearLeftTirePressure = 0.0;
      }
      if (initObj.hasOwnProperty('rearRightTirePressure')) {
        this.rearRightTirePressure = initObj.rearRightTirePressure
      }
      else {
        this.rearRightTirePressure = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleCanData
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [vehicleSpeed]
    bufferOffset = _serializer.float32(obj.vehicleSpeed, buffer, bufferOffset);
    // Serialize message field [yawRate]
    bufferOffset = _serializer.float32(obj.yawRate, buffer, bufferOffset);
    // Serialize message field [frontLeftWheelSpeed]
    bufferOffset = _serializer.float32(obj.frontLeftWheelSpeed, buffer, bufferOffset);
    // Serialize message field [frontRightWheelSpeed]
    bufferOffset = _serializer.float32(obj.frontRightWheelSpeed, buffer, bufferOffset);
    // Serialize message field [rearLeftWheelSpeed]
    bufferOffset = _serializer.float32(obj.rearLeftWheelSpeed, buffer, bufferOffset);
    // Serialize message field [rearRightWheelSpeed]
    bufferOffset = _serializer.float32(obj.rearRightWheelSpeed, buffer, bufferOffset);
    // Serialize message field [steerAngle]
    bufferOffset = _serializer.float32(obj.steerAngle, buffer, bufferOffset);
    // Serialize message field [steerAngleRate]
    bufferOffset = _serializer.float32(obj.steerAngleRate, buffer, bufferOffset);
    // Serialize message field [frontLeftTirePressure]
    bufferOffset = _serializer.float32(obj.frontLeftTirePressure, buffer, bufferOffset);
    // Serialize message field [frontRightTirePressure]
    bufferOffset = _serializer.float32(obj.frontRightTirePressure, buffer, bufferOffset);
    // Serialize message field [rearLeftTirePressure]
    bufferOffset = _serializer.float32(obj.rearLeftTirePressure, buffer, bufferOffset);
    // Serialize message field [rearRightTirePressure]
    bufferOffset = _serializer.float32(obj.rearRightTirePressure, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleCanData
    let len;
    let data = new VehicleCanData(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [vehicleSpeed]
    data.vehicleSpeed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [yawRate]
    data.yawRate = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [frontLeftWheelSpeed]
    data.frontLeftWheelSpeed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [frontRightWheelSpeed]
    data.frontRightWheelSpeed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rearLeftWheelSpeed]
    data.rearLeftWheelSpeed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rearRightWheelSpeed]
    data.rearRightWheelSpeed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [steerAngle]
    data.steerAngle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [steerAngleRate]
    data.steerAngleRate = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [frontLeftTirePressure]
    data.frontLeftTirePressure = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [frontRightTirePressure]
    data.frontRightTirePressure = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rearLeftTirePressure]
    data.rearLeftTirePressure = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rearRightTirePressure]
    data.rearRightTirePressure = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_sensor_msgs/VehicleCanData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '75538c77ee37258cf3ed3bf6d0bd45c3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ## Message for vehicle data from CAN bus
    std_msgs/Header   header
    
    float32 vehicleSpeed
    float32 yawRate
    
    float32 frontLeftWheelSpeed
    float32 frontRightWheelSpeed
    float32 rearLeftWheelSpeed
    float32 rearRightWheelSpeed
    
    float32 steerAngle
    float32 steerAngleRate
    
    float32 frontLeftTirePressure
    float32 frontRightTirePressure
    float32 rearLeftTirePressure
    float32 rearRightTirePressure
    
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
    const resolved = new VehicleCanData(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.vehicleSpeed !== undefined) {
      resolved.vehicleSpeed = msg.vehicleSpeed;
    }
    else {
      resolved.vehicleSpeed = 0.0
    }

    if (msg.yawRate !== undefined) {
      resolved.yawRate = msg.yawRate;
    }
    else {
      resolved.yawRate = 0.0
    }

    if (msg.frontLeftWheelSpeed !== undefined) {
      resolved.frontLeftWheelSpeed = msg.frontLeftWheelSpeed;
    }
    else {
      resolved.frontLeftWheelSpeed = 0.0
    }

    if (msg.frontRightWheelSpeed !== undefined) {
      resolved.frontRightWheelSpeed = msg.frontRightWheelSpeed;
    }
    else {
      resolved.frontRightWheelSpeed = 0.0
    }

    if (msg.rearLeftWheelSpeed !== undefined) {
      resolved.rearLeftWheelSpeed = msg.rearLeftWheelSpeed;
    }
    else {
      resolved.rearLeftWheelSpeed = 0.0
    }

    if (msg.rearRightWheelSpeed !== undefined) {
      resolved.rearRightWheelSpeed = msg.rearRightWheelSpeed;
    }
    else {
      resolved.rearRightWheelSpeed = 0.0
    }

    if (msg.steerAngle !== undefined) {
      resolved.steerAngle = msg.steerAngle;
    }
    else {
      resolved.steerAngle = 0.0
    }

    if (msg.steerAngleRate !== undefined) {
      resolved.steerAngleRate = msg.steerAngleRate;
    }
    else {
      resolved.steerAngleRate = 0.0
    }

    if (msg.frontLeftTirePressure !== undefined) {
      resolved.frontLeftTirePressure = msg.frontLeftTirePressure;
    }
    else {
      resolved.frontLeftTirePressure = 0.0
    }

    if (msg.frontRightTirePressure !== undefined) {
      resolved.frontRightTirePressure = msg.frontRightTirePressure;
    }
    else {
      resolved.frontRightTirePressure = 0.0
    }

    if (msg.rearLeftTirePressure !== undefined) {
      resolved.rearLeftTirePressure = msg.rearLeftTirePressure;
    }
    else {
      resolved.rearLeftTirePressure = 0.0
    }

    if (msg.rearRightTirePressure !== undefined) {
      resolved.rearRightTirePressure = msg.rearRightTirePressure;
    }
    else {
      resolved.rearRightTirePressure = 0.0
    }

    return resolved;
    }
};

module.exports = VehicleCanData;
