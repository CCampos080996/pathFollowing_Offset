// Auto-generated. Do not edit!

// (in-package ros_sensor_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Tags = require('./Tags.js');
let FixType = require('./FixType.js');
let AvlSatelliteData = require('./AvlSatelliteData.js');
let NetworkTimeOffset = require('./NetworkTimeOffset.js');
let CpuTimeOffset = require('./CpuTimeOffset.js');
let AssuranceLevel = require('./AssuranceLevel.js');
let AssuranceCheckValue = require('./AssuranceCheckValue.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class NodeStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.tags = null;
      this.fix = null;
      this.numSatellitesAvailable = null;
      this.timeSinceLastFix = null;
      this.availableEphemeris = null;
      this.availableAlmanac = null;
      this.utcIonoAvailable = null;
      this.networkTimeOffset = null;
      this.computerTimeOffset = null;
      this.assurance = null;
      this.assuranceCheckVal = null;
      this.isStale = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('tags')) {
        this.tags = initObj.tags
      }
      else {
        this.tags = new Tags();
      }
      if (initObj.hasOwnProperty('fix')) {
        this.fix = initObj.fix
      }
      else {
        this.fix = new FixType();
      }
      if (initObj.hasOwnProperty('numSatellitesAvailable')) {
        this.numSatellitesAvailable = initObj.numSatellitesAvailable
      }
      else {
        this.numSatellitesAvailable = 0;
      }
      if (initObj.hasOwnProperty('timeSinceLastFix')) {
        this.timeSinceLastFix = initObj.timeSinceLastFix
      }
      else {
        this.timeSinceLastFix = 0;
      }
      if (initObj.hasOwnProperty('availableEphemeris')) {
        this.availableEphemeris = initObj.availableEphemeris
      }
      else {
        this.availableEphemeris = new AvlSatelliteData();
      }
      if (initObj.hasOwnProperty('availableAlmanac')) {
        this.availableAlmanac = initObj.availableAlmanac
      }
      else {
        this.availableAlmanac = new AvlSatelliteData();
      }
      if (initObj.hasOwnProperty('utcIonoAvailable')) {
        this.utcIonoAvailable = initObj.utcIonoAvailable
      }
      else {
        this.utcIonoAvailable = false;
      }
      if (initObj.hasOwnProperty('networkTimeOffset')) {
        this.networkTimeOffset = initObj.networkTimeOffset
      }
      else {
        this.networkTimeOffset = new NetworkTimeOffset();
      }
      if (initObj.hasOwnProperty('computerTimeOffset')) {
        this.computerTimeOffset = initObj.computerTimeOffset
      }
      else {
        this.computerTimeOffset = new CpuTimeOffset();
      }
      if (initObj.hasOwnProperty('assurance')) {
        this.assurance = initObj.assurance
      }
      else {
        this.assurance = new AssuranceLevel();
      }
      if (initObj.hasOwnProperty('assuranceCheckVal')) {
        this.assuranceCheckVal = initObj.assuranceCheckVal
      }
      else {
        this.assuranceCheckVal = [];
      }
      if (initObj.hasOwnProperty('isStale')) {
        this.isStale = initObj.isStale
      }
      else {
        this.isStale = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NodeStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [tags]
    bufferOffset = Tags.serialize(obj.tags, buffer, bufferOffset);
    // Serialize message field [fix]
    bufferOffset = FixType.serialize(obj.fix, buffer, bufferOffset);
    // Serialize message field [numSatellitesAvailable]
    bufferOffset = _serializer.uint8(obj.numSatellitesAvailable, buffer, bufferOffset);
    // Serialize message field [timeSinceLastFix]
    bufferOffset = _serializer.uint16(obj.timeSinceLastFix, buffer, bufferOffset);
    // Serialize message field [availableEphemeris]
    bufferOffset = AvlSatelliteData.serialize(obj.availableEphemeris, buffer, bufferOffset);
    // Serialize message field [availableAlmanac]
    bufferOffset = AvlSatelliteData.serialize(obj.availableAlmanac, buffer, bufferOffset);
    // Serialize message field [utcIonoAvailable]
    bufferOffset = _serializer.bool(obj.utcIonoAvailable, buffer, bufferOffset);
    // Serialize message field [networkTimeOffset]
    bufferOffset = NetworkTimeOffset.serialize(obj.networkTimeOffset, buffer, bufferOffset);
    // Serialize message field [computerTimeOffset]
    bufferOffset = CpuTimeOffset.serialize(obj.computerTimeOffset, buffer, bufferOffset);
    // Serialize message field [assurance]
    bufferOffset = AssuranceLevel.serialize(obj.assurance, buffer, bufferOffset);
    // Serialize message field [assuranceCheckVal]
    // Serialize the length for message field [assuranceCheckVal]
    bufferOffset = _serializer.uint32(obj.assuranceCheckVal.length, buffer, bufferOffset);
    obj.assuranceCheckVal.forEach((val) => {
      bufferOffset = AssuranceCheckValue.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [isStale]
    bufferOffset = _serializer.bool(obj.isStale, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NodeStatus
    let len;
    let data = new NodeStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [tags]
    data.tags = Tags.deserialize(buffer, bufferOffset);
    // Deserialize message field [fix]
    data.fix = FixType.deserialize(buffer, bufferOffset);
    // Deserialize message field [numSatellitesAvailable]
    data.numSatellitesAvailable = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [timeSinceLastFix]
    data.timeSinceLastFix = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [availableEphemeris]
    data.availableEphemeris = AvlSatelliteData.deserialize(buffer, bufferOffset);
    // Deserialize message field [availableAlmanac]
    data.availableAlmanac = AvlSatelliteData.deserialize(buffer, bufferOffset);
    // Deserialize message field [utcIonoAvailable]
    data.utcIonoAvailable = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [networkTimeOffset]
    data.networkTimeOffset = NetworkTimeOffset.deserialize(buffer, bufferOffset);
    // Deserialize message field [computerTimeOffset]
    data.computerTimeOffset = CpuTimeOffset.deserialize(buffer, bufferOffset);
    // Deserialize message field [assurance]
    data.assurance = AssuranceLevel.deserialize(buffer, bufferOffset);
    // Deserialize message field [assuranceCheckVal]
    // Deserialize array length for message field [assuranceCheckVal]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.assuranceCheckVal = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.assuranceCheckVal[i] = AssuranceCheckValue.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [isStale]
    data.isStale = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += Tags.getMessageSize(object.tags);
    length += 8 * object.assuranceCheckVal.length;
    return length + 93;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_sensor_msgs/NodeStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '278b370fcaf1e9224bd8b33acea7e9ca';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header       header
    Tags                  tags
    FixType               fix
    uint8                 numSatellitesAvailable
    uint16                timeSinceLastFix     # in seconds [s]
    AvlSatelliteData      availableEphemeris   # bit field
    AvlSatelliteData      availableAlmanac     # bit field
    bool                  utcIonoAvailable
    NetworkTimeOffset     networkTimeOffset
    CpuTimeOffset         computerTimeOffset
    AssuranceLevel        assurance
    AssuranceCheckValue[] assuranceCheckVal
    bool                  isStale
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: ros_sensor_msgs/Tags
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
    MSG: ros_sensor_msgs/AvlSatelliteData
    uint32    fromReceiver
    uint32    fromNetwork
    uint32    fromRinex
    uint32    fromUnknown
    ================================================================================
    MSG: ros_sensor_msgs/NetworkTimeOffset
      GpsTime timeOfValidity
      bool    dataValid
      int32   networkDifferenceCounts
      int32   networkDriftCounts
      int32   oscillatorFreqEst
      int32   networkDifferenceCmdCounts
      int32   networkDriftCmdCounts
      uint32  networkPpsCount
      uint32  gpsPpsCount
    ================================================================================
    MSG: ros_sensor_msgs/CpuTimeOffset
    bool    valid
    float64 secondsOffset
    ================================================================================
    MSG: ros_sensor_msgs/AssuranceCheckValue
    ## An assurance check value for a given prn
    
    uint32    prn
    uint32    checkVal
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NodeStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.tags !== undefined) {
      resolved.tags = Tags.Resolve(msg.tags)
    }
    else {
      resolved.tags = new Tags()
    }

    if (msg.fix !== undefined) {
      resolved.fix = FixType.Resolve(msg.fix)
    }
    else {
      resolved.fix = new FixType()
    }

    if (msg.numSatellitesAvailable !== undefined) {
      resolved.numSatellitesAvailable = msg.numSatellitesAvailable;
    }
    else {
      resolved.numSatellitesAvailable = 0
    }

    if (msg.timeSinceLastFix !== undefined) {
      resolved.timeSinceLastFix = msg.timeSinceLastFix;
    }
    else {
      resolved.timeSinceLastFix = 0
    }

    if (msg.availableEphemeris !== undefined) {
      resolved.availableEphemeris = AvlSatelliteData.Resolve(msg.availableEphemeris)
    }
    else {
      resolved.availableEphemeris = new AvlSatelliteData()
    }

    if (msg.availableAlmanac !== undefined) {
      resolved.availableAlmanac = AvlSatelliteData.Resolve(msg.availableAlmanac)
    }
    else {
      resolved.availableAlmanac = new AvlSatelliteData()
    }

    if (msg.utcIonoAvailable !== undefined) {
      resolved.utcIonoAvailable = msg.utcIonoAvailable;
    }
    else {
      resolved.utcIonoAvailable = false
    }

    if (msg.networkTimeOffset !== undefined) {
      resolved.networkTimeOffset = NetworkTimeOffset.Resolve(msg.networkTimeOffset)
    }
    else {
      resolved.networkTimeOffset = new NetworkTimeOffset()
    }

    if (msg.computerTimeOffset !== undefined) {
      resolved.computerTimeOffset = CpuTimeOffset.Resolve(msg.computerTimeOffset)
    }
    else {
      resolved.computerTimeOffset = new CpuTimeOffset()
    }

    if (msg.assurance !== undefined) {
      resolved.assurance = AssuranceLevel.Resolve(msg.assurance)
    }
    else {
      resolved.assurance = new AssuranceLevel()
    }

    if (msg.assuranceCheckVal !== undefined) {
      resolved.assuranceCheckVal = new Array(msg.assuranceCheckVal.length);
      for (let i = 0; i < resolved.assuranceCheckVal.length; ++i) {
        resolved.assuranceCheckVal[i] = AssuranceCheckValue.Resolve(msg.assuranceCheckVal[i]);
      }
    }
    else {
      resolved.assuranceCheckVal = []
    }

    if (msg.isStale !== undefined) {
      resolved.isStale = msg.isStale;
    }
    else {
      resolved.isStale = false
    }

    return resolved;
    }
};

module.exports = NodeStatus;
