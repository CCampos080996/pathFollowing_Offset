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
let NodeStatus = require('./NodeStatus.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class RepoStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.tags = null;
      this.localNode = null;
      this.remoteNodes = null;
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
      if (initObj.hasOwnProperty('localNode')) {
        this.localNode = initObj.localNode
      }
      else {
        this.localNode = new NodeStatus();
      }
      if (initObj.hasOwnProperty('remoteNodes')) {
        this.remoteNodes = initObj.remoteNodes
      }
      else {
        this.remoteNodes = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RepoStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [tags]
    bufferOffset = Tags.serialize(obj.tags, buffer, bufferOffset);
    // Serialize message field [localNode]
    bufferOffset = NodeStatus.serialize(obj.localNode, buffer, bufferOffset);
    // Serialize message field [remoteNodes]
    // Serialize the length for message field [remoteNodes]
    bufferOffset = _serializer.uint32(obj.remoteNodes.length, buffer, bufferOffset);
    obj.remoteNodes.forEach((val) => {
      bufferOffset = NodeStatus.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RepoStatus
    let len;
    let data = new RepoStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [tags]
    data.tags = Tags.deserialize(buffer, bufferOffset);
    // Deserialize message field [localNode]
    data.localNode = NodeStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [remoteNodes]
    // Deserialize array length for message field [remoteNodes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.remoteNodes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.remoteNodes[i] = NodeStatus.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += Tags.getMessageSize(object.tags);
    length += NodeStatus.getMessageSize(object.localNode);
    object.remoteNodes.forEach((val) => {
      length += NodeStatus.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_sensor_msgs/RepoStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '73c189982339de9347415b23f31f460b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header   header
    Tags              tags
    NodeStatus        localNode
    NodeStatus[]      remoteNodes
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
    MSG: ros_sensor_msgs/NodeStatus
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
    const resolved = new RepoStatus(null);
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

    if (msg.localNode !== undefined) {
      resolved.localNode = NodeStatus.Resolve(msg.localNode)
    }
    else {
      resolved.localNode = new NodeStatus()
    }

    if (msg.remoteNodes !== undefined) {
      resolved.remoteNodes = new Array(msg.remoteNodes.length);
      for (let i = 0; i < resolved.remoteNodes.length; ++i) {
        resolved.remoteNodes[i] = NodeStatus.Resolve(msg.remoteNodes[i]);
      }
    }
    else {
      resolved.remoteNodes = []
    }

    return resolved;
    }
};

module.exports = RepoStatus;
