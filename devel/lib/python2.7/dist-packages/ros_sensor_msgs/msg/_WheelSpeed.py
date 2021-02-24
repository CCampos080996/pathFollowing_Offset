# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from ros_sensor_msgs/WheelSpeed.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class WheelSpeed(genpy.Message):
  _md5sum = "a79d594773fea65f5c40acf76550658c"
  _type = "ros_sensor_msgs/WheelSpeed"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """float64 	wheel_speed				    # m/s
float32 	wheel_speed_variance 	# (m/s)^2
string    wheel_name"""
  __slots__ = ['wheel_speed','wheel_speed_variance','wheel_name']
  _slot_types = ['float64','float32','string']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       wheel_speed,wheel_speed_variance,wheel_name

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(WheelSpeed, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.wheel_speed is None:
        self.wheel_speed = 0.
      if self.wheel_speed_variance is None:
        self.wheel_speed_variance = 0.
      if self.wheel_name is None:
        self.wheel_name = ''
    else:
      self.wheel_speed = 0.
      self.wheel_speed_variance = 0.
      self.wheel_name = ''

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
      buff.write(_get_struct_df().pack(_x.wheel_speed, _x.wheel_speed_variance))
      _x = self.wheel_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
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
      end += 12
      (_x.wheel_speed, _x.wheel_speed_variance,) = _get_struct_df().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.wheel_name = str[start:end].decode('utf-8')
      else:
        self.wheel_name = str[start:end]
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
      buff.write(_get_struct_df().pack(_x.wheel_speed, _x.wheel_speed_variance))
      _x = self.wheel_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
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
      end += 12
      (_x.wheel_speed, _x.wheel_speed_variance,) = _get_struct_df().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.wheel_name = str[start:end].decode('utf-8')
      else:
        self.wheel_name = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_df = None
def _get_struct_df():
    global _struct_df
    if _struct_df is None:
        _struct_df = struct.Struct("<df")
    return _struct_df
