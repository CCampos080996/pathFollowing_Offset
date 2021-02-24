// Auto-generated. Do not edit!

// (in-package ros_sensor_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TrackingStatus = require('./TrackingStatus.js');
let CodeType = require('./CodeType.js');
let FrequencyType = require('./FrequencyType.js');

//-----------------------------------------------------------

class ChannelStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.prn = null;
      this.receiverChannel = null;
      this.carrierToNoise = null;
      this.azimuth = null;
      this.elevation = null;
      this.tracking = null;
      this.code = null;
      this.frequency = null;
      this.usedInSolution = null;
    }
    else {
      if (initObj.hasOwnProperty('prn')) {
        this.prn = initObj.prn
      }
      else {
        this.prn = 0;
      }
      if (initObj.hasOwnProperty('receiverChannel')) {
        this.receiverChannel = initObj.receiverChannel
      }
      else {
        this.receiverChannel = 0;
      }
      if (initObj.hasOwnProperty('carrierToNoise')) {
        this.carrierToNoise = initObj.carrierToNoise
      }
      else {
        this.carrierToNoise = 0;
      }
      if (initObj.hasOwnProperty('azimuth')) {
        this.azimuth = initObj.azimuth
      }
      else {
        this.azimuth = 0.0;
      }
      if (initObj.hasOwnProperty('elevation')) {
        this.elevation = initObj.elevation
      }
      else {
        this.elevation = 0.0;
      }
      if (initObj.hasOwnProperty('tracking')) {
        this.tracking = initObj.tracking
      }
      else {
        this.tracking = new TrackingStatus();
      }
      if (initObj.hasOwnProperty('code')) {
        this.code = initObj.code
      }
      else {
        this.code = new CodeType();
      }
      if (initObj.hasOwnProperty('frequency')) {
        this.frequency = initObj.frequency
      }
      else {
        this.frequency = new FrequencyType();
      }
      if (initObj.hasOwnProperty('usedInSolution')) {
        this.usedInSolution = initObj.usedInSolution
      }
      else {
        this.usedInSolution = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ChannelStatus
    // Serialize message field [prn]
    bufferOffset = _serializer.uint32(obj.prn, buffer, bufferOffset);
    // Serialize message field [receiverChannel]
    bufferOffset = _serializer.uint32(obj.receiverChannel, buffer, bufferOffset);
    // Serialize message field [carrierToNoise]
    bufferOffset = _serializer.uint32(obj.carrierToNoise, buffer, bufferOffset);
    // Serialize message field [azimuth]
    bufferOffset = _serializer.float32(obj.azimuth, buffer, bufferOffset);
    // Serialize message field [elevation]
    bufferOffset = _serializer.float32(obj.elevation, buffer, bufferOffset);
    // Serialize message field [tracking]
    bufferOffset = TrackingStatus.serialize(obj.tracking, buffer, bufferOffset);
    // Serialize message field [code]
    bufferOffset = CodeType.serialize(obj.code, buffer, bufferOffset);
    // Serialize message field [frequency]
    bufferOffset = FrequencyType.serialize(obj.frequency, buffer, bufferOffset);
    // Serialize message field [usedInSolution]
    bufferOffset = _serializer.bool(obj.usedInSolution, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChannelStatus
    let len;
    let data = new ChannelStatus(null);
    // Deserialize message field [prn]
    data.prn = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [receiverChannel]
    data.receiverChannel = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [carrierToNoise]
    data.carrierToNoise = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [azimuth]
    data.azimuth = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [elevation]
    data.elevation = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [tracking]
    data.tracking = TrackingStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [code]
    data.code = CodeType.deserialize(buffer, bufferOffset);
    // Deserialize message field [frequency]
    data.frequency = FrequencyType.deserialize(buffer, bufferOffset);
    // Deserialize message field [usedInSolution]
    data.usedInSolution = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_sensor_msgs/ChannelStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '10bf0cee067be1677c1f456497b33d3b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ###Channel Status
    
    uint32         prn
    uint32         receiverChannel
    uint32         carrierToNoise   # db-Hz
    float32        azimuth
    float32        elevation
    TrackingStatus tracking
    CodeType       code
    FrequencyType  frequency
    bool           usedInSolution
    ================================================================================
    MSG: ros_sensor_msgs/TrackingStatus
    ## Tracking Status
    
    uint8 Idle                        = 0
    uint8 SearchingCa                 = 1
    uint8 SearchingPy                 = 2
    uint8 CodeLock                    = 3
    uint8 CarrierLock                 = 4
    uint8 CarrierTrackDataCollect     = 5
    uint8 SequentialResynchronization = 6
    uint8 Reacquisition               = 7
    uint8 Unusable                    = 8
    
    uint8 status
    ================================================================================
    MSG: ros_sensor_msgs/CodeType
    ## Code Type
    
    uint8 CodeTypeUnknown         = 0
    uint8 CodeTypeGpsCa           = 1
    uint8 CodeTypeGpsP            = 2
    uint8 CodeTypeGpsPCodeless    = 3
    uint8 CodeTypeGpsY            = 4
    uint8 CodeTypeGpsC            = 5
    uint8 CodeTypeGpsCCodeless    = 6
    uint8 CodeTypeGpsM            = 8
    uint8 CodeTypeGpsMPrime       = 9
    
    uint8 CodeTypeGlonass  = 16
    uint8 CodeTypeGalileo  = 32
    
    uint8 type
    ================================================================================
    MSG: ros_sensor_msgs/FrequencyType
    ## Frequency Type
    
    uint8 FrequencyTypeUnknown      = 0
    uint8 FrequencyTypeL1           = 1
    uint8 FrequencyTypeL2           = 2
    uint8 FrequencyTypeL5           = 3
    uint8 FrequencyTypeGalileoE1    = 4
    uint8 FrequencyTypeGalileoE5    = 5
    uint8 FrequencyTypeGalileoE6    = 6
    uint8 FrequencyTypeGalileoC     = 7
    uint8 FrequencyTypeGlonassL1F   = 8
    uint8 FrequencyTypeGlonassL2F   = 9
    uint8 FrequencyTypeGlonassL1C   = 10
    uint8 FrequencyTypeGlonassL2C   = 11
    uint8 FrequencyTypeGlonassL3C   = 12
    
    uint8 type
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ChannelStatus(null);
    if (msg.prn !== undefined) {
      resolved.prn = msg.prn;
    }
    else {
      resolved.prn = 0
    }

    if (msg.receiverChannel !== undefined) {
      resolved.receiverChannel = msg.receiverChannel;
    }
    else {
      resolved.receiverChannel = 0
    }

    if (msg.carrierToNoise !== undefined) {
      resolved.carrierToNoise = msg.carrierToNoise;
    }
    else {
      resolved.carrierToNoise = 0
    }

    if (msg.azimuth !== undefined) {
      resolved.azimuth = msg.azimuth;
    }
    else {
      resolved.azimuth = 0.0
    }

    if (msg.elevation !== undefined) {
      resolved.elevation = msg.elevation;
    }
    else {
      resolved.elevation = 0.0
    }

    if (msg.tracking !== undefined) {
      resolved.tracking = TrackingStatus.Resolve(msg.tracking)
    }
    else {
      resolved.tracking = new TrackingStatus()
    }

    if (msg.code !== undefined) {
      resolved.code = CodeType.Resolve(msg.code)
    }
    else {
      resolved.code = new CodeType()
    }

    if (msg.frequency !== undefined) {
      resolved.frequency = FrequencyType.Resolve(msg.frequency)
    }
    else {
      resolved.frequency = new FrequencyType()
    }

    if (msg.usedInSolution !== undefined) {
      resolved.usedInSolution = msg.usedInSolution;
    }
    else {
      resolved.usedInSolution = false
    }

    return resolved;
    }
};

module.exports = ChannelStatus;
