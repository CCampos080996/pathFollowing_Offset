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
let ClockParameters = require('./ClockParameters.js');
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ErrorFilterOutput {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.tags = null;
      this.orientationErr = null;
      this.velocityErr = null;
      this.positionErr = null;
      this.accelBias = null;
      this.gyroBias = null;
      this.clock = null;
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
      if (initObj.hasOwnProperty('orientationErr')) {
        this.orientationErr = initObj.orientationErr
      }
      else {
        this.orientationErr = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('velocityErr')) {
        this.velocityErr = initObj.velocityErr
      }
      else {
        this.velocityErr = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('positionErr')) {
        this.positionErr = initObj.positionErr
      }
      else {
        this.positionErr = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('accelBias')) {
        this.accelBias = initObj.accelBias
      }
      else {
        this.accelBias = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('gyroBias')) {
        this.gyroBias = initObj.gyroBias
      }
      else {
        this.gyroBias = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('clock')) {
        this.clock = initObj.clock
      }
      else {
        this.clock = new ClockParameters();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ErrorFilterOutput
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [tags]
    bufferOffset = Tags.serialize(obj.tags, buffer, bufferOffset);
    // Serialize message field [orientationErr]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.orientationErr, buffer, bufferOffset);
    // Serialize message field [velocityErr]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.velocityErr, buffer, bufferOffset);
    // Serialize message field [positionErr]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.positionErr, buffer, bufferOffset);
    // Serialize message field [accelBias]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.accelBias, buffer, bufferOffset);
    // Serialize message field [gyroBias]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.gyroBias, buffer, bufferOffset);
    // Serialize message field [clock]
    bufferOffset = ClockParameters.serialize(obj.clock, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ErrorFilterOutput
    let len;
    let data = new ErrorFilterOutput(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [tags]
    data.tags = Tags.deserialize(buffer, bufferOffset);
    // Deserialize message field [orientationErr]
    data.orientationErr = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocityErr]
    data.velocityErr = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [positionErr]
    data.positionErr = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [accelBias]
    data.accelBias = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [gyroBias]
    data.gyroBias = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [clock]
    data.clock = ClockParameters.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += Tags.getMessageSize(object.tags);
    return length + 136;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_sensor_msgs/ErrorFilterOutput';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '67e8d7bcf6c0dfb06e37f3b17fd4edc6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ## 17-state error navigation filter output
    
    std_msgs/Header   header
    Tags              tags
    
    geometry_msgs/Vector3 orientationErr
    geometry_msgs/Vector3 velocityErr
    geometry_msgs/Vector3 positionErr
    geometry_msgs/Vector3 accelBias
    geometry_msgs/Vector3 gyroBias
    ClockParameters       clock
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
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: ros_sensor_msgs/ClockParameters
    ## Recevier clock parameters
    
    float64 clock_bias    # Receiver clock bias [sec]
    float64 clock_drift   # Receiver clock drift [sec/sec]
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ErrorFilterOutput(null);
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

    if (msg.orientationErr !== undefined) {
      resolved.orientationErr = geometry_msgs.msg.Vector3.Resolve(msg.orientationErr)
    }
    else {
      resolved.orientationErr = new geometry_msgs.msg.Vector3()
    }

    if (msg.velocityErr !== undefined) {
      resolved.velocityErr = geometry_msgs.msg.Vector3.Resolve(msg.velocityErr)
    }
    else {
      resolved.velocityErr = new geometry_msgs.msg.Vector3()
    }

    if (msg.positionErr !== undefined) {
      resolved.positionErr = geometry_msgs.msg.Vector3.Resolve(msg.positionErr)
    }
    else {
      resolved.positionErr = new geometry_msgs.msg.Vector3()
    }

    if (msg.accelBias !== undefined) {
      resolved.accelBias = geometry_msgs.msg.Vector3.Resolve(msg.accelBias)
    }
    else {
      resolved.accelBias = new geometry_msgs.msg.Vector3()
    }

    if (msg.gyroBias !== undefined) {
      resolved.gyroBias = geometry_msgs.msg.Vector3.Resolve(msg.gyroBias)
    }
    else {
      resolved.gyroBias = new geometry_msgs.msg.Vector3()
    }

    if (msg.clock !== undefined) {
      resolved.clock = ClockParameters.Resolve(msg.clock)
    }
    else {
      resolved.clock = new ClockParameters()
    }

    return resolved;
    }
};

module.exports = ErrorFilterOutput;
