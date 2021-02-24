// Auto-generated. Do not edit!

// (in-package ros_sensor_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RfRange {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.range = null;
      this.rangeRate = null;
      this.rangeVariance = null;
      this.rangeRateVariance = null;
      this.timestamp = null;
      this.sourceId = null;
      this.destId = null;
      this.rssi = null;
      this.quality = null;
    }
    else {
      if (initObj.hasOwnProperty('range')) {
        this.range = initObj.range
      }
      else {
        this.range = 0.0;
      }
      if (initObj.hasOwnProperty('rangeRate')) {
        this.rangeRate = initObj.rangeRate
      }
      else {
        this.rangeRate = 0.0;
      }
      if (initObj.hasOwnProperty('rangeVariance')) {
        this.rangeVariance = initObj.rangeVariance
      }
      else {
        this.rangeVariance = 0.0;
      }
      if (initObj.hasOwnProperty('rangeRateVariance')) {
        this.rangeRateVariance = initObj.rangeRateVariance
      }
      else {
        this.rangeRateVariance = 0.0;
      }
      if (initObj.hasOwnProperty('timestamp')) {
        this.timestamp = initObj.timestamp
      }
      else {
        this.timestamp = 0;
      }
      if (initObj.hasOwnProperty('sourceId')) {
        this.sourceId = initObj.sourceId
      }
      else {
        this.sourceId = 0;
      }
      if (initObj.hasOwnProperty('destId')) {
        this.destId = initObj.destId
      }
      else {
        this.destId = 0;
      }
      if (initObj.hasOwnProperty('rssi')) {
        this.rssi = initObj.rssi
      }
      else {
        this.rssi = 0;
      }
      if (initObj.hasOwnProperty('quality')) {
        this.quality = initObj.quality
      }
      else {
        this.quality = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RfRange
    // Serialize message field [range]
    bufferOffset = _serializer.float64(obj.range, buffer, bufferOffset);
    // Serialize message field [rangeRate]
    bufferOffset = _serializer.float64(obj.rangeRate, buffer, bufferOffset);
    // Serialize message field [rangeVariance]
    bufferOffset = _serializer.float64(obj.rangeVariance, buffer, bufferOffset);
    // Serialize message field [rangeRateVariance]
    bufferOffset = _serializer.float64(obj.rangeRateVariance, buffer, bufferOffset);
    // Serialize message field [timestamp]
    bufferOffset = _serializer.uint32(obj.timestamp, buffer, bufferOffset);
    // Serialize message field [sourceId]
    bufferOffset = _serializer.uint32(obj.sourceId, buffer, bufferOffset);
    // Serialize message field [destId]
    bufferOffset = _serializer.uint32(obj.destId, buffer, bufferOffset);
    // Serialize message field [rssi]
    bufferOffset = _serializer.uint16(obj.rssi, buffer, bufferOffset);
    // Serialize message field [quality]
    bufferOffset = _serializer.uint16(obj.quality, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RfRange
    let len;
    let data = new RfRange(null);
    // Deserialize message field [range]
    data.range = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rangeRate]
    data.rangeRate = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rangeVariance]
    data.rangeVariance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rangeRateVariance]
    data.rangeRateVariance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [sourceId]
    data.sourceId = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [destId]
    data.destId = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [rssi]
    data.rssi = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [quality]
    data.quality = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_sensor_msgs/RfRange';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '32b87628f581d5bd2a8b44788eff9d27';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Range to specified object
    float64 range
    float64 rangeRate
    float64 rangeVariance
    float64 rangeRateVariance
    uint32  timestamp
    uint32  sourceId
    uint32  destId
    uint16  rssi
    uint16  quality
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RfRange(null);
    if (msg.range !== undefined) {
      resolved.range = msg.range;
    }
    else {
      resolved.range = 0.0
    }

    if (msg.rangeRate !== undefined) {
      resolved.rangeRate = msg.rangeRate;
    }
    else {
      resolved.rangeRate = 0.0
    }

    if (msg.rangeVariance !== undefined) {
      resolved.rangeVariance = msg.rangeVariance;
    }
    else {
      resolved.rangeVariance = 0.0
    }

    if (msg.rangeRateVariance !== undefined) {
      resolved.rangeRateVariance = msg.rangeRateVariance;
    }
    else {
      resolved.rangeRateVariance = 0.0
    }

    if (msg.timestamp !== undefined) {
      resolved.timestamp = msg.timestamp;
    }
    else {
      resolved.timestamp = 0
    }

    if (msg.sourceId !== undefined) {
      resolved.sourceId = msg.sourceId;
    }
    else {
      resolved.sourceId = 0
    }

    if (msg.destId !== undefined) {
      resolved.destId = msg.destId;
    }
    else {
      resolved.destId = 0
    }

    if (msg.rssi !== undefined) {
      resolved.rssi = msg.rssi;
    }
    else {
      resolved.rssi = 0
    }

    if (msg.quality !== undefined) {
      resolved.quality = msg.quality;
    }
    else {
      resolved.quality = 0
    }

    return resolved;
    }
};

module.exports = RfRange;
