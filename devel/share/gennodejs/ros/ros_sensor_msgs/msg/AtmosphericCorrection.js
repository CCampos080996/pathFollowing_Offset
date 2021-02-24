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

class AtmosphericCorrection {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.prn = null;
      this.ionosphereCorrectionL1 = null;
      this.ionosphereCorrectionL2 = null;
      this.troposphereCorrection = null;
    }
    else {
      if (initObj.hasOwnProperty('prn')) {
        this.prn = initObj.prn
      }
      else {
        this.prn = 0;
      }
      if (initObj.hasOwnProperty('ionosphereCorrectionL1')) {
        this.ionosphereCorrectionL1 = initObj.ionosphereCorrectionL1
      }
      else {
        this.ionosphereCorrectionL1 = 0.0;
      }
      if (initObj.hasOwnProperty('ionosphereCorrectionL2')) {
        this.ionosphereCorrectionL2 = initObj.ionosphereCorrectionL2
      }
      else {
        this.ionosphereCorrectionL2 = 0.0;
      }
      if (initObj.hasOwnProperty('troposphereCorrection')) {
        this.troposphereCorrection = initObj.troposphereCorrection
      }
      else {
        this.troposphereCorrection = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AtmosphericCorrection
    // Serialize message field [prn]
    bufferOffset = _serializer.uint16(obj.prn, buffer, bufferOffset);
    // Serialize message field [ionosphereCorrectionL1]
    bufferOffset = _serializer.float64(obj.ionosphereCorrectionL1, buffer, bufferOffset);
    // Serialize message field [ionosphereCorrectionL2]
    bufferOffset = _serializer.float64(obj.ionosphereCorrectionL2, buffer, bufferOffset);
    // Serialize message field [troposphereCorrection]
    bufferOffset = _serializer.float64(obj.troposphereCorrection, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AtmosphericCorrection
    let len;
    let data = new AtmosphericCorrection(null);
    // Deserialize message field [prn]
    data.prn = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [ionosphereCorrectionL1]
    data.ionosphereCorrectionL1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ionosphereCorrectionL2]
    data.ionosphereCorrectionL2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [troposphereCorrection]
    data.troposphereCorrection = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 26;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_sensor_msgs/AtmosphericCorrection';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '92e3c73c19da61c0e7d80415c20426e9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ## The GPS atmospheric correction 
    
    uint16  prn                    # GPS [1-32], GLONASS may be negative
    float64 ionosphereCorrectionL1 # Pseudorange ionosphere correction (carrier correction has opposite sign) [m]
    float64 ionosphereCorrectionL2 # Pseudorange ionosphere correction (carrier correction has opposite sign) [m]
    float64 troposphereCorrection  # Troposphere correction [m]
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AtmosphericCorrection(null);
    if (msg.prn !== undefined) {
      resolved.prn = msg.prn;
    }
    else {
      resolved.prn = 0
    }

    if (msg.ionosphereCorrectionL1 !== undefined) {
      resolved.ionosphereCorrectionL1 = msg.ionosphereCorrectionL1;
    }
    else {
      resolved.ionosphereCorrectionL1 = 0.0
    }

    if (msg.ionosphereCorrectionL2 !== undefined) {
      resolved.ionosphereCorrectionL2 = msg.ionosphereCorrectionL2;
    }
    else {
      resolved.ionosphereCorrectionL2 = 0.0
    }

    if (msg.troposphereCorrection !== undefined) {
      resolved.troposphereCorrection = msg.troposphereCorrection;
    }
    else {
      resolved.troposphereCorrection = 0.0
    }

    return resolved;
    }
};

module.exports = AtmosphericCorrection;
