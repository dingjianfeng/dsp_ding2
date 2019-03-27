// Generated by gencpp from file exploration_msgs/SetPolygonRequest.msg
// DO NOT EDIT!


#ifndef EXPLORATION_MSGS_MESSAGE_SETPOLYGONREQUEST_H
#define EXPLORATION_MSGS_MESSAGE_SETPOLYGONREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/PolygonStamped.h>

namespace exploration_msgs
{
template <class ContainerAllocator>
struct SetPolygonRequest_
{
  typedef SetPolygonRequest_<ContainerAllocator> Type;

  SetPolygonRequest_()
    : polygon()  {
    }
  SetPolygonRequest_(const ContainerAllocator& _alloc)
    : polygon(_alloc)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::PolygonStamped_<ContainerAllocator>  _polygon_type;
  _polygon_type polygon;




  typedef boost::shared_ptr< ::exploration_msgs::SetPolygonRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::exploration_msgs::SetPolygonRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SetPolygonRequest_

typedef ::exploration_msgs::SetPolygonRequest_<std::allocator<void> > SetPolygonRequest;

typedef boost::shared_ptr< ::exploration_msgs::SetPolygonRequest > SetPolygonRequestPtr;
typedef boost::shared_ptr< ::exploration_msgs::SetPolygonRequest const> SetPolygonRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::exploration_msgs::SetPolygonRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::exploration_msgs::SetPolygonRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace exploration_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'exploration_msgs': ['/home/dsp/dsp_ws/devel/share/exploration_msgs/msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::exploration_msgs::SetPolygonRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::exploration_msgs::SetPolygonRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::exploration_msgs::SetPolygonRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::exploration_msgs::SetPolygonRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::exploration_msgs::SetPolygonRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::exploration_msgs::SetPolygonRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::exploration_msgs::SetPolygonRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e257093c51f646bb3fd81ee37f162324";
  }

  static const char* value(const ::exploration_msgs::SetPolygonRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe257093c51f646bbULL;
  static const uint64_t static_value2 = 0x3fd81ee37f162324ULL;
};

template<class ContainerAllocator>
struct DataType< ::exploration_msgs::SetPolygonRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "exploration_msgs/SetPolygonRequest";
  }

  static const char* value(const ::exploration_msgs::SetPolygonRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::exploration_msgs::SetPolygonRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/PolygonStamped polygon\n\
\n\
================================================================================\n\
MSG: geometry_msgs/PolygonStamped\n\
# This represents a Polygon with reference coordinate frame and timestamp\n\
Header header\n\
Polygon polygon\n\
\n\
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
MSG: geometry_msgs/Polygon\n\
#A specification of a polygon where the first and last points are assumed to be connected\n\
Point32[] points\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point32\n\
# This contains the position of a point in free space(with 32 bits of precision).\n\
# It is recommeded to use Point wherever possible instead of Point32.  \n\
# \n\
# This recommendation is to promote interoperability.  \n\
#\n\
# This message is designed to take up less space when sending\n\
# lots of points at once, as in the case of a PointCloud.  \n\
\n\
float32 x\n\
float32 y\n\
float32 z\n\
";
  }

  static const char* value(const ::exploration_msgs::SetPolygonRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::exploration_msgs::SetPolygonRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.polygon);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetPolygonRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::exploration_msgs::SetPolygonRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::exploration_msgs::SetPolygonRequest_<ContainerAllocator>& v)
  {
    s << indent << "polygon: ";
    s << std::endl;
    Printer< ::geometry_msgs::PolygonStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.polygon);
  }
};

} // namespace message_operations
} // namespace ros

#endif // EXPLORATION_MSGS_MESSAGE_SETPOLYGONREQUEST_H
