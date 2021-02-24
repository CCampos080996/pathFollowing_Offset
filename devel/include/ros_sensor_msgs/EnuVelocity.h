// Generated by gencpp from file ros_sensor_msgs/EnuVelocity.msg
// DO NOT EDIT!


#ifndef ROS_SENSOR_MSGS_MESSAGE_ENUVELOCITY_H
#define ROS_SENSOR_MSGS_MESSAGE_ENUVELOCITY_H


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
struct EnuVelocity_
{
  typedef EnuVelocity_<ContainerAllocator> Type;

  EnuVelocity_()
    : eastVelocity(0.0)
    , northVelocity(0.0)
    , upVelocity(0.0)
    , horizontalAccuracy(0.0)
    , verticalAccuracy(0.0)  {
    }
  EnuVelocity_(const ContainerAllocator& _alloc)
    : eastVelocity(0.0)
    , northVelocity(0.0)
    , upVelocity(0.0)
    , horizontalAccuracy(0.0)
    , verticalAccuracy(0.0)  {
  (void)_alloc;
    }



   typedef double _eastVelocity_type;
  _eastVelocity_type eastVelocity;

   typedef double _northVelocity_type;
  _northVelocity_type northVelocity;

   typedef double _upVelocity_type;
  _upVelocity_type upVelocity;

   typedef float _horizontalAccuracy_type;
  _horizontalAccuracy_type horizontalAccuracy;

   typedef float _verticalAccuracy_type;
  _verticalAccuracy_type verticalAccuracy;





  typedef boost::shared_ptr< ::ros_sensor_msgs::EnuVelocity_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_sensor_msgs::EnuVelocity_<ContainerAllocator> const> ConstPtr;

}; // struct EnuVelocity_

typedef ::ros_sensor_msgs::EnuVelocity_<std::allocator<void> > EnuVelocity;

typedef boost::shared_ptr< ::ros_sensor_msgs::EnuVelocity > EnuVelocityPtr;
typedef boost::shared_ptr< ::ros_sensor_msgs::EnuVelocity const> EnuVelocityConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_sensor_msgs::EnuVelocity_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_sensor_msgs::EnuVelocity_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::ros_sensor_msgs::EnuVelocity_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_sensor_msgs::EnuVelocity_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_sensor_msgs::EnuVelocity_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_sensor_msgs::EnuVelocity_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_sensor_msgs::EnuVelocity_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_sensor_msgs::EnuVelocity_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_sensor_msgs::EnuVelocity_<ContainerAllocator> >
{
  static const char* value()
  {
    return "35b89ee4c05fa6d6175468cce6ddc8fd";
  }

  static const char* value(const ::ros_sensor_msgs::EnuVelocity_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x35b89ee4c05fa6d6ULL;
  static const uint64_t static_value2 = 0x175468cce6ddc8fdULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_sensor_msgs::EnuVelocity_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_sensor_msgs/EnuVelocity";
  }

  static const char* value(const ::ros_sensor_msgs::EnuVelocity_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_sensor_msgs::EnuVelocity_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64					 eastVelocity\n\
float64                  northVelocity\n\
float64                  upVelocity\n\
float32                  horizontalAccuracy\n\
float32                  verticalAccuracy    \n\
";
  }

  static const char* value(const ::ros_sensor_msgs::EnuVelocity_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_sensor_msgs::EnuVelocity_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.eastVelocity);
      stream.next(m.northVelocity);
      stream.next(m.upVelocity);
      stream.next(m.horizontalAccuracy);
      stream.next(m.verticalAccuracy);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct EnuVelocity_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_sensor_msgs::EnuVelocity_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ros_sensor_msgs::EnuVelocity_<ContainerAllocator>& v)
  {
    s << indent << "eastVelocity: ";
    Printer<double>::stream(s, indent + "  ", v.eastVelocity);
    s << indent << "northVelocity: ";
    Printer<double>::stream(s, indent + "  ", v.northVelocity);
    s << indent << "upVelocity: ";
    Printer<double>::stream(s, indent + "  ", v.upVelocity);
    s << indent << "horizontalAccuracy: ";
    Printer<float>::stream(s, indent + "  ", v.horizontalAccuracy);
    s << indent << "verticalAccuracy: ";
    Printer<float>::stream(s, indent + "  ", v.verticalAccuracy);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROS_SENSOR_MSGS_MESSAGE_ENUVELOCITY_H
