// Generated by gencpp from file blinky/FaceActionGoal.msg
// DO NOT EDIT!


#ifndef BLINKY_MESSAGE_FACEACTIONGOAL_H
#define BLINKY_MESSAGE_FACEACTIONGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <actionlib_msgs/GoalID.h>
#include <blinky/FaceGoal.h>

namespace blinky
{
template <class ContainerAllocator>
struct FaceActionGoal_
{
  typedef FaceActionGoal_<ContainerAllocator> Type;

  FaceActionGoal_()
    : header()
    , goal_id()
    , goal()  {
    }
  FaceActionGoal_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , goal_id(_alloc)
    , goal(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::actionlib_msgs::GoalID_<ContainerAllocator>  _goal_id_type;
  _goal_id_type goal_id;

   typedef  ::blinky::FaceGoal_<ContainerAllocator>  _goal_type;
  _goal_type goal;




  typedef boost::shared_ptr< ::blinky::FaceActionGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::blinky::FaceActionGoal_<ContainerAllocator> const> ConstPtr;

}; // struct FaceActionGoal_

typedef ::blinky::FaceActionGoal_<std::allocator<void> > FaceActionGoal;

typedef boost::shared_ptr< ::blinky::FaceActionGoal > FaceActionGoalPtr;
typedef boost::shared_ptr< ::blinky::FaceActionGoal const> FaceActionGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::blinky::FaceActionGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::blinky::FaceActionGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace blinky

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'blinky': ['/home/dsp/dsp_ws/devel/share/blinky/msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::blinky::FaceActionGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::blinky::FaceActionGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::blinky::FaceActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::blinky::FaceActionGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::blinky::FaceActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::blinky::FaceActionGoal_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::blinky::FaceActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "1efaad4b7402c94375e4349d897c3b40";
  }

  static const char* value(const ::blinky::FaceActionGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x1efaad4b7402c943ULL;
  static const uint64_t static_value2 = 0x75e4349d897c3b40ULL;
};

template<class ContainerAllocator>
struct DataType< ::blinky::FaceActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "blinky/FaceActionGoal";
  }

  static const char* value(const ::blinky::FaceActionGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::blinky::FaceActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
Header header\n\
actionlib_msgs/GoalID goal_id\n\
FaceGoal goal\n\
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
MSG: actionlib_msgs/GoalID\n\
# The stamp should store the time at which this goal was requested.\n\
# It is used by an action server when it tries to preempt all\n\
# goals that were requested before a certain time\n\
time stamp\n\
\n\
# The id provides a way to associate feedback and\n\
# result message with specific goal requests. The id\n\
# specified must be unique.\n\
string id\n\
\n\
\n\
================================================================================\n\
MSG: blinky/FaceGoal\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
string display_type # See display type constants.\n\
string h1_text # Large, headline text.\n\
string h2_text # Regular-sized text.\n\
string question # The question to ask to the user.\n\
string[] choices # Choices for multiple choice question.\n\
\n\
# Display types.\n\
string DEFAULT = default\n\
string DISPLAY_MESSAGE = displayMessage\n\
string ASK_CHOICE = askMultipleChoice\n\
";
  }

  static const char* value(const ::blinky::FaceActionGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::blinky::FaceActionGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.goal_id);
      stream.next(m.goal);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct FaceActionGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::blinky::FaceActionGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::blinky::FaceActionGoal_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "goal_id: ";
    s << std::endl;
    Printer< ::actionlib_msgs::GoalID_<ContainerAllocator> >::stream(s, indent + "  ", v.goal_id);
    s << indent << "goal: ";
    s << std::endl;
    Printer< ::blinky::FaceGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.goal);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BLINKY_MESSAGE_FACEACTIONGOAL_H
