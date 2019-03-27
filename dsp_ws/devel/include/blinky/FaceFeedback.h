// Generated by gencpp from file blinky/FaceFeedback.msg
// DO NOT EDIT!


#ifndef BLINKY_MESSAGE_FACEFEEDBACK_H
#define BLINKY_MESSAGE_FACEFEEDBACK_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace blinky
{
template <class ContainerAllocator>
struct FaceFeedback_
{
  typedef FaceFeedback_<ContainerAllocator> Type;

  FaceFeedback_()
    {
    }
  FaceFeedback_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }






  typedef boost::shared_ptr< ::blinky::FaceFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::blinky::FaceFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct FaceFeedback_

typedef ::blinky::FaceFeedback_<std::allocator<void> > FaceFeedback;

typedef boost::shared_ptr< ::blinky::FaceFeedback > FaceFeedbackPtr;
typedef boost::shared_ptr< ::blinky::FaceFeedback const> FaceFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::blinky::FaceFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::blinky::FaceFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace blinky

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'blinky': ['/home/dsp/dsp_ws/devel/share/blinky/msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::blinky::FaceFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::blinky::FaceFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::blinky::FaceFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::blinky::FaceFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::blinky::FaceFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::blinky::FaceFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::blinky::FaceFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::blinky::FaceFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::blinky::FaceFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "blinky/FaceFeedback";
  }

  static const char* value(const ::blinky::FaceFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::blinky::FaceFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
";
  }

  static const char* value(const ::blinky::FaceFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::blinky::FaceFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct FaceFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::blinky::FaceFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::blinky::FaceFeedback_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // BLINKY_MESSAGE_FACEFEEDBACK_H