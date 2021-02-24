// Auto-generated. Do not edit!

// (in-package ros_sensor_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CmdGpsAssist = require('../msg/CmdGpsAssist.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class CmdGpsAssistSrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.assist = null;
    }
    else {
      if (initObj.hasOwnProperty('assist')) {
        this.assist = initObj.assist
      }
      else {
        this.assist = new CmdGpsAssist();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CmdGpsAssistSrvRequest
    // Serialize message field [assist]
    bufferOffset = CmdGpsAssist.serialize(obj.assist, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CmdGpsAssistSrvRequest
    let len;
    let data = new CmdGpsAssistSrvRequest(null);
    // Deserialize message field [assist]
    data.assist = CmdGpsAssist.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 6;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_sensor_msgs/CmdGpsAssistSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dbb57e1d99c69fb9537031facc1018c7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    CmdGpsAssist assist
    
    ================================================================================
    MSG: ros_sensor_msgs/CmdGpsAssist
    bool assist_time
    bool assist_position
    bool assist_gps_ephemeris
    bool assist_gps_almanac
    bool assist_gps_utc_iono
    bool assist_precise_time
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CmdGpsAssistSrvRequest(null);
    if (msg.assist !== undefined) {
      resolved.assist = CmdGpsAssist.Resolve(msg.assist)
    }
    else {
      resolved.assist = new CmdGpsAssist()
    }

    return resolved;
    }
};

class CmdGpsAssistSrvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CmdGpsAssistSrvResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CmdGpsAssistSrvResponse
    let len;
    let data = new CmdGpsAssistSrvResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_sensor_msgs/CmdGpsAssistSrvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CmdGpsAssistSrvResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: CmdGpsAssistSrvRequest,
  Response: CmdGpsAssistSrvResponse,
  md5sum() { return '6bdb59dd737011607cc3575b372fe7eb'; },
  datatype() { return 'ros_sensor_msgs/CmdGpsAssistSrv'; }
};
