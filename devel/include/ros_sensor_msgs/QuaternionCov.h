// Generated by gencpp from file ros_sensor_msgs/QuaternionCov.msg
// DO NOT EDIT!


#ifndef ROS_SENSOR_MSGS_MESSAGE_QUATERNIONCOV_H
#define ROS_SENSOR_MSGS_MESSAGE_QUATERNIONCOV_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Quaternion.h>

namespace ros_sensor_msgs
{
template <class ContainerAllocator>
struct QuaternionCov_
{
  typedef QuaternionCov_<ContainerAllocator> Type;

  QuaternionCov_()
    : value()
    , covariance()  {
      covariance.assign(0.0);
  }
  QuaternionCov_(const ContainerAllocator& _alloc)
    : value(_alloc)
    , covariance()  {
  (void)_alloc;
      covariance.assign(0.0);
  }



   typedef  ::geometry_msgs::Quaternion_<ContainerAllocator>  _value_type;
  _value_type value;

   typedef boost::array<double, 9>  _covariance_type;
  _covariance_type covariance;





  typedef boost::shared_ptr< ::ros_sensor_msgs::QuaternionCov_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_sensor_msgs::QuaternionCov_<ContainerAllocator> const> ConstPtr;

}; // struct QuaternionCov_

typedef ::ros_sensor_msgs::QuaternionCov_<std::allocator<void> > QuaternionCov;

typedef boost::shared_ptr< ::ros_sensor_msgs::QuaternionCov > QuaternionCovPtr;
typedef boost::shared_ptr< ::ros_sensor_msgs::QuaternionCov const> QuaternionCovConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_sensor_msgs::QuaternionCov_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_sensor_msgs::QuaternionCov_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::ros_sensor_msgs::QuaternionCov_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_sensor_msgs::QuaternionCov_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_sensor_msgs::QuaternionCov_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_sensor_msgs::QuaternionCov_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_sensor_msgs::QuaternionCov_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_sensor_msgs::QuaternionCov_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_sensor_msgs::QuaternionCov_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3b94d7700299a5d383fc6e27f12bd18b";
  }

  static const char* value(const ::ros_sensor_msgs::QuaternionCov_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3b94d7700299a5d3ULL;
  static const uint64_t static_value2 = 0x83fc6e27f12bd18bULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_sensor_msgs::QuaternionCov_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_sensor_msgs/QuaternionCov";
  }

  static const char* value(const ::ros_sensor_msgs::QuaternionCov_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_sensor_msgs::QuaternionCov_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/Quaternion 	value\n\
float64[9] 				 	covariance 	# rad^2\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
";
  }

  static const char* value(const ::ros_sensor_msgs::QuaternionCov_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_sensor_msgs::QuaternionCov_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.value);
      stream.next(m.covariance);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct QuaternionCov_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_sensor_msgs::QuaternionCov_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ros_sensor_msgs::QuaternionCov_<ContainerAllocator>& v)
  {
    s << indent << "value: ";
    s << std::endl;
    Printer< ::geometry_msgs::Quaternion_<ContainerAllocator> >::stream(s, indent + "  ", v.value);
    s << indent << "covariance[]" << std::endl;
    for (size_t i = 0; i < v.covariance.size(); ++i)
    {
      s << indent << "  covariance[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.covariance[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROS_SENSOR_MSGS_MESSAGE_QUATERNIONCOV_H
