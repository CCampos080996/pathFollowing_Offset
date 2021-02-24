// Generated by gencpp from file tdcp/TdcpDiagnostics.msg
// DO NOT EDIT!


#ifndef TDCP_MESSAGE_TDCPDIAGNOSTICS_H
#define TDCP_MESSAGE_TDCPDIAGNOSTICS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <ros_sensor_msgs/GpsTime.h>
#include <geometry_msgs/Vector3.h>

namespace tdcp
{
template <class ContainerAllocator>
struct TdcpDiagnostics_
{
  typedef TdcpDiagnostics_<ContainerAllocator> Type;

  TdcpDiagnostics_()
    : header()
    , gpsTime()
    , numAvailableSvs(0)
    , numPsrSolSvs(0)
    , numTdcpSolSvs(0)
    , spsDeltaPosition()
    , faultCheckVariable1(0.0)
    , faultCheckVariable2(0.0)
    , sampleTime(0.0)  {
    }
  TdcpDiagnostics_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , gpsTime(_alloc)
    , numAvailableSvs(0)
    , numPsrSolSvs(0)
    , numTdcpSolSvs(0)
    , spsDeltaPosition(_alloc)
    , faultCheckVariable1(0.0)
    , faultCheckVariable2(0.0)
    , sampleTime(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::ros_sensor_msgs::GpsTime_<ContainerAllocator>  _gpsTime_type;
  _gpsTime_type gpsTime;

   typedef uint16_t _numAvailableSvs_type;
  _numAvailableSvs_type numAvailableSvs;

   typedef uint16_t _numPsrSolSvs_type;
  _numPsrSolSvs_type numPsrSolSvs;

   typedef uint16_t _numTdcpSolSvs_type;
  _numTdcpSolSvs_type numTdcpSolSvs;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _spsDeltaPosition_type;
  _spsDeltaPosition_type spsDeltaPosition;

   typedef float _faultCheckVariable1_type;
  _faultCheckVariable1_type faultCheckVariable1;

   typedef float _faultCheckVariable2_type;
  _faultCheckVariable2_type faultCheckVariable2;

   typedef float _sampleTime_type;
  _sampleTime_type sampleTime;





  typedef boost::shared_ptr< ::tdcp::TdcpDiagnostics_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tdcp::TdcpDiagnostics_<ContainerAllocator> const> ConstPtr;

}; // struct TdcpDiagnostics_

typedef ::tdcp::TdcpDiagnostics_<std::allocator<void> > TdcpDiagnostics;

typedef boost::shared_ptr< ::tdcp::TdcpDiagnostics > TdcpDiagnosticsPtr;
typedef boost::shared_ptr< ::tdcp::TdcpDiagnostics const> TdcpDiagnosticsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tdcp::TdcpDiagnostics_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tdcp::TdcpDiagnostics_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace tdcp

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'tdcp': ['/home/christian/lateralOffset/src/tdcp/msg'], 'ros_sensor_msgs': ['/home/christian/lateralOffset/src/ros-sensor-msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::tdcp::TdcpDiagnostics_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tdcp::TdcpDiagnostics_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tdcp::TdcpDiagnostics_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tdcp::TdcpDiagnostics_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tdcp::TdcpDiagnostics_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tdcp::TdcpDiagnostics_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tdcp::TdcpDiagnostics_<ContainerAllocator> >
{
  static const char* value()
  {
    return "29abe80c51328853cd49a1acdc38a46c";
  }

  static const char* value(const ::tdcp::TdcpDiagnostics_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x29abe80c51328853ULL;
  static const uint64_t static_value2 = 0xcd49a1acdc38a46cULL;
};

template<class ContainerAllocator>
struct DataType< ::tdcp::TdcpDiagnostics_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tdcp/TdcpDiagnostics";
  }

  static const char* value(const ::tdcp::TdcpDiagnostics_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tdcp::TdcpDiagnostics_<ContainerAllocator> >
{
  static const char* value()
  {
    return "## TdcpDiagnostics\n\
\n\
std_msgs/Header          header\n\
ros_sensor_msgs/GpsTime  gpsTime\n\
\n\
uint16 numAvailableSvs\n\
uint16 numPsrSolSvs\n\
uint16 numTdcpSolSvs\n\
\n\
geometry_msgs/Vector3 spsDeltaPosition\n\
\n\
float32 faultCheckVariable1\n\
float32 faultCheckVariable2\n\
\n\
float32 sampleTime\n\
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
MSG: ros_sensor_msgs/GpsTime\n\
## GPS time structure\n\
uint32          gps_week        # Full GPS week from (0:0:00 Jan 06, 1980)\n\
float64         gps_seconds     # GPS seconds into week [sec]\n\
================================================================================\n\
MSG: geometry_msgs/Vector3\n\
# This represents a vector in free space. \n\
# It is only meant to represent a direction. Therefore, it does not\n\
# make sense to apply a translation to it (e.g., when applying a \n\
# generic rigid transformation to a Vector3, tf2 will only apply the\n\
# rotation). If you want your data to be translatable too, use the\n\
# geometry_msgs/Point message instead.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::tdcp::TdcpDiagnostics_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tdcp::TdcpDiagnostics_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.gpsTime);
      stream.next(m.numAvailableSvs);
      stream.next(m.numPsrSolSvs);
      stream.next(m.numTdcpSolSvs);
      stream.next(m.spsDeltaPosition);
      stream.next(m.faultCheckVariable1);
      stream.next(m.faultCheckVariable2);
      stream.next(m.sampleTime);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TdcpDiagnostics_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tdcp::TdcpDiagnostics_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tdcp::TdcpDiagnostics_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "gpsTime: ";
    s << std::endl;
    Printer< ::ros_sensor_msgs::GpsTime_<ContainerAllocator> >::stream(s, indent + "  ", v.gpsTime);
    s << indent << "numAvailableSvs: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.numAvailableSvs);
    s << indent << "numPsrSolSvs: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.numPsrSolSvs);
    s << indent << "numTdcpSolSvs: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.numTdcpSolSvs);
    s << indent << "spsDeltaPosition: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.spsDeltaPosition);
    s << indent << "faultCheckVariable1: ";
    Printer<float>::stream(s, indent + "  ", v.faultCheckVariable1);
    s << indent << "faultCheckVariable2: ";
    Printer<float>::stream(s, indent + "  ", v.faultCheckVariable2);
    s << indent << "sampleTime: ";
    Printer<float>::stream(s, indent + "  ", v.sampleTime);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TDCP_MESSAGE_TDCPDIAGNOSTICS_H
