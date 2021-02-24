// Generated by gencpp from file ros_sensor_msgs/RfRangesStamped.msg
// DO NOT EDIT!


#ifndef ROS_SENSOR_MSGS_MESSAGE_RFRANGESSTAMPED_H
#define ROS_SENSOR_MSGS_MESSAGE_RFRANGESSTAMPED_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <ros_sensor_msgs/RfRange.h>

namespace ros_sensor_msgs
{
template <class ContainerAllocator>
struct RfRangesStamped_
{
  typedef RfRangesStamped_<ContainerAllocator> Type;

  RfRangesStamped_()
    : header()
    , ranges()  {
    }
  RfRangesStamped_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , ranges(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::ros_sensor_msgs::RfRange_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::ros_sensor_msgs::RfRange_<ContainerAllocator> >::other >  _ranges_type;
  _ranges_type ranges;





  typedef boost::shared_ptr< ::ros_sensor_msgs::RfRangesStamped_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_sensor_msgs::RfRangesStamped_<ContainerAllocator> const> ConstPtr;

}; // struct RfRangesStamped_

typedef ::ros_sensor_msgs::RfRangesStamped_<std::allocator<void> > RfRangesStamped;

typedef boost::shared_ptr< ::ros_sensor_msgs::RfRangesStamped > RfRangesStampedPtr;
typedef boost::shared_ptr< ::ros_sensor_msgs::RfRangesStamped const> RfRangesStampedConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_sensor_msgs::RfRangesStamped_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_sensor_msgs::RfRangesStamped_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::ros_sensor_msgs::RfRangesStamped_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_sensor_msgs::RfRangesStamped_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_sensor_msgs::RfRangesStamped_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_sensor_msgs::RfRangesStamped_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_sensor_msgs::RfRangesStamped_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_sensor_msgs::RfRangesStamped_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_sensor_msgs::RfRangesStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1875fd89c955438fb4427088e543c91c";
  }

  static const char* value(const ::ros_sensor_msgs::RfRangesStamped_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1875fd89c955438fULL;
  static const uint64_t static_value2 = 0xb4427088e543c91cULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_sensor_msgs::RfRangesStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_sensor_msgs/RfRangesStamped";
  }

  static const char* value(const ::ros_sensor_msgs::RfRangesStamped_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_sensor_msgs::RfRangesStamped_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Range to specified object\n\
std_msgs/Header   header\n\
RfRange[]         ranges\n\
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
MSG: ros_sensor_msgs/RfRange\n\
# Range to specified object\n\
float64 range\n\
float64 rangeRate\n\
float64 rangeVariance\n\
float64 rangeRateVariance\n\
uint32  timestamp\n\
uint32  sourceId\n\
uint32  destId\n\
uint16  rssi\n\
uint16  quality\n\
";
  }

  static const char* value(const ::ros_sensor_msgs::RfRangesStamped_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_sensor_msgs::RfRangesStamped_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.ranges);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RfRangesStamped_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_sensor_msgs::RfRangesStamped_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ros_sensor_msgs::RfRangesStamped_<ContainerAllocator>& v)
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
      Printer< ::ros_sensor_msgs::RfRange_<ContainerAllocator> >::stream(s, indent + "    ", v.ranges[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROS_SENSOR_MSGS_MESSAGE_RFRANGESSTAMPED_H
