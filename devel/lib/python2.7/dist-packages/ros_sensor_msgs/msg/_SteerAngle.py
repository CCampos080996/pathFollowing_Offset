# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from ros_sensor_msgs/SteerAngle.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class SteerAngle(genpy.Message):
  _md5sum = "c00ba70d13b583019559e4ba72c1a15a"
  _type = "ros_sensor_msgs/SteerAngle"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """float64    steer_angle				 # rad
float64    steer_angle_variance 	 # rad^2
float64    steer_angle_rate          # rad/s
float64    steer_angle_rate_variance # (rad/s)^2
string     wheel_name"""
  __slots__ = ['steer_angle','steer_angle_variance','steer_angle_rate','steer_angle_rate_variance','wheel_name']
  _slot_types = ['float64','float64','float64','float64','string']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       steer_angle,steer_angle_variance,steer_angle_rate,steer_angle_rate_variance,wheel_name

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SteerAngle, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.steer_angle is None:
        self.steer_angle = 0.
      if self.steer_angle_variance is None:
        self.steer_angle_variance = 0.
      if self.steer_angle_rate is None:
        self.steer_angle_rate = 0.
      if self.steer_angle_rate_variance is None:
        self.steer_angle_rate_variance = 0.
      if self.wheel_name is None:
        self.wheel_name = ''
    else:
      self.steer_angle = 0.
      self.steer_angle_variance = 0.
      self.steer_angle_rate = 0.
      self.steer_angle_rate_variance = 0.
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
      buff.write(_get_struct_4d().pack(_x.steer_angle, _x.steer_angle_variance, _x.steer_angle_rate, _x.steer_angle_rate_variance))
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
      end += 32
      (_x.steer_angle, _x.steer_angle_variance, _x.steer_angle_rate, _x.steer_angle_rate_variance,) = _get_struct_4d().unpack(str[start:end])
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
      buff.write(_get_struct_4d().pack(_x.steer_angle, _x.steer_angle_variance, _x.steer_angle_rate, _x.steer_angle_rate_variance))
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
      end += 32
      (_x.steer_angle, _x.steer_angle_variance, _x.steer_angle_rate, _x.steer_angle_rate_variance,) = _get_struct_4d().unpack(str[start:end])
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
_struct_4d = None
def _get_struct_4d():
    global _struct_4d
    if _struct_4d is None:
        _struct_4d = struct.Struct("<4d")
    return _struct_4d
