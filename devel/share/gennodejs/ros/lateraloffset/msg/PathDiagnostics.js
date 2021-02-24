// Auto-generated. Do not edit!

// (in-package lateraloffset.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ros_sensor_msgs = _finder('ros_sensor_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PathDiagnostics {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.gpsTime = null;
      this.lateralOffset = null;
      this.offsetVariance = null;
      this.curvatureRating = null;
      this.localBodyFrameRPV = null;
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
      if (initObj.hasOwnProperty('lateralOffset')) {
        this.lateralOffset = initObj.lateralOffset
      }
      else {
        this.lateralOffset = 0.0;
      }
      if (initObj.hasOwnProperty('offsetVariance')) {
        this.offsetVariance = initObj.offsetVariance
      }
      else {
        this.offsetVariance = [];
      }
      if (initObj.hasOwnProperty('curvatureRating')) {
        this.curvatureRating = initObj.curvatureRating
      }
      else {
        this.curvatureRating = 0.0;
      }
      if (initObj.hasOwnProperty('localBodyFrameRPV')) {
        this.localBodyFrameRPV = initObj.localBodyFrameRPV
      }
      else {
        this.localBodyFrameRPV = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PathDiagnostics
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [gpsTime]
    bufferOffset = ros_sensor_msgs.msg.GpsTime.serialize(obj.gpsTime, buffer, bufferOffset);
    // Serialize message field [lateralOffset]
    bufferOffset = _serializer.float32(obj.lateralOffset, buffer, bufferOffset);
    // Serialize message field [offsetVariance]
    bufferOffset = _arraySerializer.float32(obj.offsetVariance, buffer, bufferOffset, null);
    // Serialize message field [curvatureRating]
    bufferOffset = _serializer.float32(obj.curvatureRating, buffer, bufferOffset);
    // Serialize message field [localBodyFrameRPV]
    bufferOffset = _arraySerializer.float32(obj.localBodyFrameRPV, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PathDiagnostics
    let len;
    let data = new PathDiagnostics(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [gpsTime]
    data.gpsTime = ros_sensor_msgs.msg.GpsTime.deserialize(buffer, bufferOffset);
    // Deserialize message field [lateralOffset]
    data.lateralOffset = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [offsetVariance]
    data.offsetVariance = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [curvatureRating]
    data.curvatureRating = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [localBodyFrameRPV]
    data.localBodyFrameRPV = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.offsetVariance.length;
    length += 4 * object.localBodyFrameRPV.length;
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lateraloffset/PathDiagnostics';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c5862f510f0fc37b9f5e8121e6c2f96c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ## Diagnostics 
    
    std_msgs/Header          header
    ros_sensor_msgs/GpsTime  gpsTime
    
    float32 lateralOffset
    
    float32[] offsetVariance
    
    float32 curvatureRating
    float32[] localBodyFrameRPV
    
    
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PathDiagnostics(null);
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

    if (msg.lateralOffset !== undefined) {
      resolved.lateralOffset = msg.lateralOffset;
    }
    else {
      resolved.lateralOffset = 0.0
    }

    if (msg.offsetVariance !== undefined) {
      resolved.offsetVariance = msg.offsetVariance;
    }
    else {
      resolved.offsetVariance = []
    }

    if (msg.curvatureRating !== undefined) {
      resolved.curvatureRating = msg.curvatureRating;
    }
    else {
      resolved.curvatureRating = 0.0
    }

    if (msg.localBodyFrameRPV !== undefined) {
      resolved.localBodyFrameRPV = msg.localBodyFrameRPV;
    }
    else {
      resolved.localBodyFrameRPV = []
    }

    return resolved;
    }
};

module.exports = PathDiagnostics;
