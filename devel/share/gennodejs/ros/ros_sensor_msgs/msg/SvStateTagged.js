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
let SvState = require('./SvState.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SvStateTagged {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.tags = null;
      this.svState = null;
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
      if (initObj.hasOwnProperty('svState')) {
        this.svState = initObj.svState
      }
      else {
        this.svState = new SvState();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SvStateTagged
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [tags]
    bufferOffset = Tags.serialize(obj.tags, buffer, bufferOffset);
    // Serialize message field [svState]
    bufferOffset = SvState.serialize(obj.svState, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SvStateTagged
    let len;
    let data = new SvStateTagged(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [tags]
    data.tags = Tags.deserialize(buffer, bufferOffset);
    // Deserialize message field [svState]
    data.svState = SvState.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += Tags.getMessageSize(object.tags);
    return length + 82;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_sensor_msgs/SvStateTagged';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bb3a8aaa166c2d3db9dfb5473e2b70df';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ## Satellite vehicle state with tags and header
    
    std_msgs/Header   header
    Tags              tags
    SvState           svState
    
    
    
    
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
    MSG: ros_sensor_msgs/SvState
    ## Satellite vehicle state information
    
    uint16                prn                 # GPS [1-32], GLONASS may be negative
    geometry_msgs/Point   position            # Satellite position in ECEF [m]
    geometry_msgs/Twist   velocity            # Satellite velocity in ECEF [m/s]
    float64               svClockCorrection   # Satellite clock correction [m]
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SvStateTagged(null);
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

    if (msg.svState !== undefined) {
      resolved.svState = SvState.Resolve(msg.svState)
    }
    else {
      resolved.svState = new SvState()
    }

    return resolved;
    }
};

module.exports = SvStateTagged;
