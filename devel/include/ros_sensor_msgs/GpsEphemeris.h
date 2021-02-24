// Generated by gencpp from file ros_sensor_msgs/GpsEphemeris.msg
// DO NOT EDIT!


#ifndef ROS_SENSOR_MSGS_MESSAGE_GPSEPHEMERIS_H
#define ROS_SENSOR_MSGS_MESSAGE_GPSEPHEMERIS_H


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
struct GpsEphemeris_
{
  typedef GpsEphemeris_<ContainerAllocator> Type;

  GpsEphemeris_()
    : prn(0)
    , subframe1()
    , subframe2()
    , subframe3()  {
      subframe1.assign(0);

      subframe2.assign(0);

      subframe3.assign(0);
  }
  GpsEphemeris_(const ContainerAllocator& _alloc)
    : prn(0)
    , subframe1()
    , subframe2()
    , subframe3()  {
  (void)_alloc;
      subframe1.assign(0);

      subframe2.assign(0);

      subframe3.assign(0);
  }



   typedef uint16_t _prn_type;
  _prn_type prn;

   typedef boost::array<uint8_t, 30>  _subframe1_type;
  _subframe1_type subframe1;

   typedef boost::array<uint8_t, 30>  _subframe2_type;
  _subframe2_type subframe2;

   typedef boost::array<uint8_t, 30>  _subframe3_type;
  _subframe3_type subframe3;





  typedef boost::shared_ptr< ::ros_sensor_msgs::GpsEphemeris_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_sensor_msgs::GpsEphemeris_<ContainerAllocator> const> ConstPtr;

}; // struct GpsEphemeris_

typedef ::ros_sensor_msgs::GpsEphemeris_<std::allocator<void> > GpsEphemeris;

typedef boost::shared_ptr< ::ros_sensor_msgs::GpsEphemeris > GpsEphemerisPtr;
typedef boost::shared_ptr< ::ros_sensor_msgs::GpsEphemeris const> GpsEphemerisConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_sensor_msgs::GpsEphemeris_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_sensor_msgs::GpsEphemeris_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::ros_sensor_msgs::GpsEphemeris_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_sensor_msgs::GpsEphemeris_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_sensor_msgs::GpsEphemeris_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_sensor_msgs::GpsEphemeris_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_sensor_msgs::GpsEphemeris_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_sensor_msgs::GpsEphemeris_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_sensor_msgs::GpsEphemeris_<ContainerAllocator> >
{
  static const char* value()
  {
    return "572e67f241916f12c8e2d567d3205ad7";
  }

  static const char* value(const ::ros_sensor_msgs::GpsEphemeris_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x572e67f241916f12ULL;
  static const uint64_t static_value2 = 0xc8e2d567d3205ad7ULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_sensor_msgs::GpsEphemeris_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_sensor_msgs/GpsEphemeris";
  }

  static const char* value(const ::ros_sensor_msgs::GpsEphemeris_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_sensor_msgs::GpsEphemeris_<ContainerAllocator> >
{
  static const char* value()
  {
    return "## Gps Ephemeris subframes for one satellite\n\
\n\
uint16      prn\n\
uint8[30]   subframe1\n\
uint8[30]   subframe2\n\
uint8[30]   subframe3\n\
";
  }

  static const char* value(const ::ros_sensor_msgs::GpsEphemeris_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_sensor_msgs::GpsEphemeris_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.prn);
      stream.next(m.subframe1);
      stream.next(m.subframe2);
      stream.next(m.subframe3);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GpsEphemeris_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_sensor_msgs::GpsEphemeris_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ros_sensor_msgs::GpsEphemeris_<ContainerAllocator>& v)
  {
    s << indent << "prn: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.prn);
    s << indent << "subframe1[]" << std::endl;
    for (size_t i = 0; i < v.subframe1.size(); ++i)
    {
      s << indent << "  subframe1[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.subframe1[i]);
    }
    s << indent << "subframe2[]" << std::endl;
    for (size_t i = 0; i < v.subframe2.size(); ++i)
    {
      s << indent << "  subframe2[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.subframe2[i]);
    }
    s << indent << "subframe3[]" << std::endl;
    for (size_t i = 0; i < v.subframe3.size(); ++i)
    {
      s << indent << "  subframe3[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.subframe3[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROS_SENSOR_MSGS_MESSAGE_GPSEPHEMERIS_H
