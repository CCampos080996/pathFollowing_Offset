// Auto-generated. Do not edit!

// (in-package ros_sensor_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let FixStatus = require('./FixStatus.js');
let GpsTime = require('./GpsTime.js');
let LlhPosition = require('./LlhPosition.js');
let EnuVelocity = require('./EnuVelocity.js');

//-----------------------------------------------------------

class GnssFix {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.fixStatus = null;
      this.timeOfValidity = null;
      this.llhPosition = null;
      this.enuVelocity = null;
      this.positionCovariance = null;
      this.position_covariance_type = null;
    }
    else {
      if (initObj.hasOwnProperty('fixStatus')) {
        this.fixStatus = initObj.fixStatus
      }
      else {
        this.fixStatus = new FixStatus();
      }
      if (initObj.hasOwnProperty('timeOfValidity')) {
        this.timeOfValidity = initObj.timeOfValidity
      }
      else {
        this.timeOfValidity = new GpsTime();
      }
      if (initObj.hasOwnProperty('llhPosition')) {
        this.llhPosition = initObj.llhPosition
      }
      else {
        this.llhPosition = new LlhPosition();
      }
      if (initObj.hasOwnProperty('enuVelocity')) {
        this.enuVelocity = initObj.enuVelocity
      }
      else {
        this.enuVelocity = new EnuVelocity();
      }
      if (initObj.hasOwnProperty('positionCovariance')) {
        this.positionCovariance = initObj.positionCovariance
      }
      else {
        this.positionCovariance = new Array(9).fill(0);
      }
      if (initObj.hasOwnProperty('position_covariance_type')) {
        this.position_covariance_type = initObj.position_covariance_type
      }
      else {
        this.position_covariance_type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GnssFix
    // Serialize message field [fixStatus]
    bufferOffset = FixStatus.serialize(obj.fixStatus, buffer, bufferOffset);
    // Serialize message field [timeOfValidity]
    bufferOffset = GpsTime.serialize(obj.timeOfValidity, buffer, bufferOffset);
    // Serialize message field [llhPosition]
    bufferOffset = LlhPosition.serialize(obj.llhPosition, buffer, bufferOffset);
    // Serialize message field [enuVelocity]
    bufferOffset = EnuVelocity.serialize(obj.enuVelocity, buffer, bufferOffset);
    // Check that the constant length array field [positionCovariance] has the right length
    if (obj.positionCovariance.length !== 9) {
      throw new Error('Unable to serialize array field positionCovariance - length must be 9')
    }
    // Serialize message field [positionCovariance]
    bufferOffset = _arraySerializer.float64(obj.positionCovariance, buffer, bufferOffset, 9);
    // Serialize message field [position_covariance_type]
    bufferOffset = _serializer.uint8(obj.position_covariance_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GnssFix
    let len;
    let data = new GnssFix(null);
    // Deserialize message field [fixStatus]
    data.fixStatus = FixStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [timeOfValidity]
    data.timeOfValidity = GpsTime.deserialize(buffer, bufferOffset);
    // Deserialize message field [llhPosition]
    data.llhPosition = LlhPosition.deserialize(buffer, bufferOffset);
    // Deserialize message field [enuVelocity]
    data.enuVelocity = EnuVelocity.deserialize(buffer, bufferOffset);
    // Deserialize message field [positionCovariance]
    data.positionCovariance = _arrayDeserializer.float64(buffer, bufferOffset, 9)
    // Deserialize message field [position_covariance_type]
    data.position_covariance_type = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 158;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_sensor_msgs/GnssFix';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6e5620648cab804bd0f37c21067cabe9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    FixStatus                fixStatus
    GpsTime                  timeOfValidity
    LlhPosition              llhPosition
    EnuVelocity              enuVelocity          
    float64[9] 				 positionCovariance
    
    uint8 COVARIANCE_TYPE_UNKNOWN = 0
    uint8 COVARIANCE_TYPE_APPROXIMATED = 1
    uint8 COVARIANCE_TYPE_DIAGONAL_KNOWN = 2
    uint8 COVARIANCE_TYPE_KNOWN = 3
    uint8 position_covariance_type
    ================================================================================
    MSG: ros_sensor_msgs/FixStatus
    # # FixStatus
    
    FixType fix
    uint32  numSvs
    float64  ttff
    ================================================================================
    MSG: ros_sensor_msgs/FixType
    ## Fix Type
    
    uint8 FixTypeNone = 0
    uint8 FixTypeDeadReckoning = 1
    uint8 FixType2D = 2
    uint8 FixType3D = 3
    uint8 FixTypeDRand3D = 4 ## Dead reckoning and GPS fix
    uint8 FixTypeTimeOnly = 5
    uint8 FixTypeStatic = 9
    
    uint8 type
    ================================================================================
    MSG: ros_sensor_msgs/GpsTime
    ## GPS time structure
    uint32          gps_week        # Full GPS week from (0:0:00 Jan 06, 1980)
    float64         gps_seconds     # GPS seconds into week [sec]
    ================================================================================
    MSG: ros_sensor_msgs/LlhPosition
    # # LlhPosition
    
    float64                  latitude   # [deg]
    float64                  longitude  # [deg]
    float64                  altitude   # [m]
    uint16                   horizontalAccuracy
    uint16                   verticalAccuracy
    ================================================================================
    MSG: ros_sensor_msgs/EnuVelocity
    float64					 eastVelocity
    float64                  northVelocity
    float64                  upVelocity
    float32                  horizontalAccuracy
    float32                  verticalAccuracy    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GnssFix(null);
    if (msg.fixStatus !== undefined) {
      resolved.fixStatus = FixStatus.Resolve(msg.fixStatus)
    }
    else {
      resolved.fixStatus = new FixStatus()
    }

    if (msg.timeOfValidity !== undefined) {
      resolved.timeOfValidity = GpsTime.Resolve(msg.timeOfValidity)
    }
    else {
      resolved.timeOfValidity = new GpsTime()
    }

    if (msg.llhPosition !== undefined) {
      resolved.llhPosition = LlhPosition.Resolve(msg.llhPosition)
    }
    else {
      resolved.llhPosition = new LlhPosition()
    }

    if (msg.enuVelocity !== undefined) {
      resolved.enuVelocity = EnuVelocity.Resolve(msg.enuVelocity)
    }
    else {
      resolved.enuVelocity = new EnuVelocity()
    }

    if (msg.positionCovariance !== undefined) {
      resolved.positionCovariance = msg.positionCovariance;
    }
    else {
      resolved.positionCovariance = new Array(9).fill(0)
    }

    if (msg.position_covariance_type !== undefined) {
      resolved.position_covariance_type = msg.position_covariance_type;
    }
    else {
      resolved.position_covariance_type = 0
    }

    return resolved;
    }
};

// Constants for message
GnssFix.Constants = {
  COVARIANCE_TYPE_UNKNOWN: 0,
  COVARIANCE_TYPE_APPROXIMATED: 1,
  COVARIANCE_TYPE_DIAGONAL_KNOWN: 2,
  COVARIANCE_TYPE_KNOWN: 3,
}

module.exports = GnssFix;
