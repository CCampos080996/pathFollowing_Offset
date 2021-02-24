// Auto-generated. Do not edit!

// (in-package drtk.msg)


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

class DrtkDiagnostics {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.gpsTime = null;
      this.sdFloatIntegerAmbiguitiesL1 = null;
      this.sdFloatIntegerAmbiguitiesL2 = null;
      this.numAvailableSvs = null;
      this.lambdaRatio = null;
      this.lockedLambdaRatio = null;
      this.basePrn = null;
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
      if (initObj.hasOwnProperty('sdFloatIntegerAmbiguitiesL1')) {
        this.sdFloatIntegerAmbiguitiesL1 = initObj.sdFloatIntegerAmbiguitiesL1
      }
      else {
        this.sdFloatIntegerAmbiguitiesL1 = new Array(32).fill(0);
      }
      if (initObj.hasOwnProperty('sdFloatIntegerAmbiguitiesL2')) {
        this.sdFloatIntegerAmbiguitiesL2 = initObj.sdFloatIntegerAmbiguitiesL2
      }
      else {
        this.sdFloatIntegerAmbiguitiesL2 = new Array(32).fill(0);
      }
      if (initObj.hasOwnProperty('numAvailableSvs')) {
        this.numAvailableSvs = initObj.numAvailableSvs
      }
      else {
        this.numAvailableSvs = 0;
      }
      if (initObj.hasOwnProperty('lambdaRatio')) {
        this.lambdaRatio = initObj.lambdaRatio
      }
      else {
        this.lambdaRatio = 0.0;
      }
      if (initObj.hasOwnProperty('lockedLambdaRatio')) {
        this.lockedLambdaRatio = initObj.lockedLambdaRatio
      }
      else {
        this.lockedLambdaRatio = 0.0;
      }
      if (initObj.hasOwnProperty('basePrn')) {
        this.basePrn = initObj.basePrn
      }
      else {
        this.basePrn = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DrtkDiagnostics
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [gpsTime]
    bufferOffset = ros_sensor_msgs.msg.GpsTime.serialize(obj.gpsTime, buffer, bufferOffset);
    // Check that the constant length array field [sdFloatIntegerAmbiguitiesL1] has the right length
    if (obj.sdFloatIntegerAmbiguitiesL1.length !== 32) {
      throw new Error('Unable to serialize array field sdFloatIntegerAmbiguitiesL1 - length must be 32')
    }
    // Serialize message field [sdFloatIntegerAmbiguitiesL1]
    bufferOffset = _arraySerializer.float64(obj.sdFloatIntegerAmbiguitiesL1, buffer, bufferOffset, 32);
    // Check that the constant length array field [sdFloatIntegerAmbiguitiesL2] has the right length
    if (obj.sdFloatIntegerAmbiguitiesL2.length !== 32) {
      throw new Error('Unable to serialize array field sdFloatIntegerAmbiguitiesL2 - length must be 32')
    }
    // Serialize message field [sdFloatIntegerAmbiguitiesL2]
    bufferOffset = _arraySerializer.float64(obj.sdFloatIntegerAmbiguitiesL2, buffer, bufferOffset, 32);
    // Serialize message field [numAvailableSvs]
    bufferOffset = _serializer.uint16(obj.numAvailableSvs, buffer, bufferOffset);
    // Serialize message field [lambdaRatio]
    bufferOffset = _serializer.float64(obj.lambdaRatio, buffer, bufferOffset);
    // Serialize message field [lockedLambdaRatio]
    bufferOffset = _serializer.float64(obj.lockedLambdaRatio, buffer, bufferOffset);
    // Serialize message field [basePrn]
    bufferOffset = _serializer.uint32(obj.basePrn, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DrtkDiagnostics
    let len;
    let data = new DrtkDiagnostics(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [gpsTime]
    data.gpsTime = ros_sensor_msgs.msg.GpsTime.deserialize(buffer, bufferOffset);
    // Deserialize message field [sdFloatIntegerAmbiguitiesL1]
    data.sdFloatIntegerAmbiguitiesL1 = _arrayDeserializer.float64(buffer, bufferOffset, 32)
    // Deserialize message field [sdFloatIntegerAmbiguitiesL2]
    data.sdFloatIntegerAmbiguitiesL2 = _arrayDeserializer.float64(buffer, bufferOffset, 32)
    // Deserialize message field [numAvailableSvs]
    data.numAvailableSvs = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [lambdaRatio]
    data.lambdaRatio = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lockedLambdaRatio]
    data.lockedLambdaRatio = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [basePrn]
    data.basePrn = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 546;
  }

  static datatype() {
    // Returns string type for a message object
    return 'drtk/DrtkDiagnostics';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3b3d08a7eca2c863ebc178a9aab483f7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ## DrtkDiagnostics
    
    std_msgs/Header   header
    ros_sensor_msgs/GpsTime  gpsTime
    
    float64[32]                  sdFloatIntegerAmbiguitiesL1
    float64[32]                  sdFloatIntegerAmbiguitiesL2
    
    # float64[32]                  sdFloatIntegerAmbiguitiesCovarianceL1
    # float64[32]                  sdFloatIntegerAmbiguitiesCovarianceL2
    
    uint16 numAvailableSvs
    
    float64 lambdaRatio
    float64 lockedLambdaRatio
    
    uint32 basePrn
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
    const resolved = new DrtkDiagnostics(null);
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

    if (msg.sdFloatIntegerAmbiguitiesL1 !== undefined) {
      resolved.sdFloatIntegerAmbiguitiesL1 = msg.sdFloatIntegerAmbiguitiesL1;
    }
    else {
      resolved.sdFloatIntegerAmbiguitiesL1 = new Array(32).fill(0)
    }

    if (msg.sdFloatIntegerAmbiguitiesL2 !== undefined) {
      resolved.sdFloatIntegerAmbiguitiesL2 = msg.sdFloatIntegerAmbiguitiesL2;
    }
    else {
      resolved.sdFloatIntegerAmbiguitiesL2 = new Array(32).fill(0)
    }

    if (msg.numAvailableSvs !== undefined) {
      resolved.numAvailableSvs = msg.numAvailableSvs;
    }
    else {
      resolved.numAvailableSvs = 0
    }

    if (msg.lambdaRatio !== undefined) {
      resolved.lambdaRatio = msg.lambdaRatio;
    }
    else {
      resolved.lambdaRatio = 0.0
    }

    if (msg.lockedLambdaRatio !== undefined) {
      resolved.lockedLambdaRatio = msg.lockedLambdaRatio;
    }
    else {
      resolved.lockedLambdaRatio = 0.0
    }

    if (msg.basePrn !== undefined) {
      resolved.basePrn = msg.basePrn;
    }
    else {
      resolved.basePrn = 0
    }

    return resolved;
    }
};

module.exports = DrtkDiagnostics;
