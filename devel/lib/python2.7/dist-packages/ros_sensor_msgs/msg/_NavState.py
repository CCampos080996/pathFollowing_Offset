# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from ros_sensor_msgs/NavState.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import ros_sensor_msgs.msg
import std_msgs.msg

class NavState(genpy.Message):
  _md5sum = "24804c40e60ccc8400a9fcc2cccc88b2"
  _type = "ros_sensor_msgs/NavState"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """std_msgs/Header header
string 			parent_frame_id

Vector3Cov 		position		# m, m^2
Vector3Cov 		velocity		# m/s, (m/s)^2
QuaternionCov 	attitude		# none, rad^2
AssuranceLevel  assuranceLevel
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
MSG: ros_sensor_msgs/Vector3Cov
geometry_msgs/Vector3 	value 		# unit
float64[9] 				covariance 	# unit^2
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
MSG: ros_sensor_msgs/QuaternionCov
geometry_msgs/Quaternion 	value
float64[9] 				 	covariance 	# rad^2
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: ros_sensor_msgs/AssuranceLevel
uint8  Normal   = 0
uint8  Unknown  = 1
uint8  Warning  = 2
uint8  Attack   = 3

uint8 level"""
  __slots__ = ['header','parent_frame_id','position','velocity','attitude','assuranceLevel']
  _slot_types = ['std_msgs/Header','string','ros_sensor_msgs/Vector3Cov','ros_sensor_msgs/Vector3Cov','ros_sensor_msgs/QuaternionCov','ros_sensor_msgs/AssuranceLevel']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,parent_frame_id,position,velocity,attitude,assuranceLevel

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(NavState, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.parent_frame_id is None:
        self.parent_frame_id = ''
      if self.position is None:
        self.position = ros_sensor_msgs.msg.Vector3Cov()
      if self.velocity is None:
        self.velocity = ros_sensor_msgs.msg.Vector3Cov()
      if self.attitude is None:
        self.attitude = ros_sensor_msgs.msg.QuaternionCov()
      if self.assuranceLevel is None:
        self.assuranceLevel = ros_sensor_msgs.msg.AssuranceLevel()
    else:
      self.header = std_msgs.msg.Header()
      self.parent_frame_id = ''
      self.position = ros_sensor_msgs.msg.Vector3Cov()
      self.velocity = ros_sensor_msgs.msg.Vector3Cov()
      self.attitude = ros_sensor_msgs.msg.QuaternionCov()
      self.assuranceLevel = ros_sensor_msgs.msg.AssuranceLevel()

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
      _x = self.parent_frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3d().pack(_x.position.value.x, _x.position.value.y, _x.position.value.z))
      buff.write(_get_struct_9d().pack(*self.position.covariance))
      _x = self
      buff.write(_get_struct_3d().pack(_x.velocity.value.x, _x.velocity.value.y, _x.velocity.value.z))
      buff.write(_get_struct_9d().pack(*self.velocity.covariance))
      _x = self
      buff.write(_get_struct_4d().pack(_x.attitude.value.x, _x.attitude.value.y, _x.attitude.value.z, _x.attitude.value.w))
      buff.write(_get_struct_9d().pack(*self.attitude.covariance))
      buff.write(_get_struct_B().pack(self.assuranceLevel.level))
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
      if self.position is None:
        self.position = ros_sensor_msgs.msg.Vector3Cov()
      if self.velocity is None:
        self.velocity = ros_sensor_msgs.msg.Vector3Cov()
      if self.attitude is None:
        self.attitude = ros_sensor_msgs.msg.QuaternionCov()
      if self.assuranceLevel is None:
        self.assuranceLevel = ros_sensor_msgs.msg.AssuranceLevel()
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
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.parent_frame_id = str[start:end].decode('utf-8')
      else:
        self.parent_frame_id = str[start:end]
      _x = self
      start = end
      end += 24
      (_x.position.value.x, _x.position.value.y, _x.position.value.z,) = _get_struct_3d().unpack(str[start:end])
      start = end
      end += 72
      self.position.covariance = _get_struct_9d().unpack(str[start:end])
      _x = self
      start = end
      end += 24
      (_x.velocity.value.x, _x.velocity.value.y, _x.velocity.value.z,) = _get_struct_3d().unpack(str[start:end])
      start = end
      end += 72
      self.velocity.covariance = _get_struct_9d().unpack(str[start:end])
      _x = self
      start = end
      end += 32
      (_x.attitude.value.x, _x.attitude.value.y, _x.attitude.value.z, _x.attitude.value.w,) = _get_struct_4d().unpack(str[start:end])
      start = end
      end += 72
      self.attitude.covariance = _get_struct_9d().unpack(str[start:end])
      start = end
      end += 1
      (self.assuranceLevel.level,) = _get_struct_B().unpack(str[start:end])
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
      _x = self.parent_frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3d().pack(_x.position.value.x, _x.position.value.y, _x.position.value.z))
      buff.write(self.position.covariance.tostring())
      _x = self
      buff.write(_get_struct_3d().pack(_x.velocity.value.x, _x.velocity.value.y, _x.velocity.value.z))
      buff.write(self.velocity.covariance.tostring())
      _x = self
      buff.write(_get_struct_4d().pack(_x.attitude.value.x, _x.attitude.value.y, _x.attitude.value.z, _x.attitude.value.w))
      buff.write(self.attitude.covariance.tostring())
      buff.write(_get_struct_B().pack(self.assuranceLevel.level))
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
      if self.position is None:
        self.position = ros_sensor_msgs.msg.Vector3Cov()
      if self.velocity is None:
        self.velocity = ros_sensor_msgs.msg.Vector3Cov()
      if self.attitude is None:
        self.attitude = ros_sensor_msgs.msg.QuaternionCov()
      if self.assuranceLevel is None:
        self.assuranceLevel = ros_sensor_msgs.msg.AssuranceLevel()
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
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.parent_frame_id = str[start:end].decode('utf-8')
      else:
        self.parent_frame_id = str[start:end]
      _x = self
      start = end
      end += 24
      (_x.position.value.x, _x.position.value.y, _x.position.value.z,) = _get_struct_3d().unpack(str[start:end])
      start = end
      end += 72
      self.position.covariance = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=9)
      _x = self
      start = end
      end += 24
      (_x.velocity.value.x, _x.velocity.value.y, _x.velocity.value.z,) = _get_struct_3d().unpack(str[start:end])
      start = end
      end += 72
      self.velocity.covariance = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=9)
      _x = self
      start = end
      end += 32
      (_x.attitude.value.x, _x.attitude.value.y, _x.attitude.value.z, _x.attitude.value.w,) = _get_struct_4d().unpack(str[start:end])
      start = end
      end += 72
      self.attitude.covariance = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=9)
      start = end
      end += 1
      (self.assuranceLevel.level,) = _get_struct_B().unpack(str[start:end])
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
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
_struct_9d = None
def _get_struct_9d():
    global _struct_9d
    if _struct_9d is None:
        _struct_9d = struct.Struct("<9d")
    return _struct_9d
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
