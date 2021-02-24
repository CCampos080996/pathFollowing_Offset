// Auto-generated. Do not edit!

// (in-package wgs_conversions.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class WgsConversionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lla = null;
      this.xyz = null;
      this.enu = null;
      this.xyz_cov = null;
      this.enu_cov = null;
      this.ref_lla = null;
    }
    else {
      if (initObj.hasOwnProperty('lla')) {
        this.lla = initObj.lla
      }
      else {
        this.lla = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('xyz')) {
        this.xyz = initObj.xyz
      }
      else {
        this.xyz = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('enu')) {
        this.enu = initObj.enu
      }
      else {
        this.enu = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('xyz_cov')) {
        this.xyz_cov = initObj.xyz_cov
      }
      else {
        this.xyz_cov = new Array(9).fill(0);
      }
      if (initObj.hasOwnProperty('enu_cov')) {
        this.enu_cov = initObj.enu_cov
      }
      else {
        this.enu_cov = new Array(9).fill(0);
      }
      if (initObj.hasOwnProperty('ref_lla')) {
        this.ref_lla = initObj.ref_lla
      }
      else {
        this.ref_lla = new Array(3).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WgsConversionRequest
    // Check that the constant length array field [lla] has the right length
    if (obj.lla.length !== 3) {
      throw new Error('Unable to serialize array field lla - length must be 3')
    }
    // Serialize message field [lla]
    bufferOffset = _arraySerializer.float64(obj.lla, buffer, bufferOffset, 3);
    // Check that the constant length array field [xyz] has the right length
    if (obj.xyz.length !== 3) {
      throw new Error('Unable to serialize array field xyz - length must be 3')
    }
    // Serialize message field [xyz]
    bufferOffset = _arraySerializer.float64(obj.xyz, buffer, bufferOffset, 3);
    // Check that the constant length array field [enu] has the right length
    if (obj.enu.length !== 3) {
      throw new Error('Unable to serialize array field enu - length must be 3')
    }
    // Serialize message field [enu]
    bufferOffset = _arraySerializer.float64(obj.enu, buffer, bufferOffset, 3);
    // Check that the constant length array field [xyz_cov] has the right length
    if (obj.xyz_cov.length !== 9) {
      throw new Error('Unable to serialize array field xyz_cov - length must be 9')
    }
    // Serialize message field [xyz_cov]
    bufferOffset = _arraySerializer.float64(obj.xyz_cov, buffer, bufferOffset, 9);
    // Check that the constant length array field [enu_cov] has the right length
    if (obj.enu_cov.length !== 9) {
      throw new Error('Unable to serialize array field enu_cov - length must be 9')
    }
    // Serialize message field [enu_cov]
    bufferOffset = _arraySerializer.float64(obj.enu_cov, buffer, bufferOffset, 9);
    // Check that the constant length array field [ref_lla] has the right length
    if (obj.ref_lla.length !== 3) {
      throw new Error('Unable to serialize array field ref_lla - length must be 3')
    }
    // Serialize message field [ref_lla]
    bufferOffset = _arraySerializer.float64(obj.ref_lla, buffer, bufferOffset, 3);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WgsConversionRequest
    let len;
    let data = new WgsConversionRequest(null);
    // Deserialize message field [lla]
    data.lla = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    // Deserialize message field [xyz]
    data.xyz = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    // Deserialize message field [enu]
    data.enu = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    // Deserialize message field [xyz_cov]
    data.xyz_cov = _arrayDeserializer.float64(buffer, bufferOffset, 9)
    // Deserialize message field [enu_cov]
    data.enu_cov = _arrayDeserializer.float64(buffer, bufferOffset, 9)
    // Deserialize message field [ref_lla]
    data.ref_lla = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    return data;
  }

  static getMessageSize(object) {
    return 240;
  }

  static datatype() {
    // Returns string type for a service object
    return 'wgs_conversions/WgsConversionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '47cb49bdb6735f0c43c724ada8933741';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[3] lla
    float64[3] xyz
    float64[3] enu
    float64[9] xyz_cov
    float64[9] enu_cov
    float64[3] ref_lla
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WgsConversionRequest(null);
    if (msg.lla !== undefined) {
      resolved.lla = msg.lla;
    }
    else {
      resolved.lla = new Array(3).fill(0)
    }

    if (msg.xyz !== undefined) {
      resolved.xyz = msg.xyz;
    }
    else {
      resolved.xyz = new Array(3).fill(0)
    }

    if (msg.enu !== undefined) {
      resolved.enu = msg.enu;
    }
    else {
      resolved.enu = new Array(3).fill(0)
    }

    if (msg.xyz_cov !== undefined) {
      resolved.xyz_cov = msg.xyz_cov;
    }
    else {
      resolved.xyz_cov = new Array(9).fill(0)
    }

    if (msg.enu_cov !== undefined) {
      resolved.enu_cov = msg.enu_cov;
    }
    else {
      resolved.enu_cov = new Array(9).fill(0)
    }

    if (msg.ref_lla !== undefined) {
      resolved.ref_lla = msg.ref_lla;
    }
    else {
      resolved.ref_lla = new Array(3).fill(0)
    }

    return resolved;
    }
};

class WgsConversionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lla = null;
      this.xyz = null;
      this.enu = null;
      this.xyz_cov = null;
      this.enu_cov = null;
    }
    else {
      if (initObj.hasOwnProperty('lla')) {
        this.lla = initObj.lla
      }
      else {
        this.lla = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('xyz')) {
        this.xyz = initObj.xyz
      }
      else {
        this.xyz = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('enu')) {
        this.enu = initObj.enu
      }
      else {
        this.enu = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('xyz_cov')) {
        this.xyz_cov = initObj.xyz_cov
      }
      else {
        this.xyz_cov = new Array(9).fill(0);
      }
      if (initObj.hasOwnProperty('enu_cov')) {
        this.enu_cov = initObj.enu_cov
      }
      else {
        this.enu_cov = new Array(9).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WgsConversionResponse
    // Check that the constant length array field [lla] has the right length
    if (obj.lla.length !== 3) {
      throw new Error('Unable to serialize array field lla - length must be 3')
    }
    // Serialize message field [lla]
    bufferOffset = _arraySerializer.float64(obj.lla, buffer, bufferOffset, 3);
    // Check that the constant length array field [xyz] has the right length
    if (obj.xyz.length !== 3) {
      throw new Error('Unable to serialize array field xyz - length must be 3')
    }
    // Serialize message field [xyz]
    bufferOffset = _arraySerializer.float64(obj.xyz, buffer, bufferOffset, 3);
    // Check that the constant length array field [enu] has the right length
    if (obj.enu.length !== 3) {
      throw new Error('Unable to serialize array field enu - length must be 3')
    }
    // Serialize message field [enu]
    bufferOffset = _arraySerializer.float64(obj.enu, buffer, bufferOffset, 3);
    // Check that the constant length array field [xyz_cov] has the right length
    if (obj.xyz_cov.length !== 9) {
      throw new Error('Unable to serialize array field xyz_cov - length must be 9')
    }
    // Serialize message field [xyz_cov]
    bufferOffset = _arraySerializer.float64(obj.xyz_cov, buffer, bufferOffset, 9);
    // Check that the constant length array field [enu_cov] has the right length
    if (obj.enu_cov.length !== 9) {
      throw new Error('Unable to serialize array field enu_cov - length must be 9')
    }
    // Serialize message field [enu_cov]
    bufferOffset = _arraySerializer.float64(obj.enu_cov, buffer, bufferOffset, 9);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WgsConversionResponse
    let len;
    let data = new WgsConversionResponse(null);
    // Deserialize message field [lla]
    data.lla = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    // Deserialize message field [xyz]
    data.xyz = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    // Deserialize message field [enu]
    data.enu = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    // Deserialize message field [xyz_cov]
    data.xyz_cov = _arrayDeserializer.float64(buffer, bufferOffset, 9)
    // Deserialize message field [enu_cov]
    data.enu_cov = _arrayDeserializer.float64(buffer, bufferOffset, 9)
    return data;
  }

  static getMessageSize(object) {
    return 216;
  }

  static datatype() {
    // Returns string type for a service object
    return 'wgs_conversions/WgsConversionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c2cd2fea05ac4d6f35c95ca205c8b8ce';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[3] lla
    float64[3] xyz
    float64[3] enu
    float64[9] xyz_cov
    float64[9] enu_cov
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WgsConversionResponse(null);
    if (msg.lla !== undefined) {
      resolved.lla = msg.lla;
    }
    else {
      resolved.lla = new Array(3).fill(0)
    }

    if (msg.xyz !== undefined) {
      resolved.xyz = msg.xyz;
    }
    else {
      resolved.xyz = new Array(3).fill(0)
    }

    if (msg.enu !== undefined) {
      resolved.enu = msg.enu;
    }
    else {
      resolved.enu = new Array(3).fill(0)
    }

    if (msg.xyz_cov !== undefined) {
      resolved.xyz_cov = msg.xyz_cov;
    }
    else {
      resolved.xyz_cov = new Array(9).fill(0)
    }

    if (msg.enu_cov !== undefined) {
      resolved.enu_cov = msg.enu_cov;
    }
    else {
      resolved.enu_cov = new Array(9).fill(0)
    }

    return resolved;
    }
};

module.exports = {
  Request: WgsConversionRequest,
  Response: WgsConversionResponse,
  md5sum() { return 'ea85c4235117ae109ef1fb9d826c2e78'; },
  datatype() { return 'wgs_conversions/WgsConversion'; }
};
