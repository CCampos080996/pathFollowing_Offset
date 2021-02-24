// Auto-generated. Do not edit!

// (in-package ros_sensor_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let FrequencyType = require('./FrequencyType.js');

//-----------------------------------------------------------

class RawMeasurement {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.prn = null;
      this.pseudorange = null;
      this.pseudorange_variance = null;
      this.frequency = null;
      this.carrier_phase = null;
      this.carrier_phase_variance = null;
      this.doppler = null;
      this.doppler_variance = null;
      this.carrier_to_noise = null;
      this.loss_of_lock = null;
    }
    else {
      if (initObj.hasOwnProperty('prn')) {
        this.prn = initObj.prn
      }
      else {
        this.prn = 0;
      }
      if (initObj.hasOwnProperty('pseudorange')) {
        this.pseudorange = initObj.pseudorange
      }
      else {
        this.pseudorange = 0.0;
      }
      if (initObj.hasOwnProperty('pseudorange_variance')) {
        this.pseudorange_variance = initObj.pseudorange_variance
      }
      else {
        this.pseudorange_variance = 0.0;
      }
      if (initObj.hasOwnProperty('frequency')) {
        this.frequency = initObj.frequency
      }
      else {
        this.frequency = new FrequencyType();
      }
      if (initObj.hasOwnProperty('carrier_phase')) {
        this.carrier_phase = initObj.carrier_phase
      }
      else {
        this.carrier_phase = 0.0;
      }
      if (initObj.hasOwnProperty('carrier_phase_variance')) {
        this.carrier_phase_variance = initObj.carrier_phase_variance
      }
      else {
        this.carrier_phase_variance = 0.0;
      }
      if (initObj.hasOwnProperty('doppler')) {
        this.doppler = initObj.doppler
      }
      else {
        this.doppler = 0.0;
      }
      if (initObj.hasOwnProperty('doppler_variance')) {
        this.doppler_variance = initObj.doppler_variance
      }
      else {
        this.doppler_variance = 0.0;
      }
      if (initObj.hasOwnProperty('carrier_to_noise')) {
        this.carrier_to_noise = initObj.carrier_to_noise
      }
      else {
        this.carrier_to_noise = 0.0;
      }
      if (initObj.hasOwnProperty('loss_of_lock')) {
        this.loss_of_lock = initObj.loss_of_lock
      }
      else {
        this.loss_of_lock = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RawMeasurement
    // Serialize message field [prn]
    bufferOffset = _serializer.uint16(obj.prn, buffer, bufferOffset);
    // Serialize message field [pseudorange]
    bufferOffset = _serializer.float64(obj.pseudorange, buffer, bufferOffset);
    // Serialize message field [pseudorange_variance]
    bufferOffset = _serializer.float32(obj.pseudorange_variance, buffer, bufferOffset);
    // Serialize message field [frequency]
    bufferOffset = FrequencyType.serialize(obj.frequency, buffer, bufferOffset);
    // Serialize message field [carrier_phase]
    bufferOffset = _serializer.float64(obj.carrier_phase, buffer, bufferOffset);
    // Serialize message field [carrier_phase_variance]
    bufferOffset = _serializer.float32(obj.carrier_phase_variance, buffer, bufferOffset);
    // Serialize message field [doppler]
    bufferOffset = _serializer.float64(obj.doppler, buffer, bufferOffset);
    // Serialize message field [doppler_variance]
    bufferOffset = _serializer.float32(obj.doppler_variance, buffer, bufferOffset);
    // Serialize message field [carrier_to_noise]
    bufferOffset = _serializer.float64(obj.carrier_to_noise, buffer, bufferOffset);
    // Serialize message field [loss_of_lock]
    bufferOffset = _serializer.bool(obj.loss_of_lock, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RawMeasurement
    let len;
    let data = new RawMeasurement(null);
    // Deserialize message field [prn]
    data.prn = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [pseudorange]
    data.pseudorange = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pseudorange_variance]
    data.pseudorange_variance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [frequency]
    data.frequency = FrequencyType.deserialize(buffer, bufferOffset);
    // Deserialize message field [carrier_phase]
    data.carrier_phase = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [carrier_phase_variance]
    data.carrier_phase_variance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [doppler]
    data.doppler = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [doppler_variance]
    data.doppler_variance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [carrier_to_noise]
    data.carrier_to_noise = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [loss_of_lock]
    data.loss_of_lock = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_sensor_msgs/RawMeasurement';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'beb1d4f15a4abead550e7439d0f65ebb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ## Raw measurements for a single channel
    
    uint16        prn                     # GPS [1-32], GLONASS may be negative
    float64       pseudorange             # [m]
    float32		  pseudorange_variance	  # [m^2]
    FrequencyType frequency               # 
    float64       carrier_phase           # [m]
    float32		  carrier_phase_variance  # [m^2]
    float64       doppler                 # [Hz]
    float32       doppler_variance		  # [Hz^2]
    float64       carrier_to_noise        # [db-Hz]
    bool          loss_of_lock            # True - indicates likely loss of
                                          # carrier lock in previous interval
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
    const resolved = new RawMeasurement(null);
    if (msg.prn !== undefined) {
      resolved.prn = msg.prn;
    }
    else {
      resolved.prn = 0
    }

    if (msg.pseudorange !== undefined) {
      resolved.pseudorange = msg.pseudorange;
    }
    else {
      resolved.pseudorange = 0.0
    }

    if (msg.pseudorange_variance !== undefined) {
      resolved.pseudorange_variance = msg.pseudorange_variance;
    }
    else {
      resolved.pseudorange_variance = 0.0
    }

    if (msg.frequency !== undefined) {
      resolved.frequency = FrequencyType.Resolve(msg.frequency)
    }
    else {
      resolved.frequency = new FrequencyType()
    }

    if (msg.carrier_phase !== undefined) {
      resolved.carrier_phase = msg.carrier_phase;
    }
    else {
      resolved.carrier_phase = 0.0
    }

    if (msg.carrier_phase_variance !== undefined) {
      resolved.carrier_phase_variance = msg.carrier_phase_variance;
    }
    else {
      resolved.carrier_phase_variance = 0.0
    }

    if (msg.doppler !== undefined) {
      resolved.doppler = msg.doppler;
    }
    else {
      resolved.doppler = 0.0
    }

    if (msg.doppler_variance !== undefined) {
      resolved.doppler_variance = msg.doppler_variance;
    }
    else {
      resolved.doppler_variance = 0.0
    }

    if (msg.carrier_to_noise !== undefined) {
      resolved.carrier_to_noise = msg.carrier_to_noise;
    }
    else {
      resolved.carrier_to_noise = 0.0
    }

    if (msg.loss_of_lock !== undefined) {
      resolved.loss_of_lock = msg.loss_of_lock;
    }
    else {
      resolved.loss_of_lock = false
    }

    return resolved;
    }
};

module.exports = RawMeasurement;
