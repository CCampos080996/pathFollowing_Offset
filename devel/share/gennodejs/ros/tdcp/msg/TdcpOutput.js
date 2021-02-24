// Auto-generated. Do not edit!

// (in-package tdcp.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ros_sensor_msgs = _finder('ros_sensor_msgs');
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class TdcpOutput {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.gpsTime = null;
      this.psrSolEcef = null;
      this.psrSolEcefCovariance = null;
      this.rpvEcef = null;
      this.rpvEcefCovariance = null;
      this.rpvNorm = null;
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
      if (initObj.hasOwnProperty('psrSolEcef')) {
        this.psrSolEcef = initObj.psrSolEcef
      }
      else {
        this.psrSolEcef = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('psrSolEcefCovariance')) {
        this.psrSolEcefCovariance = initObj.psrSolEcefCovariance
      }
      else {
        this.psrSolEcefCovariance = new Array(9).fill(0);
      }
      if (initObj.hasOwnProperty('rpvEcef')) {
        this.rpvEcef = initObj.rpvEcef
      }
      else {
        this.rpvEcef = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('rpvEcefCovariance')) {
        this.rpvEcefCovariance = initObj.rpvEcefCovariance
      }
      else {
        this.rpvEcefCovariance = new Array(9).fill(0);
      }
      if (initObj.hasOwnProperty('rpvNorm')) {
        this.rpvNorm = initObj.rpvNorm
      }
      else {
        this.rpvNorm = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TdcpOutput
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [gpsTime]
    bufferOffset = ros_sensor_msgs.msg.GpsTime.serialize(obj.gpsTime, buffer, bufferOffset);
    // Serialize message field [psrSolEcef]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.psrSolEcef, buffer, bufferOffset);
    // Check that the constant length array field [psrSolEcefCovariance] has the right length
    if (obj.psrSolEcefCovariance.length !== 9) {
      throw new Error('Unable to serialize array field psrSolEcefCovariance - length must be 9')
    }
    // Serialize message field [psrSolEcefCovariance]
    bufferOffset = _arraySerializer.float32(obj.psrSolEcefCovariance, buffer, bufferOffset, 9);
    // Serialize message field [rpvEcef]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.rpvEcef, buffer, bufferOffset);
    // Check that the constant length array field [rpvEcefCovariance] has the right length
    if (obj.rpvEcefCovariance.length !== 9) {
      throw new Error('Unable to serialize array field rpvEcefCovariance - length must be 9')
    }
    // Serialize message field [rpvEcefCovariance]
    bufferOffset = _arraySerializer.float32(obj.rpvEcefCovariance, buffer, bufferOffset, 9);
    // Serialize message field [rpvNorm]
    bufferOffset = _serializer.float32(obj.rpvNorm, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TdcpOutput
    let len;
    let data = new TdcpOutput(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [gpsTime]
    data.gpsTime = ros_sensor_msgs.msg.GpsTime.deserialize(buffer, bufferOffset);
    // Deserialize message field [psrSolEcef]
    data.psrSolEcef = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [psrSolEcefCovariance]
    data.psrSolEcefCovariance = _arrayDeserializer.float32(buffer, bufferOffset, 9)
    // Deserialize message field [rpvEcef]
    data.rpvEcef = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [rpvEcefCovariance]
    data.rpvEcefCovariance = _arrayDeserializer.float32(buffer, bufferOffset, 9)
    // Deserialize message field [rpvNorm]
    data.rpvNorm = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 136;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tdcp/TdcpOutput';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2353195a8a8998915590d5121e0ba66f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ## TdcpOutput
    
    std_msgs/Header          header
    ros_sensor_msgs/GpsTime  gpsTime
    geometry_msgs/Vector3    psrSolEcef
    float32[9]               psrSolEcefCovariance
    geometry_msgs/Vector3    rpvEcef
    float32[9]               rpvEcefCovariance
    float32                  rpvNorm
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
    const resolved = new TdcpOutput(null);
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

    if (msg.psrSolEcef !== undefined) {
      resolved.psrSolEcef = geometry_msgs.msg.Vector3.Resolve(msg.psrSolEcef)
    }
    else {
      resolved.psrSolEcef = new geometry_msgs.msg.Vector3()
    }

    if (msg.psrSolEcefCovariance !== undefined) {
      resolved.psrSolEcefCovariance = msg.psrSolEcefCovariance;
    }
    else {
      resolved.psrSolEcefCovariance = new Array(9).fill(0)
    }

    if (msg.rpvEcef !== undefined) {
      resolved.rpvEcef = geometry_msgs.msg.Vector3.Resolve(msg.rpvEcef)
    }
    else {
      resolved.rpvEcef = new geometry_msgs.msg.Vector3()
    }

    if (msg.rpvEcefCovariance !== undefined) {
      resolved.rpvEcefCovariance = msg.rpvEcefCovariance;
    }
    else {
      resolved.rpvEcefCovariance = new Array(9).fill(0)
    }

    if (msg.rpvNorm !== undefined) {
      resolved.rpvNorm = msg.rpvNorm;
    }
    else {
      resolved.rpvNorm = 0.0
    }

    return resolved;
    }
};

module.exports = TdcpOutput;
