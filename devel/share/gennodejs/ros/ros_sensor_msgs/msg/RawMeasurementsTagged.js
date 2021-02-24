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
let RawMeasurement = require('./RawMeasurement.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class RawMeasurementsTagged {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.tags = null;
      this.measurements = null;
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
      if (initObj.hasOwnProperty('measurements')) {
        this.measurements = initObj.measurements
      }
      else {
        this.measurements = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RawMeasurementsTagged
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [tags]
    bufferOffset = Tags.serialize(obj.tags, buffer, bufferOffset);
    // Serialize message field [measurements]
    // Serialize the length for message field [measurements]
    bufferOffset = _serializer.uint32(obj.measurements.length, buffer, bufferOffset);
    obj.measurements.forEach((val) => {
      bufferOffset = RawMeasurement.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RawMeasurementsTagged
    let len;
    let data = new RawMeasurementsTagged(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [tags]
    data.tags = Tags.deserialize(buffer, bufferOffset);
    // Deserialize message field [measurements]
    // Deserialize array length for message field [measurements]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.measurements = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.measurements[i] = RawMeasurement.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += Tags.getMessageSize(object.tags);
    length += 48 * object.measurements.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_sensor_msgs/RawMeasurementsTagged';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f7fe5e22f5b398264f349131119cd903';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ## Raw measurements for a single channel with header
    
    std_msgs/Header   header
    Tags              tags
    RawMeasurement[]  measurements
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
    MSG: ros_sensor_msgs/RawMeasurement
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
    const resolved = new RawMeasurementsTagged(null);
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

    if (msg.measurements !== undefined) {
      resolved.measurements = new Array(msg.measurements.length);
      for (let i = 0; i < resolved.measurements.length; ++i) {
        resolved.measurements[i] = RawMeasurement.Resolve(msg.measurements[i]);
      }
    }
    else {
      resolved.measurements = []
    }

    return resolved;
    }
};

module.exports = RawMeasurementsTagged;
