# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from ros_sensor_msgs/WheelSpeeds.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import ros_sensor_msgs.msg
import std_msgs.msg

class WheelSpeeds(genpy.Message):
  _md5sum = "52eb70e4e79e2d8a61fc2e247cb46e3f"
  _type = "ros_sensor_msgs/WheelSpeeds"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """std_msgs/Header header
uint32 timestamp  # [counts]
float32 dt  # [sec]
WheelSpeed[] wheelSpeeds
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
MSG: ros_sensor_msgs/WheelSpeed
float64 	wheel_speed				    # m/s
float32 	wheel_speed_variance 	# (m/s)^2
string    wheel_name"""
  __slots__ = ['header','timestamp','dt','wheelSpeeds']
  _slot_types = ['std_msgs/Header','uint32','float32','ros_sensor_msgs/WheelSpeed[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,timestamp,dt,wheelSpeeds

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(WheelSpeeds, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.timestamp is None:
        self.timestamp = 0
      if self.dt is None:
        self.dt = 0.
      if self.wheelSpeeds is None:
        self.wheelSpeeds = []
    else:
      self.header = std_msgs.msg.Header()
      self.timestamp = 0
      self.dt = 0.
      self.wheelSpeeds = []

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
      buff.write(_get_struct_If().pack(_x.timestamp, _x.dt))
      length = len(self.wheelSpeeds)
      buff.write(_struct_I.pack(length))
      for val1 in self.wheelSpeeds:
        _x = val1
        buff.write(_get_struct_df().pack(_x.wheel_speed, _x.wheel_speed_variance))
        _x = val1.wheel_name
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
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.wheelSpeeds is None:
        self.wheelSpeeds = None
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
      end += 8
      (_x.timestamp, _x.dt,) = _get_struct_If().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.wheelSpeeds = []
      for i in range(0, length):
        val1 = ros_sensor_msgs.msg.WheelSpeed()
        _x = val1
        start = end
        end += 12
        (_x.wheel_speed, _x.wheel_speed_variance,) = _get_struct_df().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.wheel_name = str[start:end].decode('utf-8')
        else:
          val1.wheel_name = str[start:end]
        self.wheelSpeeds.append(val1)
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
      buff.write(_get_struct_If().pack(_x.timestamp, _x.dt))
      length = len(self.wheelSpeeds)
      buff.write(_struct_I.pack(length))
      for val1 in self.wheelSpeeds:
        _x = val1
        buff.write(_get_struct_df().pack(_x.wheel_speed, _x.wheel_speed_variance))
        _x = val1.wheel_name
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
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.wheelSpeeds is None:
        self.wheelSpeeds = None
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
      end += 8
      (_x.timestamp, _x.dt,) = _get_struct_If().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.wheelSpeeds = []
      for i in range(0, length):
        val1 = ros_sensor_msgs.msg.WheelSpeed()
        _x = val1
        start = end
        end += 12
        (_x.wheel_speed, _x.wheel_speed_variance,) = _get_struct_df().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.wheel_name = str[start:end].decode('utf-8')
        else:
          val1.wheel_name = str[start:end]
        self.wheelSpeeds.append(val1)
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
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_If = None
def _get_struct_If():
    global _struct_If
    if _struct_If is None:
        _struct_If = struct.Struct("<If")
    return _struct_If
