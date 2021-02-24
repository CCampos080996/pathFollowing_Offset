// Auto-generated. Do not edit!

// (in-package ros_sensor_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LlhPosition = require('./LlhPosition.js');
let CpuTimeOffset = require('./CpuTimeOffset.js');
let GpsEphemeris = require('./GpsEphemeris.js');
let GpsAlmanac = require('./GpsAlmanac.js');
let UtcIonosphere = require('./UtcIonosphere.js');

//-----------------------------------------------------------

class GpsAssist {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position = null;
      this.position_valid = null;
      this.cpu_time_offset = null;
      this.ephemerides = null;
      this.almanac = null;
      this.utc_iono = null;
      this.utc_iono_valid = null;
      this.include_precise_time = null;
    }
    else {
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new LlhPosition();
      }
      if (initObj.hasOwnProperty('position_valid')) {
        this.position_valid = initObj.position_valid
      }
      else {
        this.position_valid = false;
      }
      if (initObj.hasOwnProperty('cpu_time_offset')) {
        this.cpu_time_offset = initObj.cpu_time_offset
      }
      else {
        this.cpu_time_offset = new CpuTimeOffset();
      }
      if (initObj.hasOwnProperty('ephemerides')) {
        this.ephemerides = initObj.ephemerides
      }
      else {
        this.ephemerides = [];
      }
      if (initObj.hasOwnProperty('almanac')) {
        this.almanac = initObj.almanac
      }
      else {
        this.almanac = [];
      }
      if (initObj.hasOwnProperty('utc_iono')) {
        this.utc_iono = initObj.utc_iono
      }
      else {
        this.utc_iono = new UtcIonosphere();
      }
      if (initObj.hasOwnProperty('utc_iono_valid')) {
        this.utc_iono_valid = initObj.utc_iono_valid
      }
      else {
        this.utc_iono_valid = false;
      }
      if (initObj.hasOwnProperty('include_precise_time')) {
        this.include_precise_time = initObj.include_precise_time
      }
      else {
        this.include_precise_time = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GpsAssist
    // Serialize message field [position]
    bufferOffset = LlhPosition.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [position_valid]
    bufferOffset = _serializer.bool(obj.position_valid, buffer, bufferOffset);
    // Serialize message field [cpu_time_offset]
    bufferOffset = CpuTimeOffset.serialize(obj.cpu_time_offset, buffer, bufferOffset);
    // Serialize message field [ephemerides]
    // Serialize the length for message field [ephemerides]
    bufferOffset = _serializer.uint32(obj.ephemerides.length, buffer, bufferOffset);
    obj.ephemerides.forEach((val) => {
      bufferOffset = GpsEphemeris.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [almanac]
    // Serialize the length for message field [almanac]
    bufferOffset = _serializer.uint32(obj.almanac.length, buffer, bufferOffset);
    obj.almanac.forEach((val) => {
      bufferOffset = GpsAlmanac.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [utc_iono]
    bufferOffset = UtcIonosphere.serialize(obj.utc_iono, buffer, bufferOffset);
    // Serialize message field [utc_iono_valid]
    bufferOffset = _serializer.bool(obj.utc_iono_valid, buffer, bufferOffset);
    // Serialize message field [include_precise_time]
    bufferOffset = _serializer.bool(obj.include_precise_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GpsAssist
    let len;
    let data = new GpsAssist(null);
    // Deserialize message field [position]
    data.position = LlhPosition.deserialize(buffer, bufferOffset);
    // Deserialize message field [position_valid]
    data.position_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [cpu_time_offset]
    data.cpu_time_offset = CpuTimeOffset.deserialize(buffer, bufferOffset);
    // Deserialize message field [ephemerides]
    // Deserialize array length for message field [ephemerides]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.ephemerides = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.ephemerides[i] = GpsEphemeris.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [almanac]
    // Deserialize array length for message field [almanac]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.almanac = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.almanac[i] = GpsAlmanac.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [utc_iono]
    data.utc_iono = UtcIonosphere.deserialize(buffer, bufferOffset);
    // Deserialize message field [utc_iono_valid]
    data.utc_iono_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [include_precise_time]
    data.include_precise_time = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 92 * object.ephemerides.length;
    length += 34 * object.almanac.length;
    return length + 78;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_sensor_msgs/GpsAssist';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c2447862b19affe79c50f6956a1e26a6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new GpsAssist(null);
    if (msg.position !== undefined) {
      resolved.position = LlhPosition.Resolve(msg.position)
    }
    else {
      resolved.position = new LlhPosition()
    }

    if (msg.position_valid !== undefined) {
      resolved.position_valid = msg.position_valid;
    }
    else {
      resolved.position_valid = false
    }

    if (msg.cpu_time_offset !== undefined) {
      resolved.cpu_time_offset = CpuTimeOffset.Resolve(msg.cpu_time_offset)
    }
    else {
      resolved.cpu_time_offset = new CpuTimeOffset()
    }

    if (msg.ephemerides !== undefined) {
      resolved.ephemerides = new Array(msg.ephemerides.length);
      for (let i = 0; i < resolved.ephemerides.length; ++i) {
        resolved.ephemerides[i] = GpsEphemeris.Resolve(msg.ephemerides[i]);
      }
    }
    else {
      resolved.ephemerides = []
    }

    if (msg.almanac !== undefined) {
      resolved.almanac = new Array(msg.almanac.length);
      for (let i = 0; i < resolved.almanac.length; ++i) {
        resolved.almanac[i] = GpsAlmanac.Resolve(msg.almanac[i]);
      }
    }
    else {
      resolved.almanac = []
    }

    if (msg.utc_iono !== undefined) {
      resolved.utc_iono = UtcIonosphere.Resolve(msg.utc_iono)
    }
    else {
      resolved.utc_iono = new UtcIonosphere()
    }

    if (msg.utc_iono_valid !== undefined) {
      resolved.utc_iono_valid = msg.utc_iono_valid;
    }
    else {
      resolved.utc_iono_valid = false
    }

    if (msg.include_precise_time !== undefined) {
      resolved.include_precise_time = msg.include_precise_time;
    }
    else {
      resolved.include_precise_time = false
    }

    return resolved;
    }
};

module.exports = GpsAssist;
