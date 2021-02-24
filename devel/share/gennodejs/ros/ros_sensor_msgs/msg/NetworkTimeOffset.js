// Auto-generated. Do not edit!

// (in-package ros_sensor_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let GpsTime = require('./GpsTime.js');

//-----------------------------------------------------------

class NetworkTimeOffset {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timeOfValidity = null;
      this.dataValid = null;
      this.networkDifferenceCounts = null;
      this.networkDriftCounts = null;
      this.oscillatorFreqEst = null;
      this.networkDifferenceCmdCounts = null;
      this.networkDriftCmdCounts = null;
      this.networkPpsCount = null;
      this.gpsPpsCount = null;
    }
    else {
      if (initObj.hasOwnProperty('timeOfValidity')) {
        this.timeOfValidity = initObj.timeOfValidity
      }
      else {
        this.timeOfValidity = new GpsTime();
      }
      if (initObj.hasOwnProperty('dataValid')) {
        this.dataValid = initObj.dataValid
      }
      else {
        this.dataValid = false;
      }
      if (initObj.hasOwnProperty('networkDifferenceCounts')) {
        this.networkDifferenceCounts = initObj.networkDifferenceCounts
      }
      else {
        this.networkDifferenceCounts = 0;
      }
      if (initObj.hasOwnProperty('networkDriftCounts')) {
        this.networkDriftCounts = initObj.networkDriftCounts
      }
      else {
        this.networkDriftCounts = 0;
      }
      if (initObj.hasOwnProperty('oscillatorFreqEst')) {
        this.oscillatorFreqEst = initObj.oscillatorFreqEst
      }
      else {
        this.oscillatorFreqEst = 0;
      }
      if (initObj.hasOwnProperty('networkDifferenceCmdCounts')) {
        this.networkDifferenceCmdCounts = initObj.networkDifferenceCmdCounts
      }
      else {
        this.networkDifferenceCmdCounts = 0;
      }
      if (initObj.hasOwnProperty('networkDriftCmdCounts')) {
        this.networkDriftCmdCounts = initObj.networkDriftCmdCounts
      }
      else {
        this.networkDriftCmdCounts = 0;
      }
      if (initObj.hasOwnProperty('networkPpsCount')) {
        this.networkPpsCount = initObj.networkPpsCount
      }
      else {
        this.networkPpsCount = 0;
      }
      if (initObj.hasOwnProperty('gpsPpsCount')) {
        this.gpsPpsCount = initObj.gpsPpsCount
      }
      else {
        this.gpsPpsCount = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NetworkTimeOffset
    // Serialize message field [timeOfValidity]
    bufferOffset = GpsTime.serialize(obj.timeOfValidity, buffer, bufferOffset);
    // Serialize message field [dataValid]
    bufferOffset = _serializer.bool(obj.dataValid, buffer, bufferOffset);
    // Serialize message field [networkDifferenceCounts]
    bufferOffset = _serializer.int32(obj.networkDifferenceCounts, buffer, bufferOffset);
    // Serialize message field [networkDriftCounts]
    bufferOffset = _serializer.int32(obj.networkDriftCounts, buffer, bufferOffset);
    // Serialize message field [oscillatorFreqEst]
    bufferOffset = _serializer.int32(obj.oscillatorFreqEst, buffer, bufferOffset);
    // Serialize message field [networkDifferenceCmdCounts]
    bufferOffset = _serializer.int32(obj.networkDifferenceCmdCounts, buffer, bufferOffset);
    // Serialize message field [networkDriftCmdCounts]
    bufferOffset = _serializer.int32(obj.networkDriftCmdCounts, buffer, bufferOffset);
    // Serialize message field [networkPpsCount]
    bufferOffset = _serializer.uint32(obj.networkPpsCount, buffer, bufferOffset);
    // Serialize message field [gpsPpsCount]
    bufferOffset = _serializer.uint32(obj.gpsPpsCount, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NetworkTimeOffset
    let len;
    let data = new NetworkTimeOffset(null);
    // Deserialize message field [timeOfValidity]
    data.timeOfValidity = GpsTime.deserialize(buffer, bufferOffset);
    // Deserialize message field [dataValid]
    data.dataValid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [networkDifferenceCounts]
    data.networkDifferenceCounts = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [networkDriftCounts]
    data.networkDriftCounts = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [oscillatorFreqEst]
    data.oscillatorFreqEst = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [networkDifferenceCmdCounts]
    data.networkDifferenceCmdCounts = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [networkDriftCmdCounts]
    data.networkDriftCmdCounts = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [networkPpsCount]
    data.networkPpsCount = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [gpsPpsCount]
    data.gpsPpsCount = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 41;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_sensor_msgs/NetworkTimeOffset';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '412c840c046eb987aa756fb5be2c7955';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
      GpsTime timeOfValidity
      bool    dataValid
      int32   networkDifferenceCounts
      int32   networkDriftCounts
      int32   oscillatorFreqEst
      int32   networkDifferenceCmdCounts
      int32   networkDriftCmdCounts
      uint32  networkPpsCount
      uint32  gpsPpsCount
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
    const resolved = new NetworkTimeOffset(null);
    if (msg.timeOfValidity !== undefined) {
      resolved.timeOfValidity = GpsTime.Resolve(msg.timeOfValidity)
    }
    else {
      resolved.timeOfValidity = new GpsTime()
    }

    if (msg.dataValid !== undefined) {
      resolved.dataValid = msg.dataValid;
    }
    else {
      resolved.dataValid = false
    }

    if (msg.networkDifferenceCounts !== undefined) {
      resolved.networkDifferenceCounts = msg.networkDifferenceCounts;
    }
    else {
      resolved.networkDifferenceCounts = 0
    }

    if (msg.networkDriftCounts !== undefined) {
      resolved.networkDriftCounts = msg.networkDriftCounts;
    }
    else {
      resolved.networkDriftCounts = 0
    }

    if (msg.oscillatorFreqEst !== undefined) {
      resolved.oscillatorFreqEst = msg.oscillatorFreqEst;
    }
    else {
      resolved.oscillatorFreqEst = 0
    }

    if (msg.networkDifferenceCmdCounts !== undefined) {
      resolved.networkDifferenceCmdCounts = msg.networkDifferenceCmdCounts;
    }
    else {
      resolved.networkDifferenceCmdCounts = 0
    }

    if (msg.networkDriftCmdCounts !== undefined) {
      resolved.networkDriftCmdCounts = msg.networkDriftCmdCounts;
    }
    else {
      resolved.networkDriftCmdCounts = 0
    }

    if (msg.networkPpsCount !== undefined) {
      resolved.networkPpsCount = msg.networkPpsCount;
    }
    else {
      resolved.networkPpsCount = 0
    }

    if (msg.gpsPpsCount !== undefined) {
      resolved.gpsPpsCount = msg.gpsPpsCount;
    }
    else {
      resolved.gpsPpsCount = 0
    }

    return resolved;
    }
};

module.exports = NetworkTimeOffset;
