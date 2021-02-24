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

class TrackingStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrackingStatus
    // Serialize message field [status]
    bufferOffset = _serializer.uint8(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrackingStatus
    let len;
    let data = new TrackingStatus(null);
    // Deserialize message field [status]
    data.status = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_sensor_msgs/TrackingStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '00731b51e23572a6e93281f0290e66e1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrackingStatus(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    return resolved;
    }
};

// Constants for message
TrackingStatus.Constants = {
  IDLE: 0,
  SEARCHINGCA: 1,
  SEARCHINGPY: 2,
  CODELOCK: 3,
  CARRIERLOCK: 4,
  CARRIERTRACKDATACOLLECT: 5,
  SEQUENTIALRESYNCHRONIZATION: 6,
  REACQUISITION: 7,
  UNUSABLE: 8,
}

module.exports = TrackingStatus;
