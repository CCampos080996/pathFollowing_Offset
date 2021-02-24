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

class AvlSatelliteData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.fromReceiver = null;
      this.fromNetwork = null;
      this.fromRinex = null;
      this.fromUnknown = null;
    }
    else {
      if (initObj.hasOwnProperty('fromReceiver')) {
        this.fromReceiver = initObj.fromReceiver
      }
      else {
        this.fromReceiver = 0;
      }
      if (initObj.hasOwnProperty('fromNetwork')) {
        this.fromNetwork = initObj.fromNetwork
      }
      else {
        this.fromNetwork = 0;
      }
      if (initObj.hasOwnProperty('fromRinex')) {
        this.fromRinex = initObj.fromRinex
      }
      else {
        this.fromRinex = 0;
      }
      if (initObj.hasOwnProperty('fromUnknown')) {
        this.fromUnknown = initObj.fromUnknown
      }
      else {
        this.fromUnknown = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AvlSatelliteData
    // Serialize message field [fromReceiver]
    bufferOffset = _serializer.uint32(obj.fromReceiver, buffer, bufferOffset);
    // Serialize message field [fromNetwork]
    bufferOffset = _serializer.uint32(obj.fromNetwork, buffer, bufferOffset);
    // Serialize message field [fromRinex]
    bufferOffset = _serializer.uint32(obj.fromRinex, buffer, bufferOffset);
    // Serialize message field [fromUnknown]
    bufferOffset = _serializer.uint32(obj.fromUnknown, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AvlSatelliteData
    let len;
    let data = new AvlSatelliteData(null);
    // Deserialize message field [fromReceiver]
    data.fromReceiver = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [fromNetwork]
    data.fromNetwork = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [fromRinex]
    data.fromRinex = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [fromUnknown]
    data.fromUnknown = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_sensor_msgs/AvlSatelliteData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '76f8b39b7941efd688ebc4770b25c1d2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32    fromReceiver
    uint32    fromNetwork
    uint32    fromRinex
    uint32    fromUnknown
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AvlSatelliteData(null);
    if (msg.fromReceiver !== undefined) {
      resolved.fromReceiver = msg.fromReceiver;
    }
    else {
      resolved.fromReceiver = 0
    }

    if (msg.fromNetwork !== undefined) {
      resolved.fromNetwork = msg.fromNetwork;
    }
    else {
      resolved.fromNetwork = 0
    }

    if (msg.fromRinex !== undefined) {
      resolved.fromRinex = msg.fromRinex;
    }
    else {
      resolved.fromRinex = 0
    }

    if (msg.fromUnknown !== undefined) {
      resolved.fromUnknown = msg.fromUnknown;
    }
    else {
      resolved.fromUnknown = 0
    }

    return resolved;
    }
};

module.exports = AvlSatelliteData;
