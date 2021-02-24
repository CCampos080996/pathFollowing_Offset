// Auto-generated. Do not edit!

// (in-package ros_sensor_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PrnDifference = require('./PrnDifference.js');
let AssuranceLevel = require('./AssuranceLevel.js');

//-----------------------------------------------------------

class SingleNodeAssuranceData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pseudoDopplerDiffs = null;
      this.pseudoDopplerDiffAssuranceLevel = null;
      this.carrierToNoiseCheckData = null;
      this.cnoCheckAssuranceLevel = null;
    }
    else {
      if (initObj.hasOwnProperty('pseudoDopplerDiffs')) {
        this.pseudoDopplerDiffs = initObj.pseudoDopplerDiffs
      }
      else {
        this.pseudoDopplerDiffs = [];
      }
      if (initObj.hasOwnProperty('pseudoDopplerDiffAssuranceLevel')) {
        this.pseudoDopplerDiffAssuranceLevel = initObj.pseudoDopplerDiffAssuranceLevel
      }
      else {
        this.pseudoDopplerDiffAssuranceLevel = new AssuranceLevel();
      }
      if (initObj.hasOwnProperty('carrierToNoiseCheckData')) {
        this.carrierToNoiseCheckData = initObj.carrierToNoiseCheckData
      }
      else {
        this.carrierToNoiseCheckData = [];
      }
      if (initObj.hasOwnProperty('cnoCheckAssuranceLevel')) {
        this.cnoCheckAssuranceLevel = initObj.cnoCheckAssuranceLevel
      }
      else {
        this.cnoCheckAssuranceLevel = new AssuranceLevel();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SingleNodeAssuranceData
    // Serialize message field [pseudoDopplerDiffs]
    // Serialize the length for message field [pseudoDopplerDiffs]
    bufferOffset = _serializer.uint32(obj.pseudoDopplerDiffs.length, buffer, bufferOffset);
    obj.pseudoDopplerDiffs.forEach((val) => {
      bufferOffset = PrnDifference.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [pseudoDopplerDiffAssuranceLevel]
    bufferOffset = AssuranceLevel.serialize(obj.pseudoDopplerDiffAssuranceLevel, buffer, bufferOffset);
    // Serialize message field [carrierToNoiseCheckData]
    // Serialize the length for message field [carrierToNoiseCheckData]
    bufferOffset = _serializer.uint32(obj.carrierToNoiseCheckData.length, buffer, bufferOffset);
    obj.carrierToNoiseCheckData.forEach((val) => {
      bufferOffset = PrnDifference.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [cnoCheckAssuranceLevel]
    bufferOffset = AssuranceLevel.serialize(obj.cnoCheckAssuranceLevel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SingleNodeAssuranceData
    let len;
    let data = new SingleNodeAssuranceData(null);
    // Deserialize message field [pseudoDopplerDiffs]
    // Deserialize array length for message field [pseudoDopplerDiffs]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pseudoDopplerDiffs = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pseudoDopplerDiffs[i] = PrnDifference.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [pseudoDopplerDiffAssuranceLevel]
    data.pseudoDopplerDiffAssuranceLevel = AssuranceLevel.deserialize(buffer, bufferOffset);
    // Deserialize message field [carrierToNoiseCheckData]
    // Deserialize array length for message field [carrierToNoiseCheckData]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.carrierToNoiseCheckData = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.carrierToNoiseCheckData[i] = PrnDifference.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [cnoCheckAssuranceLevel]
    data.cnoCheckAssuranceLevel = AssuranceLevel.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 12 * object.pseudoDopplerDiffs.length;
    length += 12 * object.carrierToNoiseCheckData.length;
    return length + 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_sensor_msgs/SingleNodeAssuranceData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4197bc43f12a41cc3da00c30445631eb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    PrnDifference[]  pseudoDopplerDiffs
    AssuranceLevel   pseudoDopplerDiffAssuranceLevel
    PrnDifference[]  carrierToNoiseCheckData
    AssuranceLevel   cnoCheckAssuranceLevel
    ================================================================================
    MSG: ros_sensor_msgs/PrnDifference
    uint32   prn
    float64  difference
    ================================================================================
    MSG: ros_sensor_msgs/AssuranceLevel
    uint8  Normal   = 0
    uint8  Unknown  = 1
    uint8  Warning  = 2
    uint8  Attack   = 3
    
    uint8 level
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SingleNodeAssuranceData(null);
    if (msg.pseudoDopplerDiffs !== undefined) {
      resolved.pseudoDopplerDiffs = new Array(msg.pseudoDopplerDiffs.length);
      for (let i = 0; i < resolved.pseudoDopplerDiffs.length; ++i) {
        resolved.pseudoDopplerDiffs[i] = PrnDifference.Resolve(msg.pseudoDopplerDiffs[i]);
      }
    }
    else {
      resolved.pseudoDopplerDiffs = []
    }

    if (msg.pseudoDopplerDiffAssuranceLevel !== undefined) {
      resolved.pseudoDopplerDiffAssuranceLevel = AssuranceLevel.Resolve(msg.pseudoDopplerDiffAssuranceLevel)
    }
    else {
      resolved.pseudoDopplerDiffAssuranceLevel = new AssuranceLevel()
    }

    if (msg.carrierToNoiseCheckData !== undefined) {
      resolved.carrierToNoiseCheckData = new Array(msg.carrierToNoiseCheckData.length);
      for (let i = 0; i < resolved.carrierToNoiseCheckData.length; ++i) {
        resolved.carrierToNoiseCheckData[i] = PrnDifference.Resolve(msg.carrierToNoiseCheckData[i]);
      }
    }
    else {
      resolved.carrierToNoiseCheckData = []
    }

    if (msg.cnoCheckAssuranceLevel !== undefined) {
      resolved.cnoCheckAssuranceLevel = AssuranceLevel.Resolve(msg.cnoCheckAssuranceLevel)
    }
    else {
      resolved.cnoCheckAssuranceLevel = new AssuranceLevel()
    }

    return resolved;
    }
};

module.exports = SingleNodeAssuranceData;
