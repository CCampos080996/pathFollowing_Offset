// Generated by gencpp from file ros_sensor_msgs/PrnDifference.msg
// DO NOT EDIT!


#ifndef ROS_SENSOR_MSGS_MESSAGE_PRNDIFFERENCE_H
#define ROS_SENSOR_MSGS_MESSAGE_PRNDIFFERENCE_H


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
struct PrnDifference_
{
  typedef PrnDifference_<ContainerAllocator> Type;

  PrnDifference_()
    : prn(0)
    , difference(0.0)  {
    }
  PrnDifference_(const ContainerAllocator& _alloc)
    : prn(0)
    , difference(0.0)  {
  (void)_alloc;
    }



   typedef uint32_t _prn_type;
  _prn_type prn;

   typedef double _difference_type;
  _difference_type difference;





  typedef boost::shared_ptr< ::ros_sensor_msgs::PrnDifference_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_sensor_msgs::PrnDifference_<ContainerAllocator> const> ConstPtr;

}; // struct PrnDifference_

typedef ::ros_sensor_msgs::PrnDifference_<std::allocator<void> > PrnDifference;

typedef boost::shared_ptr< ::ros_sensor_msgs::PrnDifference > PrnDifferencePtr;
typedef boost::shared_ptr< ::ros_sensor_msgs::PrnDifference const> PrnDifferenceConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_sensor_msgs::PrnDifference_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_sensor_msgs::PrnDifference_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::ros_sensor_msgs::PrnDifference_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_sensor_msgs::PrnDifference_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_sensor_msgs::PrnDifference_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_sensor_msgs::PrnDifference_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_sensor_msgs::PrnDifference_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_sensor_msgs::PrnDifference_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_sensor_msgs::PrnDifference_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c858497f90c1f6e07daed8d782b2a3cd";
  }

  static const char* value(const ::ros_sensor_msgs::PrnDifference_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc858497f90c1f6e0ULL;
  static const uint64_t static_value2 = 0x7daed8d782b2a3cdULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_sensor_msgs::PrnDifference_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_sensor_msgs/PrnDifference";
  }

  static const char* value(const ::ros_sensor_msgs::PrnDifference_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_sensor_msgs::PrnDifference_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint32   prn\n\
float64  difference\n\
";
  }

  static const char* value(const ::ros_sensor_msgs::PrnDifference_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_sensor_msgs::PrnDifference_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.prn);
      stream.next(m.difference);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PrnDifference_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_sensor_msgs::PrnDifference_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ros_sensor_msgs::PrnDifference_<ContainerAllocator>& v)
  {
    s << indent << "prn: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.prn);
    s << indent << "difference: ";
    Printer<double>::stream(s, indent + "  ", v.difference);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROS_SENSOR_MSGS_MESSAGE_PRNDIFFERENCE_H
