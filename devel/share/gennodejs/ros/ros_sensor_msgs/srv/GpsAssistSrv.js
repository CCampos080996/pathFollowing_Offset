// Auto-generated. Do not edit!

// (in-package ros_sensor_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let GpsAssist = require('../msg/GpsAssist.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class GpsAssistSrvRequest {
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
        this.assist = new GpsAssist();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GpsAssistSrvRequest
    // Serialize message field [assist]
    bufferOffset = GpsAssist.serialize(obj.assist, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GpsAssistSrvRequest
    let len;
    let data = new GpsAssistSrvRequest(null);
    // Deserialize message field [assist]
    data.assist = GpsAssist.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += GpsAssist.getMessageSize(object.assist);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_sensor_msgs/GpsAssistSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5995a552c81c7ed059540e11e1a3b760';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    GpsAssist assist
    
    ================================================================================
    MSG: ros_sensor_msgs/GpsAssist
    LlhPosition             position
    bool                    position_valid
    CpuTimeOffset           cpu_time_offset
    GpsEphemeris[]          ephemerides
    GpsAlmanac[]            almanac
    UtcIonosphere           utc_iono
    bool                    utc_iono_valid
    bool                    include_precise_time
    
    #float64                 utc_system_time_offset
    #GpsTime                 gps_time
    #bool                    gps_time_valid
    ================================================================================
    MSG: ros_sensor_msgs/LlhPosition
    # # LlhPosition
    
    float64                  latitude   # [deg]
    float64                  longitude  # [deg]
    float64                  altitude   # [m]
    uint16                   horizontalAccuracy
    uint16                   verticalAccuracy
    ================================================================================
    MSG: ros_sensor_msgs/CpuTimeOffset
    bool    valid
    float64 secondsOffset
    ================================================================================
    MSG: ros_sensor_msgs/GpsEphemeris
    ## Gps Ephemeris subframes for one satellite
    
    uint16      prn
    uint8[30]   subframe1
    uint8[30]   subframe2
    uint8[30]   subframe3
    ================================================================================
    MSG: ros_sensor_msgs/GpsAlmanac
    
    uint16      prn
    uint16      reference_week
    uint8[30]   subframe
    ================================================================================
    MSG: ros_sensor_msgs/UtcIonosphere
    ## Subframe of UTC and Ionospheric Parameters
    
    uint8[30]   subframe
    
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GpsAssistSrvRequest(null);
    if (msg.assist !== undefined) {
      resolved.assist = GpsAssist.Resolve(msg.assist)
    }
    else {
      resolved.assist = new GpsAssist()
    }

    return resolved;
    }
};

class GpsAssistSrvResponse {
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
    // Serializes a message object of type GpsAssistSrvResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GpsAssistSrvResponse
    let len;
    let data = new GpsAssistSrvResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_sensor_msgs/GpsAssistSrvResponse';
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
    const resolved = new GpsAssistSrvResponse(null);
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
  Request: GpsAssistSrvRequest,
  Response: GpsAssistSrvResponse,
  md5sum() { return '90343e3974f5bb94a900d205e0870ced'; },
  datatype() { return 'ros_sensor_msgs/GpsAssistSrv'; }
};
