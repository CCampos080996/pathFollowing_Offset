// Auto-generated. Do not edit!

// (in-package drtk.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DrtkOutputState = require('./DrtkOutputState.js');
let ros_sensor_msgs = _finder('ros_sensor_msgs');
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class DrtkOutput {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.gpsTime = null;
      this.localPositionEcef = null;
      this.rpvEcef = null;
      this.rpvFixedInteger = null;
      this.rpvFloatInteger = null;
      this.rpvDifferentialPseudorange = null;
      this.rpvPositionDifference = null;
      this.rpvEcefCovariance = null;
      this.rpvFixedIntegerCov = null;
      this.rpvFloatIntegerCov = null;
      this.rpvDifferentialPseudorangeCov = null;
      this.rpvNorm = null;
      this.rpvFixedIntegerNorm = null;
      this.rpvFloatIntegerNorm = null;
      this.rpvDifferentialPseudorangeNorm = null;
      this.rpvPositionDifferenceNorm = null;
      this.outputState = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('gpsTime')) {
        this.gpsTime = initObj.gpsTime
      }
      else {
        this.gpsTime = new ros_sensor_msgs.msg.GpsTime();
      }
      if (initObj.hasOwnProperty('localPositionEcef')) {
        this.localPositionEcef = initObj.localPositionEcef
      }
      else {
        this.localPositionEcef = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('rpvEcef')) {
        this.rpvEcef = initObj.rpvEcef
      }
      else {
        this.rpvEcef = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('rpvFixedInteger')) {
        this.rpvFixedInteger = initObj.rpvFixedInteger
      }
      else {
        this.rpvFixedInteger = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('rpvFloatInteger')) {
        this.rpvFloatInteger = initObj.rpvFloatInteger
      }
      else {
        this.rpvFloatInteger = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('rpvDifferentialPseudorange')) {
        this.rpvDifferentialPseudorange = initObj.rpvDifferentialPseudorange
      }
      else {
        this.rpvDifferentialPseudorange = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('rpvPositionDifference')) {
        this.rpvPositionDifference = initObj.rpvPositionDifference
      }
      else {
        this.rpvPositionDifference = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('rpvEcefCovariance')) {
        this.rpvEcefCovariance = initObj.rpvEcefCovariance
      }
      else {
        this.rpvEcefCovariance = new Array(9).fill(0);
      }
      if (initObj.hasOwnProperty('rpvFixedIntegerCov')) {
        this.rpvFixedIntegerCov = initObj.rpvFixedIntegerCov
      }
      else {
        this.rpvFixedIntegerCov = new Array(9).fill(0);
      }
      if (initObj.hasOwnProperty('rpvFloatIntegerCov')) {
        this.rpvFloatIntegerCov = initObj.rpvFloatIntegerCov
      }
      else {
        this.rpvFloatIntegerCov = new Array(9).fill(0);
      }
      if (initObj.hasOwnProperty('rpvDifferentialPseudorangeCov')) {
        this.rpvDifferentialPseudorangeCov = initObj.rpvDifferentialPseudorangeCov
      }
      else {
        this.rpvDifferentialPseudorangeCov = new Array(9).fill(0);
      }
      if (initObj.hasOwnProperty('rpvNorm')) {
        this.rpvNorm = initObj.rpvNorm
      }
      else {
        this.rpvNorm = 0.0;
      }
      if (initObj.hasOwnProperty('rpvFixedIntegerNorm')) {
        this.rpvFixedIntegerNorm = initObj.rpvFixedIntegerNorm
      }
      else {
        this.rpvFixedIntegerNorm = 0.0;
      }
      if (initObj.hasOwnProperty('rpvFloatIntegerNorm')) {
        this.rpvFloatIntegerNorm = initObj.rpvFloatIntegerNorm
      }
      else {
        this.rpvFloatIntegerNorm = 0.0;
      }
      if (initObj.hasOwnProperty('rpvDifferentialPseudorangeNorm')) {
        this.rpvDifferentialPseudorangeNorm = initObj.rpvDifferentialPseudorangeNorm
      }
      else {
        this.rpvDifferentialPseudorangeNorm = 0.0;
      }
      if (initObj.hasOwnProperty('rpvPositionDifferenceNorm')) {
        this.rpvPositionDifferenceNorm = initObj.rpvPositionDifferenceNorm
      }
      else {
        this.rpvPositionDifferenceNorm = 0.0;
      }
      if (initObj.hasOwnProperty('outputState')) {
        this.outputState = initObj.outputState
      }
      else {
        this.outputState = new DrtkOutputState();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DrtkOutput
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [gpsTime]
    bufferOffset = ros_sensor_msgs.msg.GpsTime.serialize(obj.gpsTime, buffer, bufferOffset);
    // Serialize message field [localPositionEcef]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.localPositionEcef, buffer, bufferOffset);
    // Serialize message field [rpvEcef]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.rpvEcef, buffer, bufferOffset);
    // Serialize message field [rpvFixedInteger]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.rpvFixedInteger, buffer, bufferOffset);
    // Serialize message field [rpvFloatInteger]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.rpvFloatInteger, buffer, bufferOffset);
    // Serialize message field [rpvDifferentialPseudorange]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.rpvDifferentialPseudorange, buffer, bufferOffset);
    // Serialize message field [rpvPositionDifference]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.rpvPositionDifference, buffer, bufferOffset);
    // Check that the constant length array field [rpvEcefCovariance] has the right length
    if (obj.rpvEcefCovariance.length !== 9) {
      throw new Error('Unable to serialize array field rpvEcefCovariance - length must be 9')
    }
    // Serialize message field [rpvEcefCovariance]
    bufferOffset = _arraySerializer.float32(obj.rpvEcefCovariance, buffer, bufferOffset, 9);
    // Check that the constant length array field [rpvFixedIntegerCov] has the right length
    if (obj.rpvFixedIntegerCov.length !== 9) {
      throw new Error('Unable to serialize array field rpvFixedIntegerCov - length must be 9')
    }
    // Serialize message field [rpvFixedIntegerCov]
    bufferOffset = _arraySerializer.float32(obj.rpvFixedIntegerCov, buffer, bufferOffset, 9);
    // Check that the constant length array field [rpvFloatIntegerCov] has the right length
    if (obj.rpvFloatIntegerCov.length !== 9) {
      throw new Error('Unable to serialize array field rpvFloatIntegerCov - length must be 9')
    }
    // Serialize message field [rpvFloatIntegerCov]
    bufferOffset = _arraySerializer.float32(obj.rpvFloatIntegerCov, buffer, bufferOffset, 9);
    // Check that the constant length array field [rpvDifferentialPseudorangeCov] has the right length
    if (obj.rpvDifferentialPseudorangeCov.length !== 9) {
      throw new Error('Unable to serialize array field rpvDifferentialPseudorangeCov - length must be 9')
    }
    // Serialize message field [rpvDifferentialPseudorangeCov]
    bufferOffset = _arraySerializer.float32(obj.rpvDifferentialPseudorangeCov, buffer, bufferOffset, 9);
    // Serialize message field [rpvNorm]
    bufferOffset = _serializer.float32(obj.rpvNorm, buffer, bufferOffset);
    // Serialize message field [rpvFixedIntegerNorm]
    bufferOffset = _serializer.float32(obj.rpvFixedIntegerNorm, buffer, bufferOffset);
    // Serialize message field [rpvFloatIntegerNorm]
    bufferOffset = _serializer.float32(obj.rpvFloatIntegerNorm, buffer, bufferOffset);
    // Serialize message field [rpvDifferentialPseudorangeNorm]
    bufferOffset = _serializer.float32(obj.rpvDifferentialPseudorangeNorm, buffer, bufferOffset);
    // Serialize message field [rpvPositionDifferenceNorm]
    bufferOffset = _serializer.float32(obj.rpvPositionDifferenceNorm, buffer, bufferOffset);
    // Serialize message field [outputState]
    bufferOffset = DrtkOutputState.serialize(obj.outputState, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DrtkOutput
    let len;
    let data = new DrtkOutput(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [gpsTime]
    data.gpsTime = ros_sensor_msgs.msg.GpsTime.deserialize(buffer, bufferOffset);
    // Deserialize message field [localPositionEcef]
    data.localPositionEcef = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [rpvEcef]
    data.rpvEcef = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [rpvFixedInteger]
    data.rpvFixedInteger = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [rpvFloatInteger]
    data.rpvFloatInteger = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [rpvDifferentialPseudorange]
    data.rpvDifferentialPseudorange = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [rpvPositionDifference]
    data.rpvPositionDifference = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [rpvEcefCovariance]
    data.rpvEcefCovariance = _arrayDeserializer.float32(buffer, bufferOffset, 9)
    // Deserialize message field [rpvFixedIntegerCov]
    data.rpvFixedIntegerCov = _arrayDeserializer.float32(buffer, bufferOffset, 9)
    // Deserialize message field [rpvFloatIntegerCov]
    data.rpvFloatIntegerCov = _arrayDeserializer.float32(buffer, bufferOffset, 9)
    // Deserialize message field [rpvDifferentialPseudorangeCov]
    data.rpvDifferentialPseudorangeCov = _arrayDeserializer.float32(buffer, bufferOffset, 9)
    // Deserialize message field [rpvNorm]
    data.rpvNorm = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rpvFixedIntegerNorm]
    data.rpvFixedIntegerNorm = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rpvFloatIntegerNorm]
    data.rpvFloatIntegerNorm = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rpvDifferentialPseudorangeNorm]
    data.rpvDifferentialPseudorangeNorm = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rpvPositionDifferenceNorm]
    data.rpvPositionDifferenceNorm = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [outputState]
    data.outputState = DrtkOutputState.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 321;
  }

  static datatype() {
    // Returns string type for a message object
    return 'drtk/DrtkOutput';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '534ac48f552f8772bee2064b837fb96a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ## DrtkOutput
    
    std_msgs/Header   header
    ros_sensor_msgs/GpsTime  gpsTime
    
    geometry_msgs/Point      localPositionEcef
    
    geometry_msgs/Vector3    rpvEcef
    geometry_msgs/Vector3    rpvFixedInteger
    geometry_msgs/Vector3    rpvFloatInteger
    geometry_msgs/Vector3    rpvDifferentialPseudorange
    geometry_msgs/Vector3    rpvPositionDifference
    
    float32[9]               rpvEcefCovariance
    float32[9]               rpvFixedIntegerCov
    float32[9]               rpvFloatIntegerCov
    float32[9]               rpvDifferentialPseudorangeCov
    
    float32                  rpvNorm
    float32                  rpvFixedIntegerNorm
    float32                  rpvFloatIntegerNorm
    float32                  rpvDifferentialPseudorangeNorm
    float32                  rpvPositionDifferenceNorm
    
    DrtkOutputState          outputState
    
    
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
    MSG: ros_sensor_msgs/GpsTime
    ## GPS time structure
    uint32          gps_week        # Full GPS week from (0:0:00 Jan 06, 1980)
    float64         gps_seconds     # GPS seconds into week [sec]
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
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
    MSG: drtk/DrtkOutputState
    # DrtkOutputState
    
    uint8 Unknown = 0
    uint8 PositionDifferenceSolution = 1
    uint8 PseudorangeOnlySolution = 2
    uint8 LowPrecisionSolution = 3
    uint8 HighPrecisionSolution = 4 
    
    uint8 state
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DrtkOutput(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.gpsTime !== undefined) {
      resolved.gpsTime = ros_sensor_msgs.msg.GpsTime.Resolve(msg.gpsTime)
    }
    else {
      resolved.gpsTime = new ros_sensor_msgs.msg.GpsTime()
    }

    if (msg.localPositionEcef !== undefined) {
      resolved.localPositionEcef = geometry_msgs.msg.Point.Resolve(msg.localPositionEcef)
    }
    else {
      resolved.localPositionEcef = new geometry_msgs.msg.Point()
    }

    if (msg.rpvEcef !== undefined) {
      resolved.rpvEcef = geometry_msgs.msg.Vector3.Resolve(msg.rpvEcef)
    }
    else {
      resolved.rpvEcef = new geometry_msgs.msg.Vector3()
    }

    if (msg.rpvFixedInteger !== undefined) {
      resolved.rpvFixedInteger = geometry_msgs.msg.Vector3.Resolve(msg.rpvFixedInteger)
    }
    else {
      resolved.rpvFixedInteger = new geometry_msgs.msg.Vector3()
    }

    if (msg.rpvFloatInteger !== undefined) {
      resolved.rpvFloatInteger = geometry_msgs.msg.Vector3.Resolve(msg.rpvFloatInteger)
    }
    else {
      resolved.rpvFloatInteger = new geometry_msgs.msg.Vector3()
    }

    if (msg.rpvDifferentialPseudorange !== undefined) {
      resolved.rpvDifferentialPseudorange = geometry_msgs.msg.Vector3.Resolve(msg.rpvDifferentialPseudorange)
    }
    else {
      resolved.rpvDifferentialPseudorange = new geometry_msgs.msg.Vector3()
    }

    if (msg.rpvPositionDifference !== undefined) {
      resolved.rpvPositionDifference = geometry_msgs.msg.Vector3.Resolve(msg.rpvPositionDifference)
    }
    else {
      resolved.rpvPositionDifference = new geometry_msgs.msg.Vector3()
    }

    if (msg.rpvEcefCovariance !== undefined) {
      resolved.rpvEcefCovariance = msg.rpvEcefCovariance;
    }
    else {
      resolved.rpvEcefCovariance = new Array(9).fill(0)
    }

    if (msg.rpvFixedIntegerCov !== undefined) {
      resolved.rpvFixedIntegerCov = msg.rpvFixedIntegerCov;
    }
    else {
      resolved.rpvFixedIntegerCov = new Array(9).fill(0)
    }

    if (msg.rpvFloatIntegerCov !== undefined) {
      resolved.rpvFloatIntegerCov = msg.rpvFloatIntegerCov;
    }
    else {
      resolved.rpvFloatIntegerCov = new Array(9).fill(0)
    }

    if (msg.rpvDifferentialPseudorangeCov !== undefined) {
      resolved.rpvDifferentialPseudorangeCov = msg.rpvDifferentialPseudorangeCov;
    }
    else {
      resolved.rpvDifferentialPseudorangeCov = new Array(9).fill(0)
    }

    if (msg.rpvNorm !== undefined) {
      resolved.rpvNorm = msg.rpvNorm;
    }
    else {
      resolved.rpvNorm = 0.0
    }

    if (msg.rpvFixedIntegerNorm !== undefined) {
      resolved.rpvFixedIntegerNorm = msg.rpvFixedIntegerNorm;
    }
    else {
      resolved.rpvFixedIntegerNorm = 0.0
    }

    if (msg.rpvFloatIntegerNorm !== undefined) {
      resolved.rpvFloatIntegerNorm = msg.rpvFloatIntegerNorm;
    }
    else {
      resolved.rpvFloatIntegerNorm = 0.0
    }

    if (msg.rpvDifferentialPseudorangeNorm !== undefined) {
      resolved.rpvDifferentialPseudorangeNorm = msg.rpvDifferentialPseudorangeNorm;
    }
    else {
      resolved.rpvDifferentialPseudorangeNorm = 0.0
    }

    if (msg.rpvPositionDifferenceNorm !== undefined) {
      resolved.rpvPositionDifferenceNorm = msg.rpvPositionDifferenceNorm;
    }
    else {
      resolved.rpvPositionDifferenceNorm = 0.0
    }

    if (msg.outputState !== undefined) {
      resolved.outputState = DrtkOutputState.Resolve(msg.outputState)
    }
    else {
      resolved.outputState = new DrtkOutputState()
    }

    return resolved;
    }
};

module.exports = DrtkOutput;
