// Generated by gencpp from file hector_elevation_msgs/ElevationMapMetaData.msg
// DO NOT EDIT!


#ifndef HECTOR_ELEVATION_MSGS_MESSAGE_ELEVATIONMAPMETADATA_H
#define HECTOR_ELEVATION_MSGS_MESSAGE_ELEVATIONMAPMETADATA_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Pose.h>

namespace hector_elevation_msgs
{
template <class ContainerAllocator>
struct ElevationMapMetaData_
{
  typedef ElevationMapMetaData_<ContainerAllocator> Type;

  ElevationMapMetaData_()
    : map_load_time()
    , resolution_xy(0.0)
    , resolution_z(0.0)
    , min_elevation(0.0)
    , max_elevation(0.0)
    , zero_elevation(0)
    , width(0)
    , height(0)
    , origin()  {
    }
  ElevationMapMetaData_(const ContainerAllocator& _alloc)
    : map_load_time()
    , resolution_xy(0.0)
    , resolution_z(0.0)
    , min_elevation(0.0)
    , max_elevation(0.0)
    , zero_elevation(0)
    , width(0)
    , height(0)
    , origin(_alloc)  {
  (void)_alloc;
    }



   typedef ros::Time _map_load_time_type;
  _map_load_time_type map_load_time;

   typedef double _resolution_xy_type;
  _resolution_xy_type resolution_xy;

   typedef double _resolution_z_type;
  _resolution_z_type resolution_z;

   typedef double _min_elevation_type;
  _min_elevation_type min_elevation;

   typedef double _max_elevation_type;
  _max_elevation_type max_elevation;

   typedef int16_t _zero_elevation_type;
  _zero_elevation_type zero_elevation;

   typedef uint32_t _width_type;
  _width_type width;

   typedef uint32_t _height_type;
  _height_type height;

   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _origin_type;
  _origin_type origin;




  typedef boost::shared_ptr< ::hector_elevation_msgs::ElevationMapMetaData_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hector_elevation_msgs::ElevationMapMetaData_<ContainerAllocator> const> ConstPtr;

}; // struct ElevationMapMetaData_

typedef ::hector_elevation_msgs::ElevationMapMetaData_<std::allocator<void> > ElevationMapMetaData;

typedef boost::shared_ptr< ::hector_elevation_msgs::ElevationMapMetaData > ElevationMapMetaDataPtr;
typedef boost::shared_ptr< ::hector_elevation_msgs::ElevationMapMetaData const> ElevationMapMetaDataConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hector_elevation_msgs::ElevationMapMetaData_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hector_elevation_msgs::ElevationMapMetaData_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace hector_elevation_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'hector_elevation_msgs': ['/home/dsp/dsp_ws/src/hector_navigation/hector_elevation_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::hector_elevation_msgs::ElevationMapMetaData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hector_elevation_msgs::ElevationMapMetaData_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hector_elevation_msgs::ElevationMapMetaData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hector_elevation_msgs::ElevationMapMetaData_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hector_elevation_msgs::ElevationMapMetaData_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hector_elevation_msgs::ElevationMapMetaData_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hector_elevation_msgs::ElevationMapMetaData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6c887873faf3a1d55d884bdcc92b9241";
  }

  static const char* value(const ::hector_elevation_msgs::ElevationMapMetaData_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6c887873faf3a1d5ULL;
  static const uint64_t static_value2 = 0x5d884bdcc92b9241ULL;
};

template<class ContainerAllocator>
struct DataType< ::hector_elevation_msgs::ElevationMapMetaData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hector_elevation_msgs/ElevationMapMetaData";
  }

  static const char* value(const ::hector_elevation_msgs::ElevationMapMetaData_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hector_elevation_msgs::ElevationMapMetaData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This hold basic information about the characterists of the EvaluationGrid\n\
\n\
# The time at which the map was loaded\n\
time map_load_time\n\
# Map resolution in xy plane [m/cell]\n\
float64 resolution_xy\n\
# Map resolution in height [m/cell]\n\
float64 resolution_z\n\
# min observed height [m]\n\
float64 min_elevation\n\
# max observed height [m]\n\
float64 max_elevation\n\
# Height zero value. For example 16384.\n\
int16 zero_elevation\n\
# Map width [cells]\n\
uint32 width\n\
# Map height [cells]\n\
uint32 height\n\
# The origin of the map [m, m, rad].  This is the real-world pose of the\n\
# cell (0,0) in the map.\n\
geometry_msgs/Pose origin\n\
\n\
\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Pose\n\
# A representation of pose in free space, composed of postion and orientation. \n\
Point position\n\
Quaternion orientation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
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

  static const char* value(const ::hector_elevation_msgs::ElevationMapMetaData_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hector_elevation_msgs::ElevationMapMetaData_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.map_load_time);
      stream.next(m.resolution_xy);
      stream.next(m.resolution_z);
      stream.next(m.min_elevation);
      stream.next(m.max_elevation);
      stream.next(m.zero_elevation);
      stream.next(m.width);
      stream.next(m.height);
      stream.next(m.origin);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ElevationMapMetaData_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hector_elevation_msgs::ElevationMapMetaData_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hector_elevation_msgs::ElevationMapMetaData_<ContainerAllocator>& v)
  {
    s << indent << "map_load_time: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.map_load_time);
    s << indent << "resolution_xy: ";
    Printer<double>::stream(s, indent + "  ", v.resolution_xy);
    s << indent << "resolution_z: ";
    Printer<double>::stream(s, indent + "  ", v.resolution_z);
    s << indent << "min_elevation: ";
    Printer<double>::stream(s, indent + "  ", v.min_elevation);
    s << indent << "max_elevation: ";
    Printer<double>::stream(s, indent + "  ", v.max_elevation);
    s << indent << "zero_elevation: ";
    Printer<int16_t>::stream(s, indent + "  ", v.zero_elevation);
    s << indent << "width: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.width);
    s << indent << "height: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.height);
    s << indent << "origin: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.origin);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HECTOR_ELEVATION_MSGS_MESSAGE_ELEVATIONMAPMETADATA_H
