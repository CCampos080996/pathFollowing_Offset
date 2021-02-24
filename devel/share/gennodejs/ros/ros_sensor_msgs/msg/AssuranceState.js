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
let DualNodeAssuranceData = require('./DualNodeAssuranceData.js');
let SingleNodeAssuranceData = require('./SingleNodeAssuranceData.js');
let AssuranceCheckValue = require('./AssuranceCheckValue.js');
let AssuranceLevel = require('./AssuranceLevel.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class AssuranceState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.localPosition = null;
      this.dualNodeData = null;
      this.singleNodeData = null;
      this.prnAssuranceValues = null;
      this.assuranceLevel = null;
      this.filteredLevel = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('localPosition')) {
        this.localPosition = initObj.localPosition
      }
      else {
        this.localPosition = new LlhPositionTagged();
      }
      if (initObj.hasOwnProperty('dualNodeData')) {
        this.dualNodeData = initObj.dualNodeData
      }
      else {
        this.dualNodeData = [];
      }
      if (initObj.hasOwnProperty('singleNodeData')) {
        this.singleNodeData = initObj.singleNodeData
      }
      else {
        this.singleNodeData = new SingleNodeAssuranceData();
      }
      if (initObj.hasOwnProperty('prnAssuranceValues')) {
        this.prnAssuranceValues = initObj.prnAssuranceValues
      }
      else {
        this.prnAssuranceValues = [];
      }
      if (initObj.hasOwnProperty('assuranceLevel')) {
        this.assuranceLevel = initObj.assuranceLevel
      }
      else {
        this.assuranceLevel = new AssuranceLevel();
      }
      if (initObj.hasOwnProperty('filteredLevel')) {
        this.filteredLevel = initObj.filteredLevel
      }
      else {
        this.filteredLevel = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AssuranceState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [localPosition]
    bufferOffset = LlhPositionTagged.serialize(obj.localPosition, buffer, bufferOffset);
    // Serialize message field [dualNodeData]
    // Serialize the length for message field [dualNodeData]
    bufferOffset = _serializer.uint32(obj.dualNodeData.length, buffer, bufferOffset);
    obj.dualNodeData.forEach((val) => {
      bufferOffset = DualNodeAssuranceData.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [singleNodeData]
    bufferOffset = SingleNodeAssuranceData.serialize(obj.singleNodeData, buffer, bufferOffset);
    // Serialize message field [prnAssuranceValues]
    // Serialize the length for message field [prnAssuranceValues]
    bufferOffset = _serializer.uint32(obj.prnAssuranceValues.length, buffer, bufferOffset);
    obj.prnAssuranceValues.forEach((val) => {
      bufferOffset = AssuranceCheckValue.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [assuranceLevel]
    bufferOffset = AssuranceLevel.serialize(obj.assuranceLevel, buffer, bufferOffset);
    // Serialize message field [filteredLevel]
    bufferOffset = _serializer.float64(obj.filteredLevel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AssuranceState
    let len;
    let data = new AssuranceState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [localPosition]
    data.localPosition = LlhPositionTagged.deserialize(buffer, bufferOffset);
    // Deserialize message field [dualNodeData]
    // Deserialize array length for message field [dualNodeData]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.dualNodeData = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.dualNodeData[i] = DualNodeAssuranceData.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [singleNodeData]
    data.singleNodeData = SingleNodeAssuranceData.deserialize(buffer, bufferOffset);
    // Deserialize message field [prnAssuranceValues]
    // Deserialize array length for message field [prnAssuranceValues]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.prnAssuranceValues = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.prnAssuranceValues[i] = AssuranceCheckValue.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [assuranceLevel]
    data.assuranceLevel = AssuranceLevel.deserialize(buffer, bufferOffset);
    // Deserialize message field [filteredLevel]
    data.filteredLevel = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += LlhPositionTagged.getMessageSize(object.localPosition);
    object.dualNodeData.forEach((val) => {
      length += DualNodeAssuranceData.getMessageSize(val);
    });
    length += SingleNodeAssuranceData.getMessageSize(object.singleNodeData);
    length += 8 * object.prnAssuranceValues.length;
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_sensor_msgs/AssuranceState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1b5a45d7bfb7095220320d230d9c3c4a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
      std_msgs/Header            header
      LlhPositionTagged          localPosition
      DualNodeAssuranceData[]    dualNodeData
      SingleNodeAssuranceData    singleNodeData
      AssuranceCheckValue[]      prnAssuranceValues
      AssuranceLevel             assuranceLevel
      float64                    filteredLevel
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
    MSG: ros_sensor_msgs/LlhPositionTagged
    ## LlhPositionTagged
    
    std_msgs/Header   header
    Tags              tags
    LlhPosition       llhPosition
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
    MSG: ros_sensor_msgs/DualNodeAssuranceData
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
    ================================================================================
    MSG: ros_sensor_msgs/SingleNodeAssuranceData
    PrnDifference[]  pseudoDopplerDiffs
    AssuranceLevel   pseudoDopplerDiffAssuranceLevel
    PrnDifference[]  carrierToNoiseCheckData
    AssuranceLevel   cnoCheckAssuranceLevel
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
    const resolved = new AssuranceState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.localPosition !== undefined) {
      resolved.localPosition = LlhPositionTagged.Resolve(msg.localPosition)
    }
    else {
      resolved.localPosition = new LlhPositionTagged()
    }

    if (msg.dualNodeData !== undefined) {
      resolved.dualNodeData = new Array(msg.dualNodeData.length);
      for (let i = 0; i < resolved.dualNodeData.length; ++i) {
        resolved.dualNodeData[i] = DualNodeAssuranceData.Resolve(msg.dualNodeData[i]);
      }
    }
    else {
      resolved.dualNodeData = []
    }

    if (msg.singleNodeData !== undefined) {
      resolved.singleNodeData = SingleNodeAssuranceData.Resolve(msg.singleNodeData)
    }
    else {
      resolved.singleNodeData = new SingleNodeAssuranceData()
    }

    if (msg.prnAssuranceValues !== undefined) {
      resolved.prnAssuranceValues = new Array(msg.prnAssuranceValues.length);
      for (let i = 0; i < resolved.prnAssuranceValues.length; ++i) {
        resolved.prnAssuranceValues[i] = AssuranceCheckValue.Resolve(msg.prnAssuranceValues[i]);
      }
    }
    else {
      resolved.prnAssuranceValues = []
    }

    if (msg.assuranceLevel !== undefined) {
      resolved.assuranceLevel = AssuranceLevel.Resolve(msg.assuranceLevel)
    }
    else {
      resolved.assuranceLevel = new AssuranceLevel()
    }

    if (msg.filteredLevel !== undefined) {
      resolved.filteredLevel = msg.filteredLevel;
    }
    else {
      resolved.filteredLevel = 0.0
    }

    return resolved;
    }
};

module.exports = AssuranceState;
