// Generated by gencpp from file ros_sensor_msgs/AssuranceCheckValue.msg
// DO NOT EDIT!


#ifndef ROS_SENSOR_MSGS_MESSAGE_ASSURANCECHECKVALUE_H
#define ROS_SENSOR_MSGS_MESSAGE_ASSURANCECHECKVALUE_H


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
struct AssuranceCheckValue_
{
  typedef AssuranceCheckValue_<ContainerAllocator> Type;

  AssuranceCheckValue_()
    : prn(0)
    , checkVal(0)  {
    }
  AssuranceCheckValue_(const ContainerAllocator& _alloc)
    : prn(0)
    , checkVal(0)  {
  (void)_alloc;
    }



   typedef uint32_t _prn_type;
  _prn_type prn;

   typedef uint32_t _checkVal_type;
  _checkVal_type checkVal;





  typedef boost::shared_ptr< ::ros_sensor_msgs::AssuranceCheckValue_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_sensor_msgs::AssuranceCheckValue_<ContainerAllocator> const> ConstPtr;

}; // struct AssuranceCheckValue_

typedef ::ros_sensor_msgs::AssuranceCheckValue_<std::allocator<void> > AssuranceCheckValue;

typedef boost::shared_ptr< ::ros_sensor_msgs::AssuranceCheckValue > AssuranceCheckValuePtr;
typedef boost::shared_ptr< ::ros_sensor_msgs::AssuranceCheckValue const> AssuranceCheckValueConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_sensor_msgs::AssuranceCheckValue_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_sensor_msgs::AssuranceCheckValue_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::ros_sensor_msgs::AssuranceCheckValue_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_sensor_msgs::AssuranceCheckValue_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_sensor_msgs::AssuranceCheckValue_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_sensor_msgs::AssuranceCheckValue_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_sensor_msgs::AssuranceCheckValue_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_sensor_msgs::AssuranceCheckValue_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_sensor_msgs::AssuranceCheckValue_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a70b393a62ceefc4ae65dcd785400bfb";
  }

  static const char* value(const ::ros_sensor_msgs::AssuranceCheckValue_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa70b393a62ceefc4ULL;
  static const uint64_t static_value2 = 0xae65dcd785400bfbULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_sensor_msgs::AssuranceCheckValue_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_sensor_msgs/AssuranceCheckValue";
  }

  static const char* value(const ::ros_sensor_msgs::AssuranceCheckValue_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_sensor_msgs::AssuranceCheckValue_<ContainerAllocator> >
{
  static const char* value()
  {
    return "## An assurance check value for a given prn\n\
\n\
uint32    prn\n\
uint32    checkVal\n\
";
  }

  static const char* value(const ::ros_sensor_msgs::AssuranceCheckValue_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_sensor_msgs::AssuranceCheckValue_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.prn);
      stream.next(m.checkVal);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct AssuranceCheckValue_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_sensor_msgs::AssuranceCheckValue_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ros_sensor_msgs::AssuranceCheckValue_<ContainerAllocator>& v)
  {
    s << indent << "prn: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.prn);
    s << indent << "checkVal: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.checkVal);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROS_SENSOR_MSGS_MESSAGE_ASSURANCECHECKVALUE_H
