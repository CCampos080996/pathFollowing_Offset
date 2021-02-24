# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from ros_sensor_msgs/FilterOutput.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import ros_sensor_msgs.msg
import std_msgs.msg

class FilterOutput(genpy.Message):
  _md5sum = "5695b591302f0d1858c9347aee166c94"
  _type = "ros_sensor_msgs/FilterOutput"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """
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

float64[9] covariance"""
  __slots__ = ['header','tags','xyzPos','xyzVel','eulerAngles','gyroBias','accelBias','clockBias','clockDrift','clockCovariance','rangeCorrection']
  _slot_types = ['std_msgs/Header','ros_sensor_msgs/Tags','ros_sensor_msgs/CartesianState','ros_sensor_msgs/CartesianState','ros_sensor_msgs/EulerState','ros_sensor_msgs/EulerState','ros_sensor_msgs/CartesianState','float64','float64','float64[4]','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,tags,xyzPos,xyzVel,eulerAngles,gyroBias,accelBias,clockBias,clockDrift,clockCovariance,rangeCorrection

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(FilterOutput, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.tags is None:
        self.tags = ros_sensor_msgs.msg.Tags()
      if self.xyzPos is None:
        self.xyzPos = ros_sensor_msgs.msg.CartesianState()
      if self.xyzVel is None:
        self.xyzVel = ros_sensor_msgs.msg.CartesianState()
      if self.eulerAngles is None:
        self.eulerAngles = ros_sensor_msgs.msg.EulerState()
      if self.gyroBias is None:
        self.gyroBias = ros_sensor_msgs.msg.EulerState()
      if self.accelBias is None:
        self.accelBias = ros_sensor_msgs.msg.CartesianState()
      if self.clockBias is None:
        self.clockBias = 0.
      if self.clockDrift is None:
        self.clockDrift = 0.
      if self.clockCovariance is None:
        self.clockCovariance = [0.] * 4
      if self.rangeCorrection is None:
        self.rangeCorrection = 0.
    else:
      self.header = std_msgs.msg.Header()
      self.tags = ros_sensor_msgs.msg.Tags()
      self.xyzPos = ros_sensor_msgs.msg.CartesianState()
      self.xyzVel = ros_sensor_msgs.msg.CartesianState()
      self.eulerAngles = ros_sensor_msgs.msg.EulerState()
      self.gyroBias = ros_sensor_msgs.msg.EulerState()
      self.accelBias = ros_sensor_msgs.msg.CartesianState()
      self.clockBias = 0.
      self.clockDrift = 0.
      self.clockCovariance = [0.] * 4
      self.rangeCorrection = 0.

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
      buff.write(_get_struct_3B3d().pack(_x.tags.source.type, _x.tags.dataValid, _x.tags.assuranceLevel.level, _x.xyzPos.x, _x.xyzPos.y, _x.xyzPos.z))
      buff.write(_get_struct_9d().pack(*self.xyzPos.covariance))
      _x = self
      buff.write(_get_struct_3d().pack(_x.xyzVel.x, _x.xyzVel.y, _x.xyzVel.z))
      buff.write(_get_struct_9d().pack(*self.xyzVel.covariance))
      _x = self
      buff.write(_get_struct_3d().pack(_x.eulerAngles.roll, _x.eulerAngles.pitch, _x.eulerAngles.yaw))
      buff.write(_get_struct_9d().pack(*self.eulerAngles.covariance))
      _x = self
      buff.write(_get_struct_3d().pack(_x.gyroBias.roll, _x.gyroBias.pitch, _x.gyroBias.yaw))
      buff.write(_get_struct_9d().pack(*self.gyroBias.covariance))
      _x = self
      buff.write(_get_struct_3d().pack(_x.accelBias.x, _x.accelBias.y, _x.accelBias.z))
      buff.write(_get_struct_9d().pack(*self.accelBias.covariance))
      _x = self
      buff.write(_get_struct_2d().pack(_x.clockBias, _x.clockDrift))
      buff.write(_get_struct_4d().pack(*self.clockCovariance))
      buff.write(_get_struct_d().pack(self.rangeCorrection))
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
      if self.xyzPos is None:
        self.xyzPos = ros_sensor_msgs.msg.CartesianState()
      if self.xyzVel is None:
        self.xyzVel = ros_sensor_msgs.msg.CartesianState()
      if self.eulerAngles is None:
        self.eulerAngles = ros_sensor_msgs.msg.EulerState()
      if self.gyroBias is None:
        self.gyroBias = ros_sensor_msgs.msg.EulerState()
      if self.accelBias is None:
        self.accelBias = ros_sensor_msgs.msg.CartesianState()
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
      end += 27
      (_x.tags.source.type, _x.tags.dataValid, _x.tags.assuranceLevel.level, _x.xyzPos.x, _x.xyzPos.y, _x.xyzPos.z,) = _get_struct_3B3d().unpack(str[start:end])
      self.tags.dataValid = bool(self.tags.dataValid)
      start = end
      end += 72
      self.xyzPos.covariance = _get_struct_9d().unpack(str[start:end])
      _x = self
      start = end
      end += 24
      (_x.xyzVel.x, _x.xyzVel.y, _x.xyzVel.z,) = _get_struct_3d().unpack(str[start:end])
      start = end
      end += 72
      self.xyzVel.covariance = _get_struct_9d().unpack(str[start:end])
      _x = self
      start = end
      end += 24
      (_x.eulerAngles.roll, _x.eulerAngles.pitch, _x.eulerAngles.yaw,) = _get_struct_3d().unpack(str[start:end])
      start = end
      end += 72
      self.eulerAngles.covariance = _get_struct_9d().unpack(str[start:end])
      _x = self
      start = end
      end += 24
      (_x.gyroBias.roll, _x.gyroBias.pitch, _x.gyroBias.yaw,) = _get_struct_3d().unpack(str[start:end])
      start = end
      end += 72
      self.gyroBias.covariance = _get_struct_9d().unpack(str[start:end])
      _x = self
      start = end
      end += 24
      (_x.accelBias.x, _x.accelBias.y, _x.accelBias.z,) = _get_struct_3d().unpack(str[start:end])
      start = end
      end += 72
      self.accelBias.covariance = _get_struct_9d().unpack(str[start:end])
      _x = self
      start = end
      end += 16
      (_x.clockBias, _x.clockDrift,) = _get_struct_2d().unpack(str[start:end])
      start = end
      end += 32
      self.clockCovariance = _get_struct_4d().unpack(str[start:end])
      start = end
      end += 8
      (self.rangeCorrection,) = _get_struct_d().unpack(str[start:end])
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
      buff.write(_get_struct_3B3d().pack(_x.tags.source.type, _x.tags.dataValid, _x.tags.assuranceLevel.level, _x.xyzPos.x, _x.xyzPos.y, _x.xyzPos.z))
      buff.write(self.xyzPos.covariance.tostring())
      _x = self
      buff.write(_get_struct_3d().pack(_x.xyzVel.x, _x.xyzVel.y, _x.xyzVel.z))
      buff.write(self.xyzVel.covariance.tostring())
      _x = self
      buff.write(_get_struct_3d().pack(_x.eulerAngles.roll, _x.eulerAngles.pitch, _x.eulerAngles.yaw))
      buff.write(self.eulerAngles.covariance.tostring())
      _x = self
      buff.write(_get_struct_3d().pack(_x.gyroBias.roll, _x.gyroBias.pitch, _x.gyroBias.yaw))
      buff.write(self.gyroBias.covariance.tostring())
      _x = self
      buff.write(_get_struct_3d().pack(_x.accelBias.x, _x.accelBias.y, _x.accelBias.z))
      buff.write(self.accelBias.covariance.tostring())
      _x = self
      buff.write(_get_struct_2d().pack(_x.clockBias, _x.clockDrift))
      buff.write(self.clockCovariance.tostring())
      buff.write(_get_struct_d().pack(self.rangeCorrection))
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
      if self.xyzPos is None:
        self.xyzPos = ros_sensor_msgs.msg.CartesianState()
      if self.xyzVel is None:
        self.xyzVel = ros_sensor_msgs.msg.CartesianState()
      if self.eulerAngles is None:
        self.eulerAngles = ros_sensor_msgs.msg.EulerState()
      if self.gyroBias is None:
        self.gyroBias = ros_sensor_msgs.msg.EulerState()
      if self.accelBias is None:
        self.accelBias = ros_sensor_msgs.msg.CartesianState()
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
      end += 27
      (_x.tags.source.type, _x.tags.dataValid, _x.tags.assuranceLevel.level, _x.xyzPos.x, _x.xyzPos.y, _x.xyzPos.z,) = _get_struct_3B3d().unpack(str[start:end])
      self.tags.dataValid = bool(self.tags.dataValid)
      start = end
      end += 72
      self.xyzPos.covariance = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=9)
      _x = self
      start = end
      end += 24
      (_x.xyzVel.x, _x.xyzVel.y, _x.xyzVel.z,) = _get_struct_3d().unpack(str[start:end])
      start = end
      end += 72
      self.xyzVel.covariance = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=9)
      _x = self
      start = end
      end += 24
      (_x.eulerAngles.roll, _x.eulerAngles.pitch, _x.eulerAngles.yaw,) = _get_struct_3d().unpack(str[start:end])
      start = end
      end += 72
      self.eulerAngles.covariance = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=9)
      _x = self
      start = end
      end += 24
      (_x.gyroBias.roll, _x.gyroBias.pitch, _x.gyroBias.yaw,) = _get_struct_3d().unpack(str[start:end])
      start = end
      end += 72
      self.gyroBias.covariance = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=9)
      _x = self
      start = end
      end += 24
      (_x.accelBias.x, _x.accelBias.y, _x.accelBias.z,) = _get_struct_3d().unpack(str[start:end])
      start = end
      end += 72
      self.accelBias.covariance = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=9)
      _x = self
      start = end
      end += 16
      (_x.clockBias, _x.clockDrift,) = _get_struct_2d().unpack(str[start:end])
      start = end
      end += 32
      self.clockCovariance = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=4)
      start = end
      end += 8
      (self.rangeCorrection,) = _get_struct_d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_d = None
def _get_struct_d():
    global _struct_d
    if _struct_d is None:
        _struct_d = struct.Struct("<d")
    return _struct_d
_struct_3B3d = None
def _get_struct_3B3d():
    global _struct_3B3d
    if _struct_3B3d is None:
        _struct_3B3d = struct.Struct("<3B3d")
    return _struct_3B3d
_struct_Id3B = None
def _get_struct_Id3B():
    global _struct_Id3B
    if _struct_Id3B is None:
        _struct_Id3B = struct.Struct("<Id3B")
    return _struct_Id3B
_struct_9d = None
def _get_struct_9d():
    global _struct_9d
    if _struct_9d is None:
        _struct_9d = struct.Struct("<9d")
    return _struct_9d
_struct_2d = None
def _get_struct_2d():
    global _struct_2d
    if _struct_2d is None:
        _struct_2d = struct.Struct("<2d")
    return _struct_2d
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_4d = None
def _get_struct_4d():
    global _struct_4d
    if _struct_4d is None:
        _struct_4d = struct.Struct("<4d")
    return _struct_4d
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
