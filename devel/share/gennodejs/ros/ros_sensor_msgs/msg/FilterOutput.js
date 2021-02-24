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
let CartesianState = require('./CartesianState.js');
let EulerState = require('./EulerState.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class FilterOutput {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.tags = null;
      this.xyzPos = null;
      this.xyzVel = null;
      this.eulerAngles = null;
      this.gyroBias = null;
      this.accelBias = null;
      this.clockBias = null;
      this.clockDrift = null;
      this.clockCovariance = null;
      this.rangeCorrection = null;
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
      if (initObj.hasOwnProperty('xyzPos')) {
        this.xyzPos = initObj.xyzPos
      }
      else {
        this.xyzPos = new CartesianState();
      }
      if (initObj.hasOwnProperty('xyzVel')) {
        this.xyzVel = initObj.xyzVel
      }
      else {
        this.xyzVel = new CartesianState();
      }
      if (initObj.hasOwnProperty('eulerAngles')) {
        this.eulerAngles = initObj.eulerAngles
      }
      else {
        this.eulerAngles = new EulerState();
      }
      if (initObj.hasOwnProperty('gyroBias')) {
        this.gyroBias = initObj.gyroBias
      }
      else {
        this.gyroBias = new EulerState();
      }
      if (initObj.hasOwnProperty('accelBias')) {
        this.accelBias = initObj.accelBias
      }
      else {
        this.accelBias = new CartesianState();
      }
      if (initObj.hasOwnProperty('clockBias')) {
        this.clockBias = initObj.clockBias
      }
      else {
        this.clockBias = 0.0;
      }
      if (initObj.hasOwnProperty('clockDrift')) {
        this.clockDrift = initObj.clockDrift
      }
      else {
        this.clockDrift = 0.0;
      }
      if (initObj.hasOwnProperty('clockCovariance')) {
        this.clockCovariance = initObj.clockCovariance
      }
      else {
        this.clockCovariance = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('rangeCorrection')) {
        this.rangeCorrection = initObj.rangeCorrection
      }
      else {
        this.rangeCorrection = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FilterOutput
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [tags]
    bufferOffset = Tags.serialize(obj.tags, buffer, bufferOffset);
    // Serialize message field [xyzPos]
    bufferOffset = CartesianState.serialize(obj.xyzPos, buffer, bufferOffset);
    // Serialize message field [xyzVel]
    bufferOffset = CartesianState.serialize(obj.xyzVel, buffer, bufferOffset);
    // Serialize message field [eulerAngles]
    bufferOffset = EulerState.serialize(obj.eulerAngles, buffer, bufferOffset);
    // Serialize message field [gyroBias]
    bufferOffset = EulerState.serialize(obj.gyroBias, buffer, bufferOffset);
    // Serialize message field [accelBias]
    bufferOffset = CartesianState.serialize(obj.accelBias, buffer, bufferOffset);
    // Serialize message field [clockBias]
    bufferOffset = _serializer.float64(obj.clockBias, buffer, bufferOffset);
    // Serialize message field [clockDrift]
    bufferOffset = _serializer.float64(obj.clockDrift, buffer, bufferOffset);
    // Check that the constant length array field [clockCovariance] has the right length
    if (obj.clockCovariance.length !== 4) {
      throw new Error('Unable to serialize array field clockCovariance - length must be 4')
    }
    // Serialize message field [clockCovariance]
    bufferOffset = _arraySerializer.float64(obj.clockCovariance, buffer, bufferOffset, 4);
    // Serialize message field [rangeCorrection]
    bufferOffset = _serializer.float64(obj.rangeCorrection, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FilterOutput
    let len;
    let data = new FilterOutput(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [tags]
    data.tags = Tags.deserialize(buffer, bufferOffset);
    // Deserialize message field [xyzPos]
    data.xyzPos = CartesianState.deserialize(buffer, bufferOffset);
    // Deserialize message field [xyzVel]
    data.xyzVel = CartesianState.deserialize(buffer, bufferOffset);
    // Deserialize message field [eulerAngles]
    data.eulerAngles = EulerState.deserialize(buffer, bufferOffset);
    // Deserialize message field [gyroBias]
    data.gyroBias = EulerState.deserialize(buffer, bufferOffset);
    // Deserialize message field [accelBias]
    data.accelBias = CartesianState.deserialize(buffer, bufferOffset);
    // Deserialize message field [clockBias]
    data.clockBias = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [clockDrift]
    data.clockDrift = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [clockCovariance]
    data.clockCovariance = _arrayDeserializer.float64(buffer, bufferOffset, 4)
    // Deserialize message field [rangeCorrection]
    data.rangeCorrection = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += Tags.getMessageSize(object.tags);
    return length + 536;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_sensor_msgs/FilterOutput';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5695b591302f0d1858c9347aee166c94';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    std_msgs/Header   header
    
    Tags              tags
    
    CartesianState    xyzPos
    CartesianState    xyzVel
    EulerState        eulerAngles
    EulerState        gyroBias
    CartesianState    accelBias
    
    float64 clockBias
    float64 clockDrift
    float64[4] clockCovariance
    
    float64 rangeCorrection
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
    MSG: ros_sensor_msgs/CartesianState
    ## XYZ position and associated covariance
    
    float64       x
    float64       y
    float64       z
    
    float64[9] covariance
    ================================================================================
    MSG: ros_sensor_msgs/EulerState
    ## XYZ velocity and associated covariance
    
    float64       roll
    float64       pitch
    float64       yaw
    
    float64[9] covariance
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FilterOutput(null);
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

    if (msg.xyzPos !== undefined) {
      resolved.xyzPos = CartesianState.Resolve(msg.xyzPos)
    }
    else {
      resolved.xyzPos = new CartesianState()
    }

    if (msg.xyzVel !== undefined) {
      resolved.xyzVel = CartesianState.Resolve(msg.xyzVel)
    }
    else {
      resolved.xyzVel = new CartesianState()
    }

    if (msg.eulerAngles !== undefined) {
      resolved.eulerAngles = EulerState.Resolve(msg.eulerAngles)
    }
    else {
      resolved.eulerAngles = new EulerState()
    }

    if (msg.gyroBias !== undefined) {
      resolved.gyroBias = EulerState.Resolve(msg.gyroBias)
    }
    else {
      resolved.gyroBias = new EulerState()
    }

    if (msg.accelBias !== undefined) {
      resolved.accelBias = CartesianState.Resolve(msg.accelBias)
    }
    else {
      resolved.accelBias = new CartesianState()
    }

    if (msg.clockBias !== undefined) {
      resolved.clockBias = msg.clockBias;
    }
    else {
      resolved.clockBias = 0.0
    }

    if (msg.clockDrift !== undefined) {
      resolved.clockDrift = msg.clockDrift;
    }
    else {
      resolved.clockDrift = 0.0
    }

    if (msg.clockCovariance !== undefined) {
      resolved.clockCovariance = msg.clockCovariance;
    }
    else {
      resolved.clockCovariance = new Array(4).fill(0)
    }

    if (msg.rangeCorrection !== undefined) {
      resolved.rangeCorrection = msg.rangeCorrection;
    }
    else {
      resolved.rangeCorrection = 0.0
    }

    return resolved;
    }
};

module.exports = FilterOutput;
