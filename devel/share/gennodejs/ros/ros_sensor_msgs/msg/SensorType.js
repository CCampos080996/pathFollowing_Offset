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

class SensorType {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SensorType
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SensorType
    let len;
    let data = new SensorType(null);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_sensor_msgs/SensorType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3fe390b5ba2bf66b459cdc2b21df74dd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ## Sensor Type
    
    uint8 SensorTypeUnknown = 0
    uint8 SensorTypeGps     = 1
    uint8 SensorTypeGlonass = 2
    uint8 SensorTypeGalileo = 4
    uint8 SensorTypeImu     = 8
    uint8 SensorRfRange     = 16
    uint8 SensorTypeVision  = 32
    
    uint8 type
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SensorType(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    return resolved;
    }
};

// Constants for message
SensorType.Constants = {
  SENSORTYPEUNKNOWN: 0,
  SENSORTYPEGPS: 1,
  SENSORTYPEGLONASS: 2,
  SENSORTYPEGALILEO: 4,
  SENSORTYPEIMU: 8,
  SENSORRFRANGE: 16,
  SENSORTYPEVISION: 32,
}

module.exports = SensorType;
