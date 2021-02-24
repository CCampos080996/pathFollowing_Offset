// Auto-generated. Do not edit!

// (in-package ros_sensor_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LlhPositionTagged = require('./LlhPositionTagged.js');
let RfRangeStamped = require('./RfRangeStamped.js');
let AssuranceLevel = require('./AssuranceLevel.js');
let PrnDifference = require('./PrnDifference.js');

//-----------------------------------------------------------

class DualNodeAssuranceData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.remoteNodeIp = null;
      this.remotePosition = null;
      this.rfRange = null;
      this.nodeRange = null;
      this.rangeCheckAssuranceLevel = null;
      this.singleDifferences = null;
      this.basePrn = null;
      this.doubleDifferences = null;
      this.diffCheckAssuranceLevel = null;
    }
    else {
      if (initObj.hasOwnProperty('remoteNodeIp')) {
        this.remoteNodeIp = initObj.remoteNodeIp
      }
      else {
        this.remoteNodeIp = '';
      }
      if (initObj.hasOwnProperty('remotePosition')) {
        this.remotePosition = initObj.remotePosition
      }
      else {
        this.remotePosition = new LlhPositionTagged();
      }
      if (initObj.hasOwnProperty('rfRange')) {
        this.rfRange = initObj.rfRange
      }
      else {
        this.rfRange = new RfRangeStamped();
      }
      if (initObj.hasOwnProperty('nodeRange')) {
        this.nodeRange = initObj.nodeRange
      }
      else {
        this.nodeRange = 0.0;
      }
      if (initObj.hasOwnProperty('rangeCheckAssuranceLevel')) {
        this.rangeCheckAssuranceLevel = initObj.rangeCheckAssuranceLevel
      }
      else {
        this.rangeCheckAssuranceLevel = new AssuranceLevel();
      }
      if (initObj.hasOwnProperty('singleDifferences')) {
        this.singleDifferences = initObj.singleDifferences
      }
      else {
        this.singleDifferences = [];
      }
      if (initObj.hasOwnProperty('basePrn')) {
        this.basePrn = initObj.basePrn
      }
      else {
        this.basePrn = 0;
      }
      if (initObj.hasOwnProperty('doubleDifferences')) {
        this.doubleDifferences = initObj.doubleDifferences
      }
      else {
        this.doubleDifferences = [];
      }
      if (initObj.hasOwnProperty('diffCheckAssuranceLevel')) {
        this.diffCheckAssuranceLevel = initObj.diffCheckAssuranceLevel
      }
      else {
        this.diffCheckAssuranceLevel = new AssuranceLevel();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DualNodeAssuranceData
    // Serialize message field [remoteNodeIp]
    bufferOffset = _serializer.string(obj.remoteNodeIp, buffer, bufferOffset);
    // Serialize message field [remotePosition]
    bufferOffset = LlhPositionTagged.serialize(obj.remotePosition, buffer, bufferOffset);
    // Serialize message field [rfRange]
    bufferOffset = RfRangeStamped.serialize(obj.rfRange, buffer, bufferOffset);
    // Serialize message field [nodeRange]
    bufferOffset = _serializer.float64(obj.nodeRange, buffer, bufferOffset);
    // Serialize message field [rangeCheckAssuranceLevel]
    bufferOffset = AssuranceLevel.serialize(obj.rangeCheckAssuranceLevel, buffer, bufferOffset);
    // Serialize message field [singleDifferences]
    // Serialize the length for message field [singleDifferences]
    bufferOffset = _serializer.uint32(obj.singleDifferences.length, buffer, bufferOffset);
    obj.singleDifferences.forEach((val) => {
      bufferOffset = PrnDifference.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [basePrn]
    bufferOffset = _serializer.uint32(obj.basePrn, buffer, bufferOffset);
    // Serialize message field [doubleDifferences]
    // Serialize the length for message field [doubleDifferences]
    bufferOffset = _serializer.uint32(obj.doubleDifferences.length, buffer, bufferOffset);
    obj.doubleDifferences.forEach((val) => {
      bufferOffset = PrnDifference.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [diffCheckAssuranceLevel]
    bufferOffset = AssuranceLevel.serialize(obj.diffCheckAssuranceLevel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DualNodeAssuranceData
    let len;
    let data = new DualNodeAssuranceData(null);
    // Deserialize message field [remoteNodeIp]
    data.remoteNodeIp = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [remotePosition]
    data.remotePosition = LlhPositionTagged.deserialize(buffer, bufferOffset);
    // Deserialize message field [rfRange]
    data.rfRange = RfRangeStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [nodeRange]
    data.nodeRange = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rangeCheckAssuranceLevel]
    data.rangeCheckAssuranceLevel = AssuranceLevel.deserialize(buffer, bufferOffset);
    // Deserialize message field [singleDifferences]
    // Deserialize array length for message field [singleDifferences]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.singleDifferences = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.singleDifferences[i] = PrnDifference.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [basePrn]
    data.basePrn = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [doubleDifferences]
    // Deserialize array length for message field [doubleDifferences]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.doubleDifferences = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.doubleDifferences[i] = PrnDifference.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [diffCheckAssuranceLevel]
    data.diffCheckAssuranceLevel = AssuranceLevel.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.remoteNodeIp.length;
    length += LlhPositionTagged.getMessageSize(object.remotePosition);
    length += RfRangeStamped.getMessageSize(object.rfRange);
    length += 12 * object.singleDifferences.length;
    length += 12 * object.doubleDifferences.length;
    return length + 26;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_sensor_msgs/DualNodeAssuranceData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ba2e6008c14c1601b60697a2dd872ffa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
      string             remoteNodeIp
      LlhPositionTagged  remotePosition
      RfRangeStamped     rfRange
      float64            nodeRange
      AssuranceLevel     rangeCheckAssuranceLevel
      PrnDifference[]    singleDifferences
      uint32             basePrn
      PrnDifference[]    doubleDifferences
      AssuranceLevel     diffCheckAssuranceLevel
    ================================================================================
    MSG: ros_sensor_msgs/LlhPositionTagged
    ## LlhPositionTagged
    
    std_msgs/Header   header
    Tags              tags
    LlhPosition       llhPosition
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
    MSG: ros_sensor_msgs/LlhPosition
    # # LlhPosition
    
    float64                  latitude   # [deg]
    float64                  longitude  # [deg]
    float64                  altitude   # [m]
    uint16                   horizontalAccuracy
    uint16                   verticalAccuracy
    ================================================================================
    MSG: ros_sensor_msgs/RfRangeStamped
    # Range to specified object
    std_msgs/Header   header
    RfRange           range
    ================================================================================
    MSG: ros_sensor_msgs/RfRange
    # Range to specified object
    float64 range
    float64 rangeRate
    float64 rangeVariance
    float64 rangeRateVariance
    uint32  timestamp
    uint32  sourceId
    uint32  destId
    uint16  rssi
    uint16  quality
    
    ================================================================================
    MSG: ros_sensor_msgs/PrnDifference
    uint32   prn
    float64  difference
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DualNodeAssuranceData(null);
    if (msg.remoteNodeIp !== undefined) {
      resolved.remoteNodeIp = msg.remoteNodeIp;
    }
    else {
      resolved.remoteNodeIp = ''
    }

    if (msg.remotePosition !== undefined) {
      resolved.remotePosition = LlhPositionTagged.Resolve(msg.remotePosition)
    }
    else {
      resolved.remotePosition = new LlhPositionTagged()
    }

    if (msg.rfRange !== undefined) {
      resolved.rfRange = RfRangeStamped.Resolve(msg.rfRange)
    }
    else {
      resolved.rfRange = new RfRangeStamped()
    }

    if (msg.nodeRange !== undefined) {
      resolved.nodeRange = msg.nodeRange;
    }
    else {
      resolved.nodeRange = 0.0
    }

    if (msg.rangeCheckAssuranceLevel !== undefined) {
      resolved.rangeCheckAssuranceLevel = AssuranceLevel.Resolve(msg.rangeCheckAssuranceLevel)
    }
    else {
      resolved.rangeCheckAssuranceLevel = new AssuranceLevel()
    }

    if (msg.singleDifferences !== undefined) {
      resolved.singleDifferences = new Array(msg.singleDifferences.length);
      for (let i = 0; i < resolved.singleDifferences.length; ++i) {
        resolved.singleDifferences[i] = PrnDifference.Resolve(msg.singleDifferences[i]);
      }
    }
    else {
      resolved.singleDifferences = []
    }

    if (msg.basePrn !== undefined) {
      resolved.basePrn = msg.basePrn;
    }
    else {
      resolved.basePrn = 0
    }

    if (msg.doubleDifferences !== undefined) {
      resolved.doubleDifferences = new Array(msg.doubleDifferences.length);
      for (let i = 0; i < resolved.doubleDifferences.length; ++i) {
        resolved.doubleDifferences[i] = PrnDifference.Resolve(msg.doubleDifferences[i]);
      }
    }
    else {
      resolved.doubleDifferences = []
    }

    if (msg.diffCheckAssuranceLevel !== undefined) {
      resolved.diffCheckAssuranceLevel = AssuranceLevel.Resolve(msg.diffCheckAssuranceLevel)
    }
    else {
      resolved.diffCheckAssuranceLevel = new AssuranceLevel()
    }

    return resolved;
    }
};

module.exports = DualNodeAssuranceData;
