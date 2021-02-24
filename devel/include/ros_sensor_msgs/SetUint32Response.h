// Generated by gencpp from file ros_sensor_msgs/SetUint32Response.msg
// DO NOT EDIT!


#ifndef ROS_SENSOR_MSGS_MESSAGE_SETUINT32RESPONSE_H
#define ROS_SENSOR_MSGS_MESSAGE_SETUINT32RESPONSE_H


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
struct SetUint32Response_
{
  typedef SetUint32Response_<ContainerAllocator> Type;

  SetUint32Response_()
    : success(false)
    , message()  {
    }
  SetUint32Response_(const ContainerAllocator& _alloc)
    : success(false)
    , message(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _message_type;
  _message_type message;





  typedef boost::shared_ptr< ::ros_sensor_msgs::SetUint32Response_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_sensor_msgs::SetUint32Response_<ContainerAllocator> const> ConstPtr;

}; // struct SetUint32Response_

typedef ::ros_sensor_msgs::SetUint32Response_<std::allocator<void> > SetUint32Response;

typedef boost::shared_ptr< ::ros_sensor_msgs::SetUint32Response > SetUint32ResponsePtr;
typedef boost::shared_ptr< ::ros_sensor_msgs::SetUint32Response const> SetUint32ResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_sensor_msgs::SetUint32Response_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_sensor_msgs::SetUint32Response_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace ros_sensor_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'ros_sensor_msgs': ['/home/christian/lateralOffset/src/ros-sensor-msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::ros_sensor_msgs::SetUint32Response_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_sensor_msgs::SetUint32Response_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_sensor_msgs::SetUint32Response_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_sensor_msgs::SetUint32Response_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_sensor_msgs::SetUint32Response_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_sensor_msgs::SetUint32Response_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_sensor_msgs::SetUint32Response_<ContainerAllocator> >
{
  static const char* value()
  {
    return "937c9679a518e3a18d831e57125ea522";
  }

  static const char* value(const ::ros_sensor_msgs::SetUint32Response_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x937c9679a518e3a1ULL;
  static const uint64_t static_value2 = 0x8d831e57125ea522ULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_sensor_msgs::SetUint32Response_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_sensor_msgs/SetUint32Response";
  }

  static const char* value(const ::ros_sensor_msgs::SetUint32Response_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_sensor_msgs::SetUint32Response_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool success\n\
string message\n\
";
  }

  static const char* value(const ::ros_sensor_msgs::SetUint32Response_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_sensor_msgs::SetUint32Response_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
      stream.next(m.message);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetUint32Response_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_sensor_msgs::SetUint32Response_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ros_sensor_msgs::SetUint32Response_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
    s << indent << "message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.message);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROS_SENSOR_MSGS_MESSAGE_SETUINT32RESPONSE_H
