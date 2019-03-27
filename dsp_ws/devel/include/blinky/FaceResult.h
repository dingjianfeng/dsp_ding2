// Generated by gencpp from file blinky/FaceResult.msg
// DO NOT EDIT!


#ifndef BLINKY_MESSAGE_FACERESULT_H
#define BLINKY_MESSAGE_FACERESULT_H


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
struct FaceResult_
{
  typedef FaceResult_<ContainerAllocator> Type;

  FaceResult_()
    : choice()  {
    }
  FaceResult_(const ContainerAllocator& _alloc)
    : choice(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _choice_type;
  _choice_type choice;




  typedef boost::shared_ptr< ::blinky::FaceResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::blinky::FaceResult_<ContainerAllocator> const> ConstPtr;

}; // struct FaceResult_

typedef ::blinky::FaceResult_<std::allocator<void> > FaceResult;

typedef boost::shared_ptr< ::blinky::FaceResult > FaceResultPtr;
typedef boost::shared_ptr< ::blinky::FaceResult const> FaceResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::blinky::FaceResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::blinky::FaceResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace blinky

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'blinky': ['/home/dsp/dsp_ws/devel/share/blinky/msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::blinky::FaceResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::blinky::FaceResult_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::blinky::FaceResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::blinky::FaceResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::blinky::FaceResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::blinky::FaceResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::blinky::FaceResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bc1eb9e6d4887ec14b3959b9a2e31564";
  }

  static const char* value(const ::blinky::FaceResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbc1eb9e6d4887ec1ULL;
  static const uint64_t static_value2 = 0x4b3959b9a2e31564ULL;
};

template<class ContainerAllocator>
struct DataType< ::blinky::FaceResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "blinky/FaceResult";
  }

  static const char* value(const ::blinky::FaceResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::blinky::FaceResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
string choice # The selected choice, if applicable.\n\
";
  }

  static const char* value(const ::blinky::FaceResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::blinky::FaceResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.choice);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct FaceResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::blinky::FaceResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::blinky::FaceResult_<ContainerAllocator>& v)
  {
    s << indent << "choice: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.choice);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BLINKY_MESSAGE_FACERESULT_H