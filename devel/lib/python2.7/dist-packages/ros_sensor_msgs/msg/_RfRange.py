# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from ros_sensor_msgs/RfRange.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class RfRange(genpy.Message):
  _md5sum = "32b87628f581d5bd2a8b44788eff9d27"
  _type = "ros_sensor_msgs/RfRange"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# Range to specified object
float64 range
float64 rangeRate
float64 rangeVariance
float64 rangeRateVariance
uint32  timestamp
uint32  sourceId
uint32  destId
uint16  rssi
uint16  quality
"""
  __slots__ = ['range','rangeRate','rangeVariance','rangeRateVariance','timestamp','sourceId','destId','rssi','quality']
  _slot_types = ['float64','float64','float64','float64','uint32','uint32','uint32','uint16','uint16']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       range,rangeRate,rangeVariance,rangeRateVariance,timestamp,sourceId,destId,rssi,quality

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(RfRange, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.range is None:
        self.range = 0.
      if self.rangeRate is None:
        self.rangeRate = 0.
      if self.rangeVariance is None:
        self.rangeVariance = 0.
      if self.rangeRateVariance is None:
        self.rangeRateVariance = 0.
      if self.timestamp is None:
        self.timestamp = 0
      if self.sourceId is None:
        self.sourceId = 0
      if self.destId is None:
        self.destId = 0
      if self.rssi is None:
        self.rssi = 0
      if self.quality is None:
        self.quality = 0
    else:
      self.range = 0.
      self.rangeRate = 0.
      self.rangeVariance = 0.
      self.rangeRateVariance = 0.
      self.timestamp = 0
      self.sourceId = 0
      self.destId = 0
      self.rssi = 0
      self.quality = 0

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
      buff.write(_get_struct_4d3I2H().pack(_x.range, _x.rangeRate, _x.rangeVariance, _x.rangeRateVariance, _x.timestamp, _x.sourceId, _x.destId, _x.rssi, _x.quality))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 48
      (_x.range, _x.rangeRate, _x.rangeVariance, _x.rangeRateVariance, _x.timestamp, _x.sourceId, _x.destId, _x.rssi, _x.quality,) = _get_struct_4d3I2H().unpack(str[start:end])
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
      buff.write(_get_struct_4d3I2H().pack(_x.range, _x.rangeRate, _x.rangeVariance, _x.rangeRateVariance, _x.timestamp, _x.sourceId, _x.destId, _x.rssi, _x.quality))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 48
      (_x.range, _x.rangeRate, _x.rangeVariance, _x.rangeRateVariance, _x.timestamp, _x.sourceId, _x.destId, _x.rssi, _x.quality,) = _get_struct_4d3I2H().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_4d3I2H = None
def _get_struct_4d3I2H():
    global _struct_4d3I2H
    if _struct_4d3I2H is None:
        _struct_4d3I2H = struct.Struct("<4d3I2H")
    return _struct_4d3I2H
