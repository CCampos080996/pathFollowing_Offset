// Generated by gencpp from file ros_sensor_msgs/UtcIonosphere.msg
// DO NOT EDIT!


#ifndef ROS_SENSOR_MSGS_MESSAGE_UTCIONOSPHERE_H
#define ROS_SENSOR_MSGS_MESSAGE_UTCIONOSPHERE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ros_sensor_msgs
{
template <class ContainerAllocator>
struct UtcIonosphere_
{
  typedef UtcIonosphere_<ContainerAllocator> Type;

  UtcIonosphere_()
    : subframe()  {
      subframe.assign(0);
  }
  UtcIonosphere_(const ContainerAllocator& _alloc)
    : subframe()  {
  (void)_alloc;
      subframe.assign(0);
  }



   typedef boost::array<uint8_t, 30>  _subframe_type;
  _subframe_type subframe;





  typedef boost::shared_ptr< ::ros_sensor_msgs::UtcIonosphere_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_sensor_msgs::UtcIonosphere_<ContainerAllocator> const> ConstPtr;

}; // struct UtcIonosphere_

typedef ::ros_sensor_msgs::UtcIonosphere_<std::allocator<void> > UtcIonosphere;

typedef boost::shared_ptr< ::ros_sensor_msgs::UtcIonosphere > UtcIonospherePtr;
typedef boost::shared_ptr< ::ros_sensor_msgs::UtcIonosphere const> UtcIonosphereConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_sensor_msgs::UtcIonosphere_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_sensor_msgs::UtcIonosphere_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace ros_sensor_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'ros_sensor_msgs': ['/home/christian/lateralOffset/src/ros-sensor-msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::ros_sensor_msgs::UtcIonosphere_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_sensor_msgs::UtcIonosphere_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_sensor_msgs::UtcIonosphere_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_sensor_msgs::UtcIonosphere_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_sensor_msgs::UtcIonosphere_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_sensor_msgs::UtcIonosphere_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_sensor_msgs::UtcIonosphere_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c92739dcbce54dec72a584c1ec4e54c7";
  }

  static const char* value(const ::ros_sensor_msgs::UtcIonosphere_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc92739dcbce54decULL;
  static const uint64_t static_value2 = 0x72a584c1ec4e54c7ULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_sensor_msgs::UtcIonosphere_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_sensor_msgs/UtcIonosphere";
  }

  static const char* value(const ::ros_sensor_msgs::UtcIonosphere_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_sensor_msgs::UtcIonosphere_<ContainerAllocator> >
{
  static const char* value()
  {
    return "## Subframe of UTC and Ionospheric Parameters\n\
\n\
uint8[30]   subframe\n\
\n\
\n\
\n\
";
  }

  static const char* value(const ::ros_sensor_msgs::UtcIonosphere_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_sensor_msgs::UtcIonosphere_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.subframe);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct UtcIonosphere_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_sensor_msgs::UtcIonosphere_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ros_sensor_msgs::UtcIonosphere_<ContainerAllocator>& v)
  {
    s << indent << "subframe[]" << std::endl;
    for (size_t i = 0; i < v.subframe.size(); ++i)
    {
      s << indent << "  subframe[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.subframe[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROS_SENSOR_MSGS_MESSAGE_UTCIONOSPHERE_H
