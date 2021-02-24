// Generated by gencpp from file ros_sensor_msgs/CmdGpsAssist.msg
// DO NOT EDIT!


#ifndef ROS_SENSOR_MSGS_MESSAGE_CMDGPSASSIST_H
#define ROS_SENSOR_MSGS_MESSAGE_CMDGPSASSIST_H


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
struct CmdGpsAssist_
{
  typedef CmdGpsAssist_<ContainerAllocator> Type;

  CmdGpsAssist_()
    : assist_time(false)
    , assist_position(false)
    , assist_gps_ephemeris(false)
    , assist_gps_almanac(false)
    , assist_gps_utc_iono(false)
    , assist_precise_time(false)  {
    }
  CmdGpsAssist_(const ContainerAllocator& _alloc)
    : assist_time(false)
    , assist_position(false)
    , assist_gps_ephemeris(false)
    , assist_gps_almanac(false)
    , assist_gps_utc_iono(false)
    , assist_precise_time(false)  {
  (void)_alloc;
    }



   typedef uint8_t _assist_time_type;
  _assist_time_type assist_time;

   typedef uint8_t _assist_position_type;
  _assist_position_type assist_position;

   typedef uint8_t _assist_gps_ephemeris_type;
  _assist_gps_ephemeris_type assist_gps_ephemeris;

   typedef uint8_t _assist_gps_almanac_type;
  _assist_gps_almanac_type assist_gps_almanac;

   typedef uint8_t _assist_gps_utc_iono_type;
  _assist_gps_utc_iono_type assist_gps_utc_iono;

   typedef uint8_t _assist_precise_time_type;
  _assist_precise_time_type assist_precise_time;





  typedef boost::shared_ptr< ::ros_sensor_msgs::CmdGpsAssist_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_sensor_msgs::CmdGpsAssist_<ContainerAllocator> const> ConstPtr;

}; // struct CmdGpsAssist_

typedef ::ros_sensor_msgs::CmdGpsAssist_<std::allocator<void> > CmdGpsAssist;

typedef boost::shared_ptr< ::ros_sensor_msgs::CmdGpsAssist > CmdGpsAssistPtr;
typedef boost::shared_ptr< ::ros_sensor_msgs::CmdGpsAssist const> CmdGpsAssistConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_sensor_msgs::CmdGpsAssist_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_sensor_msgs::CmdGpsAssist_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::ros_sensor_msgs::CmdGpsAssist_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_sensor_msgs::CmdGpsAssist_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_sensor_msgs::CmdGpsAssist_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_sensor_msgs::CmdGpsAssist_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_sensor_msgs::CmdGpsAssist_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_sensor_msgs::CmdGpsAssist_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_sensor_msgs::CmdGpsAssist_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9888cfe375cffb0c1d61c05b99896408";
  }

  static const char* value(const ::ros_sensor_msgs::CmdGpsAssist_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9888cfe375cffb0cULL;
  static const uint64_t static_value2 = 0x1d61c05b99896408ULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_sensor_msgs::CmdGpsAssist_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_sensor_msgs/CmdGpsAssist";
  }

  static const char* value(const ::ros_sensor_msgs::CmdGpsAssist_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_sensor_msgs::CmdGpsAssist_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool assist_time\n\
bool assist_position\n\
bool assist_gps_ephemeris\n\
bool assist_gps_almanac\n\
bool assist_gps_utc_iono\n\
bool assist_precise_time\n\
";
  }

  static const char* value(const ::ros_sensor_msgs::CmdGpsAssist_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_sensor_msgs::CmdGpsAssist_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.assist_time);
      stream.next(m.assist_position);
      stream.next(m.assist_gps_ephemeris);
      stream.next(m.assist_gps_almanac);
      stream.next(m.assist_gps_utc_iono);
      stream.next(m.assist_precise_time);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CmdGpsAssist_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_sensor_msgs::CmdGpsAssist_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ros_sensor_msgs::CmdGpsAssist_<ContainerAllocator>& v)
  {
    s << indent << "assist_time: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.assist_time);
    s << indent << "assist_position: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.assist_position);
    s << indent << "assist_gps_ephemeris: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.assist_gps_ephemeris);
    s << indent << "assist_gps_almanac: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.assist_gps_almanac);
    s << indent << "assist_gps_utc_iono: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.assist_gps_utc_iono);
    s << indent << "assist_precise_time: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.assist_precise_time);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROS_SENSOR_MSGS_MESSAGE_CMDGPSASSIST_H
