# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from ros_sensor_msgs/FixStatusTagged.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import ros_sensor_msgs.msg
import std_msgs.msg

class FixStatusTagged(genpy.Message):
  _md5sum = "4a16e825224fb878cdd16add9dc99b78"
  _type = "ros_sensor_msgs/FixStatusTagged"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """## FixStatusTagged

std_msgs/Header   header
Tags              tags
FixStatus         status
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
MSG: ros_sensor_msgs/FixStatus
# # FixStatus

FixType fix
uint32  numSvs
float64  ttff
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

uint8 type"""
  __slots__ = ['header','tags','status']
  _slot_types = ['std_msgs/Header','ros_sensor_msgs/Tags','ros_sensor_msgs/FixStatus']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,tags,status

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(FixStatusTagged, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.tags is None:
        self.tags = ros_sensor_msgs.msg.Tags()
      if self.status is None:
        self.status = ros_sensor_msgs.msg.FixStatus()
    else:
      self.header = std_msgs.msg.Header()
      self.tags = ros_sensor_msgs.msg.Tags()
      self.status = ros_sensor_msgs.msg.FixStatus()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_Id3B().pack(_x.tags.gpsTime.gps_week, _x.tags.gpsTime.gps_seconds, _x.tags.sensor.type, _x.tags.receiver.type, _x.tags.key.status))
      _x = self.tags.sensorName
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_4BId().pack(_x.tags.source.type, _x.tags.dataValid, _x.tags.assuranceLevel.level, _x.status.fix.type, _x.status.numSvs, _x.status.ttff))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.tags is None:
        self.tags = ros_sensor_msgs.msg.Tags()
      if self.status is None:
        self.status = ros_sensor_msgs.msg.FixStatus()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 15
      (_x.tags.gpsTime.gps_week, _x.tags.gpsTime.gps_seconds, _x.tags.sensor.type, _x.tags.receiver.type, _x.tags.key.status,) = _get_struct_Id3B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.tags.sensorName = str[start:end].decode('utf-8')
      else:
        self.tags.sensorName = str[start:end]
      _x = self
      start = end
      end += 16
      (_x.tags.source.type, _x.tags.dataValid, _x.tags.assuranceLevel.level, _x.status.fix.type, _x.status.numSvs, _x.status.ttff,) = _get_struct_4BId().unpack(str[start:end])
      self.tags.dataValid = bool(self.tags.dataValid)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_Id3B().pack(_x.tags.gpsTime.gps_week, _x.tags.gpsTime.gps_seconds, _x.tags.sensor.type, _x.tags.receiver.type, _x.tags.key.status))
      _x = self.tags.sensorName
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_4BId().pack(_x.tags.source.type, _x.tags.dataValid, _x.tags.assuranceLevel.level, _x.status.fix.type, _x.status.numSvs, _x.status.ttff))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.tags is None:
        self.tags = ros_sensor_msgs.msg.Tags()
      if self.status is None:
        self.status = ros_sensor_msgs.msg.FixStatus()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 15
      (_x.tags.gpsTime.gps_week, _x.tags.gpsTime.gps_seconds, _x.tags.sensor.type, _x.tags.receiver.type, _x.tags.key.status,) = _get_struct_Id3B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.tags.sensorName = str[start:end].decode('utf-8')
      else:
        self.tags.sensorName = str[start:end]
      _x = self
      start = end
      end += 16
      (_x.tags.source.type, _x.tags.dataValid, _x.tags.assuranceLevel.level, _x.status.fix.type, _x.status.numSvs, _x.status.ttff,) = _get_struct_4BId().unpack(str[start:end])
      self.tags.dataValid = bool(self.tags.dataValid)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_4BId = None
def _get_struct_4BId():
    global _struct_4BId
    if _struct_4BId is None:
        _struct_4BId = struct.Struct("<4BId")
    return _struct_4BId
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_Id3B = None
def _get_struct_Id3B():
    global _struct_Id3B
    if _struct_Id3B is None:
        _struct_Id3B = struct.Struct("<Id3B")
    return _struct_Id3B
