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

class TdcpDiagnostics {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.gpsTime = null;
      this.numAvailableSvs = null;
      this.numPsrSolSvs = null;
      this.numTdcpSolSvs = null;
      this.spsDeltaPosition = null;
      this.faultCheckVariable1 = null;
      this.faultCheckVariable2 = null;
      this.sampleTime = null;
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
      if (initObj.hasOwnProperty('numAvailableSvs')) {
        this.numAvailableSvs = initObj.numAvailableSvs
      }
      else {
        this.numAvailableSvs = 0;
      }
      if (initObj.hasOwnProperty('numPsrSolSvs')) {
        this.numPsrSolSvs = initObj.numPsrSolSvs
      }
      else {
        this.numPsrSolSvs = 0;
      }
      if (initObj.hasOwnProperty('numTdcpSolSvs')) {
        this.numTdcpSolSvs = initObj.numTdcpSolSvs
      }
      else {
        this.numTdcpSolSvs = 0;
      }
      if (initObj.hasOwnProperty('spsDeltaPosition')) {
        this.spsDeltaPosition = initObj.spsDeltaPosition
      }
      else {
        this.spsDeltaPosition = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('faultCheckVariable1')) {
        this.faultCheckVariable1 = initObj.faultCheckVariable1
      }
      else {
        this.faultCheckVariable1 = 0.0;
      }
      if (initObj.hasOwnProperty('faultCheckVariable2')) {
        this.faultCheckVariable2 = initObj.faultCheckVariable2
      }
      else {
        this.faultCheckVariable2 = 0.0;
      }
      if (initObj.hasOwnProperty('sampleTime')) {
        this.sampleTime = initObj.sampleTime
      }
      else {
        this.sampleTime = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TdcpDiagnostics
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [gpsTime]
    bufferOffset = ros_sensor_msgs.msg.GpsTime.serialize(obj.gpsTime, buffer, bufferOffset);
    // Serialize message field [numAvailableSvs]
    bufferOffset = _serializer.uint16(obj.numAvailableSvs, buffer, bufferOffset);
    // Serialize message field [numPsrSolSvs]
    bufferOffset = _serializer.uint16(obj.numPsrSolSvs, buffer, bufferOffset);
    // Serialize message field [numTdcpSolSvs]
    bufferOffset = _serializer.uint16(obj.numTdcpSolSvs, buffer, bufferOffset);
    // Serialize message field [spsDeltaPosition]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.spsDeltaPosition, buffer, bufferOffset);
    // Serialize message field [faultCheckVariable1]
    bufferOffset = _serializer.float32(obj.faultCheckVariable1, buffer, bufferOffset);
    // Serialize message field [faultCheckVariable2]
    bufferOffset = _serializer.float32(obj.faultCheckVariable2, buffer, bufferOffset);
    // Serialize message field [sampleTime]
    bufferOffset = _serializer.float32(obj.sampleTime, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TdcpDiagnostics
    let len;
    let data = new TdcpDiagnostics(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [gpsTime]
    data.gpsTime = ros_sensor_msgs.msg.GpsTime.deserialize(buffer, bufferOffset);
    // Deserialize message field [numAvailableSvs]
    data.numAvailableSvs = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [numPsrSolSvs]
    data.numPsrSolSvs = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [numTdcpSolSvs]
    data.numTdcpSolSvs = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [spsDeltaPosition]
    data.spsDeltaPosition = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [faultCheckVariable1]
    data.faultCheckVariable1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [faultCheckVariable2]
    data.faultCheckVariable2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [sampleTime]
    data.sampleTime = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 54;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tdcp/TdcpDiagnostics';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '29abe80c51328853cd49a1acdc38a46c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ## TdcpDiagnostics
    
    std_msgs/Header          header
    ros_sensor_msgs/GpsTime  gpsTime
    
    uint16 numAvailableSvs
    uint16 numPsrSolSvs
    uint16 numTdcpSolSvs
    
    geometry_msgs/Vector3 spsDeltaPosition
    
    float32 faultCheckVariable1
    float32 faultCheckVariable2
    
    float32 sampleTime
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
    const resolved = new TdcpDiagnostics(null);
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

    if (msg.numAvailableSvs !== undefined) {
      resolved.numAvailableSvs = msg.numAvailableSvs;
    }
    else {
      resolved.numAvailableSvs = 0
    }

    if (msg.numPsrSolSvs !== undefined) {
      resolved.numPsrSolSvs = msg.numPsrSolSvs;
    }
    else {
      resolved.numPsrSolSvs = 0
    }

    if (msg.numTdcpSolSvs !== undefined) {
      resolved.numTdcpSolSvs = msg.numTdcpSolSvs;
    }
    else {
      resolved.numTdcpSolSvs = 0
    }

    if (msg.spsDeltaPosition !== undefined) {
      resolved.spsDeltaPosition = geometry_msgs.msg.Vector3.Resolve(msg.spsDeltaPosition)
    }
    else {
      resolved.spsDeltaPosition = new geometry_msgs.msg.Vector3()
    }

    if (msg.faultCheckVariable1 !== undefined) {
      resolved.faultCheckVariable1 = msg.faultCheckVariable1;
    }
    else {
      resolved.faultCheckVariable1 = 0.0
    }

    if (msg.faultCheckVariable2 !== undefined) {
      resolved.faultCheckVariable2 = msg.faultCheckVariable2;
    }
    else {
      resolved.faultCheckVariable2 = 0.0
    }

    if (msg.sampleTime !== undefined) {
      resolved.sampleTime = msg.sampleTime;
    }
    else {
      resolved.sampleTime = 0.0
    }

    return resolved;
    }
};

module.exports = TdcpDiagnostics;
