# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from ros_sensor_msgs/VehicleCanData.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg

class VehicleCanData(genpy.Message):
  _md5sum = "75538c77ee37258cf3ed3bf6d0bd45c3"
  _type = "ros_sensor_msgs/VehicleCanData"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """## Message for vehicle data from CAN bus
std_msgs/Header   header

float32 vehicleSpeed
float32 yawRate

float32 frontLeftWheelSpeed
float32 frontRightWheelSpeed
float32 rearLeftWheelSpeed
float32 rearRightWheelSpeed

float32 steerAngle
float32 steerAngleRate

float32 frontLeftTirePressure
float32 frontRightTirePressure
float32 rearLeftTirePressure
float32 rearRightTirePressure

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
"""
  __slots__ = ['header','vehicleSpeed','yawRate','frontLeftWheelSpeed','frontRightWheelSpeed','rearLeftWheelSpeed','rearRightWheelSpeed','steerAngle','steerAngleRate','frontLeftTirePressure','frontRightTirePressure','rearLeftTirePressure','rearRightTirePressure']
  _slot_types = ['std_msgs/Header','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,vehicleSpeed,yawRate,frontLeftWheelSpeed,frontRightWheelSpeed,rearLeftWheelSpeed,rearRightWheelSpeed,steerAngle,steerAngleRate,frontLeftTirePressure,frontRightTirePressure,rearLeftTirePressure,rearRightTirePressure

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(VehicleCanData, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.vehicleSpeed is None:
        self.vehicleSpeed = 0.
      if self.yawRate is None:
        self.yawRate = 0.
      if self.frontLeftWheelSpeed is None:
        self.frontLeftWheelSpeed = 0.
      if self.frontRightWheelSpeed is None:
        self.frontRightWheelSpeed = 0.
      if self.rearLeftWheelSpeed is None:
        self.rearLeftWheelSpeed = 0.
      if self.rearRightWheelSpeed is None:
        self.rearRightWheelSpeed = 0.
      if self.steerAngle is None:
        self.steerAngle = 0.
      if self.steerAngleRate is None:
        self.steerAngleRate = 0.
      if self.frontLeftTirePressure is None:
        self.frontLeftTirePressure = 0.
      if self.frontRightTirePressure is None:
        self.frontRightTirePressure = 0.
      if self.rearLeftTirePressure is None:
        self.rearLeftTirePressure = 0.
      if self.rearRightTirePressure is None:
        self.rearRightTirePressure = 0.
    else:
      self.header = std_msgs.msg.Header()
      self.vehicleSpeed = 0.
      self.yawRate = 0.
      self.frontLeftWheelSpeed = 0.
      self.frontRightWheelSpeed = 0.
      self.rearLeftWheelSpeed = 0.
      self.rearRightWheelSpeed = 0.
      self.steerAngle = 0.
      self.steerAngleRate = 0.
      self.frontLeftTirePressure = 0.
      self.frontRightTirePressure = 0.
      self.rearLeftTirePressure = 0.
      self.rearRightTirePressure = 0.

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
      buff.write(_get_struct_12f().pack(_x.vehicleSpeed, _x.yawRate, _x.frontLeftWheelSpeed, _x.frontRightWheelSpeed, _x.rearLeftWheelSpeed, _x.rearRightWheelSpeed, _x.steerAngle, _x.steerAngleRate, _x.frontLeftTirePressure, _x.frontRightTirePressure, _x.rearLeftTirePressure, _x.rearRightTirePressure))
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
      end += 48
      (_x.vehicleSpeed, _x.yawRate, _x.frontLeftWheelSpeed, _x.frontRightWheelSpeed, _x.rearLeftWheelSpeed, _x.rearRightWheelSpeed, _x.steerAngle, _x.steerAngleRate, _x.frontLeftTirePressure, _x.frontRightTirePressure, _x.rearLeftTirePressure, _x.rearRightTirePressure,) = _get_struct_12f().unpack(str[start:end])
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
      buff.write(_get_struct_12f().pack(_x.vehicleSpeed, _x.yawRate, _x.frontLeftWheelSpeed, _x.frontRightWheelSpeed, _x.rearLeftWheelSpeed, _x.rearRightWheelSpeed, _x.steerAngle, _x.steerAngleRate, _x.frontLeftTirePressure, _x.frontRightTirePressure, _x.rearLeftTirePressure, _x.rearRightTirePressure))
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
      end += 48
      (_x.vehicleSpeed, _x.yawRate, _x.frontLeftWheelSpeed, _x.frontRightWheelSpeed, _x.rearLeftWheelSpeed, _x.rearRightWheelSpeed, _x.steerAngle, _x.steerAngleRate, _x.frontLeftTirePressure, _x.frontRightTirePressure, _x.rearLeftTirePressure, _x.rearRightTirePressure,) = _get_struct_12f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_12f = None
def _get_struct_12f():
    global _struct_12f
    if _struct_12f is None:
        _struct_12f = struct.Struct("<12f")
    return _struct_12f
