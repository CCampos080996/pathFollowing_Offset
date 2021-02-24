// Auto-generated. Do not edit!

// (in-package ros_sensor_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let GpsTime = require('./GpsTime.js');
let SensorType = require('./SensorType.js');
let ReceiverType = require('./ReceiverType.js');
let KeyStatus = require('./KeyStatus.js');
let SourceType = require('./SourceType.js');
let AssuranceLevel = require('./AssuranceLevel.js');

//-----------------------------------------------------------

class Tags {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.gpsTime = null;
      this.sensor = null;
      this.receiver = null;
      this.key = null;
      this.sensorName = null;
      this.source = null;
      this.dataValid = null;
      this.assuranceLevel = null;
    }
    else {
      if (initObj.hasOwnProperty('gpsTime')) {
        this.gpsTime = initObj.gpsTime
      }
      else {
        this.gpsTime = new GpsTime();
      }
      if (initObj.hasOwnProperty('sensor')) {
        this.sensor = initObj.sensor
      }
      else {
        this.sensor = new SensorType();
      }
      if (initObj.hasOwnProperty('receiver')) {
        this.receiver = initObj.receiver
      }
      else {
        this.receiver = new ReceiverType();
      }
      if (initObj.hasOwnProperty('key')) {
        this.key = initObj.key
      }
      else {
        this.key = new KeyStatus();
      }
      if (initObj.hasOwnProperty('sensorName')) {
        this.sensorName = initObj.sensorName
      }
      else {
        this.sensorName = '';
      }
      if (initObj.hasOwnProperty('source')) {
        this.source = initObj.source
      }
      else {
        this.source = new SourceType();
      }
      if (initObj.hasOwnProperty('dataValid')) {
        this.dataValid = initObj.dataValid
      }
      else {
        this.dataValid = false;
      }
      if (initObj.hasOwnProperty('assuranceLevel')) {
        this.assuranceLevel = initObj.assuranceLevel
      }
      else {
        this.assuranceLevel = new AssuranceLevel();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Tags
    // Serialize message field [gpsTime]
    bufferOffset = GpsTime.serialize(obj.gpsTime, buffer, bufferOffset);
    // Serialize message field [sensor]
    bufferOffset = SensorType.serialize(obj.sensor, buffer, bufferOffset);
    // Serialize message field [receiver]
    bufferOffset = ReceiverType.serialize(obj.receiver, buffer, bufferOffset);
    // Serialize message field [key]
    bufferOffset = KeyStatus.serialize(obj.key, buffer, bufferOffset);
    // Serialize message field [sensorName]
    bufferOffset = _serializer.string(obj.sensorName, buffer, bufferOffset);
    // Serialize message field [source]
    bufferOffset = SourceType.serialize(obj.source, buffer, bufferOffset);
    // Serialize message field [dataValid]
    bufferOffset = _serializer.bool(obj.dataValid, buffer, bufferOffset);
    // Serialize message field [assuranceLevel]
    bufferOffset = AssuranceLevel.serialize(obj.assuranceLevel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Tags
    let len;
    let data = new Tags(null);
    // Deserialize message field [gpsTime]
    data.gpsTime = GpsTime.deserialize(buffer, bufferOffset);
    // Deserialize message field [sensor]
    data.sensor = SensorType.deserialize(buffer, bufferOffset);
    // Deserialize message field [receiver]
    data.receiver = ReceiverType.deserialize(buffer, bufferOffset);
    // Deserialize message field [key]
    data.key = KeyStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [sensorName]
    data.sensorName = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [source]
    data.source = SourceType.deserialize(buffer, bufferOffset);
    // Deserialize message field [dataValid]
    data.dataValid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [assuranceLevel]
    data.assuranceLevel = AssuranceLevel.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.sensorName.length;
    return length + 22;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_sensor_msgs/Tags';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2af7cb470f851fdf59b411eaf3a14b0c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ## Header structure for user defined data messages
    
    GpsTime        gpsTime
    SensorType     sensor
    ReceiverType   receiver   # String to specify GNSS receiver type
    KeyStatus      key
    string         sensorName
    SourceType     source
    bool           dataValid
    AssuranceLevel assuranceLevel
    ================================================================================
    MSG: ros_sensor_msgs/GpsTime
    ## GPS time structure
    uint32          gps_week        # Full GPS week from (0:0:00 Jan 06, 1980)
    float64         gps_seconds     # GPS seconds into week [sec]
    ================================================================================
    MSG: ros_sensor_msgs/SensorType
    ## Sensor Type
    
    uint8 SensorTypeUnknown = 0
    uint8 SensorTypeGps     = 1
    uint8 SensorTypeGlonass = 2
    uint8 SensorTypeGalileo = 4
    uint8 SensorTypeImu     = 8
    uint8 SensorRfRange     = 16
    uint8 SensorTypeVision  = 32
    
    uint8 type
    ================================================================================
    MSG: ros_sensor_msgs/ReceiverType
    uint8 RECEIVER_TYPE_UBLOX = 0
    uint8 RECEIVER_TYPE_NOVATEL = 1
    uint8 RECEIVER_TYPE_DAGR = 2
    uint8 RECEIVER_TYPE_MICROGRAM = 3
    uint8 RECEIVER_TYPE_TRUTRAK = 4
    uint8 RECEIVER_TYPE_GSSIP = 5
    uint8 RECEIVER_TYPE_OTHER = 14
    uint8 RECEIVER_TYPE_UNKNOWN = 15
    uint8 type
    ================================================================================
    MSG: ros_sensor_msgs/KeyStatus
    ## KeyStatus
    
    uint8 UnauthorizedNotKeyed = 0
    uint8 AuthorizedNotKeyed   = 1
    uint8 Keyed                = 2
    
    uint8 status
    ================================================================================
    MSG: ros_sensor_msgs/SourceType
    ## Source of data
    
    uint8 SourceTypeUnknown  = 0
    uint8 SourceTypeReceiver = 1
    uint8 SourceTypeNetwork  = 2
    uint8 SourceTypeRinex    = 3
    uint8 SourceTypeAny      = 99
    
    uint8 type
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
    const resolved = new Tags(null);
    if (msg.gpsTime !== undefined) {
      resolved.gpsTime = GpsTime.Resolve(msg.gpsTime)
    }
    else {
      resolved.gpsTime = new GpsTime()
    }

    if (msg.sensor !== undefined) {
      resolved.sensor = SensorType.Resolve(msg.sensor)
    }
    else {
      resolved.sensor = new SensorType()
    }

    if (msg.receiver !== undefined) {
      resolved.receiver = ReceiverType.Resolve(msg.receiver)
    }
    else {
      resolved.receiver = new ReceiverType()
    }

    if (msg.key !== undefined) {
      resolved.key = KeyStatus.Resolve(msg.key)
    }
    else {
      resolved.key = new KeyStatus()
    }

    if (msg.sensorName !== undefined) {
      resolved.sensorName = msg.sensorName;
    }
    else {
      resolved.sensorName = ''
    }

    if (msg.source !== undefined) {
      resolved.source = SourceType.Resolve(msg.source)
    }
    else {
      resolved.source = new SourceType()
    }

    if (msg.dataValid !== undefined) {
      resolved.dataValid = msg.dataValid;
    }
    else {
      resolved.dataValid = false
    }

    if (msg.assuranceLevel !== undefined) {
      resolved.assuranceLevel = AssuranceLevel.Resolve(msg.assuranceLevel)
    }
    else {
      resolved.assuranceLevel = new AssuranceLevel()
    }

    return resolved;
    }
};

module.exports = Tags;
