// Generated by gencpp from file ros_sensor_msgs/Ranges.msg
// DO NOT EDIT!


#ifndef ROS_SENSOR_MSGS_MESSAGE_RANGES_H
#define ROS_SENSOR_MSGS_MESSAGE_RANGES_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <ros_sensor_msgs/Range.h>

namespace ros_sensor_msgs
{
template <class ContainerAllocator>
struct Ranges_
{
  typedef Ranges_<ContainerAllocator> Type;

  Ranges_()
    : header()
    , ranges()  {
    }
  Ranges_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , ranges(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::ros_sensor_msgs::Range_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::ros_sensor_msgs::Range_<ContainerAllocator> >::other >  _ranges_type;
  _ranges_type ranges;





  typedef boost::shared_ptr< ::ros_sensor_msgs::Ranges_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_sensor_msgs::Ranges_<ContainerAllocator> const> ConstPtr;

}; // struct Ranges_

typedef ::ros_sensor_msgs::Ranges_<std::allocator<void> > Ranges;

typedef boost::shared_ptr< ::ros_sensor_msgs::Ranges > RangesPtr;
typedef boost::shared_ptr< ::ros_sensor_msgs::Ranges const> RangesConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_sensor_msgs::Ranges_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_sensor_msgs::Ranges_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::ros_sensor_msgs::Ranges_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_sensor_msgs::Ranges_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_sensor_msgs::Ranges_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_sensor_msgs::Ranges_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_sensor_msgs::Ranges_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_sensor_msgs::Ranges_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_sensor_msgs::Ranges_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3beec018182d82a34d6872cbae28a451";
  }

  static const char* value(const ::ros_sensor_msgs::Ranges_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3beec018182d82a3ULL;
  static const uint64_t static_value2 = 0x4d6872cbae28a451ULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_sensor_msgs::Ranges_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_sensor_msgs/Ranges";
  }

  static const char* value(const ::ros_sensor_msgs::Ranges_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_sensor_msgs::Ranges_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Generic ranges message from sensor to number of other objects \n\
\n\
std_msgs/Header header\n\
Range[]         ranges\n\
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
MSG: ros_sensor_msgs/Range\n\
# Range to specified object\n\
string  end_point_id\n\
float64 range\n\
";
  }

  static const char* value(const ::ros_sensor_msgs::Ranges_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_sensor_msgs::Ranges_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.ranges);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Ranges_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_sensor_msgs::Ranges_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ros_sensor_msgs::Ranges_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "ranges[]" << std::endl;
    for (size_t i = 0; i < v.ranges.size(); ++i)
    {
      s << indent << "  ranges[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::ros_sensor_msgs::Range_<ContainerAllocator> >::stream(s, indent + "    ", v.ranges[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROS_SENSOR_MSGS_MESSAGE_RANGES_H
