// Generated by gencpp from file ros_sensor_msgs/SvStateTagged.msg
// DO NOT EDIT!


#ifndef ROS_SENSOR_MSGS_MESSAGE_SVSTATETAGGED_H
#define ROS_SENSOR_MSGS_MESSAGE_SVSTATETAGGED_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <ros_sensor_msgs/Tags.h>
#include <ros_sensor_msgs/SvState.h>

namespace ros_sensor_msgs
{
template <class ContainerAllocator>
struct SvStateTagged_
{
  typedef SvStateTagged_<ContainerAllocator> Type;

  SvStateTagged_()
    : header()
    , tags()
    , svState()  {
    }
  SvStateTagged_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , tags(_alloc)
    , svState(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::ros_sensor_msgs::Tags_<ContainerAllocator>  _tags_type;
  _tags_type tags;

   typedef  ::ros_sensor_msgs::SvState_<ContainerAllocator>  _svState_type;
  _svState_type svState;





  typedef boost::shared_ptr< ::ros_sensor_msgs::SvStateTagged_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_sensor_msgs::SvStateTagged_<ContainerAllocator> const> ConstPtr;

}; // struct SvStateTagged_

typedef ::ros_sensor_msgs::SvStateTagged_<std::allocator<void> > SvStateTagged;

typedef boost::shared_ptr< ::ros_sensor_msgs::SvStateTagged > SvStateTaggedPtr;
typedef boost::shared_ptr< ::ros_sensor_msgs::SvStateTagged const> SvStateTaggedConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_sensor_msgs::SvStateTagged_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_sensor_msgs::SvStateTagged_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace ros_sensor_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'ros_sensor_msgs': ['/home/christian/lateralOffset/src/ros-sensor-msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::ros_sensor_msgs::SvStateTagged_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_sensor_msgs::SvStateTagged_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_sensor_msgs::SvStateTagged_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_sensor_msgs::SvStateTagged_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_sensor_msgs::SvStateTagged_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_sensor_msgs::SvStateTagged_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_sensor_msgs::SvStateTagged_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bb3a8aaa166c2d3db9dfb5473e2b70df";
  }

  static const char* value(const ::ros_sensor_msgs::SvStateTagged_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbb3a8aaa166c2d3dULL;
  static const uint64_t static_value2 = 0xb9dfb5473e2b70dfULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_sensor_msgs::SvStateTagged_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_sensor_msgs/SvStateTagged";
  }

  static const char* value(const ::ros_sensor_msgs::SvStateTagged_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_sensor_msgs::SvStateTagged_<ContainerAllocator> >
{
  static const char* value()
  {
    return "## Satellite vehicle state with tags and header\n\
\n\
std_msgs/Header   header\n\
Tags              tags\n\
SvState           svState\n\
\n\
\n\
\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: ros_sensor_msgs/Tags\n\
## Header structure for user defined data messages\n\
\n\
GpsTime        gpsTime\n\
SensorType     sensor\n\
ReceiverType   receiver   # String to specify GNSS receiver type\n\
KeyStatus      key\n\
string         sensorName\n\
SourceType     source\n\
bool           dataValid\n\
AssuranceLevel assuranceLevel\n\
================================================================================\n\
MSG: ros_sensor_msgs/GpsTime\n\
## GPS time structure\n\
uint32          gps_week        # Full GPS week from (0:0:00 Jan 06, 1980)\n\
float64         gps_seconds     # GPS seconds into week [sec]\n\
================================================================================\n\
MSG: ros_sensor_msgs/SensorType\n\
## Sensor Type\n\
\n\
uint8 SensorTypeUnknown = 0\n\
uint8 SensorTypeGps     = 1\n\
uint8 SensorTypeGlonass = 2\n\
uint8 SensorTypeGalileo = 4\n\
uint8 SensorTypeImu     = 8\n\
uint8 SensorRfRange     = 16\n\
uint8 SensorTypeVision  = 32\n\
\n\
uint8 type\n\
================================================================================\n\
MSG: ros_sensor_msgs/ReceiverType\n\
uint8 RECEIVER_TYPE_UBLOX = 0\n\
uint8 RECEIVER_TYPE_NOVATEL = 1\n\
uint8 RECEIVER_TYPE_DAGR = 2\n\
uint8 RECEIVER_TYPE_MICROGRAM = 3\n\
uint8 RECEIVER_TYPE_TRUTRAK = 4\n\
uint8 RECEIVER_TYPE_GSSIP = 5\n\
uint8 RECEIVER_TYPE_OTHER = 14\n\
uint8 RECEIVER_TYPE_UNKNOWN = 15\n\
uint8 type\n\
================================================================================\n\
MSG: ros_sensor_msgs/KeyStatus\n\
## KeyStatus\n\
\n\
uint8 UnauthorizedNotKeyed = 0\n\
uint8 AuthorizedNotKeyed   = 1\n\
uint8 Keyed                = 2\n\
\n\
uint8 status\n\
================================================================================\n\
MSG: ros_sensor_msgs/SourceType\n\
## Source of data\n\
\n\
uint8 SourceTypeUnknown  = 0\n\
uint8 SourceTypeReceiver = 1\n\
uint8 SourceTypeNetwork  = 2\n\
uint8 SourceTypeRinex    = 3\n\
uint8 SourceTypeAny      = 99\n\
\n\
uint8 type\n\
================================================================================\n\
MSG: ros_sensor_msgs/AssuranceLevel\n\
uint8  Normal   = 0\n\
uint8  Unknown  = 1\n\
uint8  Warning  = 2\n\
uint8  Attack   = 3\n\
\n\
uint8 level\n\
================================================================================\n\
MSG: ros_sensor_msgs/SvState\n\
## Satellite vehicle state information\n\
\n\
uint16                prn                 # GPS [1-32], GLONASS may be negative\n\
geometry_msgs/Point   position            # Satellite position in ECEF [m]\n\
geometry_msgs/Twist   velocity            # Satellite velocity in ECEF [m/s]\n\
float64               svClockCorrection   # Satellite clock correction [m]\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Twist\n\
# This expresses velocity in free space broken into its linear and angular parts.\n\
Vector3  linear\n\
Vector3  angular\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Vector3\n\
# This represents a vector in free space. \n\
# It is only meant to represent a direction. Therefore, it does not\n\
# make sense to apply a translation to it (e.g., when applying a \n\
# generic rigid transformation to a Vector3, tf2 will only apply the\n\
# rotation). If you want your data to be translatable too, use the\n\
# geometry_msgs/Point message instead.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::ros_sensor_msgs::SvStateTagged_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_sensor_msgs::SvStateTagged_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.tags);
      stream.next(m.svState);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SvStateTagged_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_sensor_msgs::SvStateTagged_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ros_sensor_msgs::SvStateTagged_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "tags: ";
    s << std::endl;
    Printer< ::ros_sensor_msgs::Tags_<ContainerAllocator> >::stream(s, indent + "  ", v.tags);
    s << indent << "svState: ";
    s << std::endl;
    Printer< ::ros_sensor_msgs::SvState_<ContainerAllocator> >::stream(s, indent + "  ", v.svState);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROS_SENSOR_MSGS_MESSAGE_SVSTATETAGGED_H
