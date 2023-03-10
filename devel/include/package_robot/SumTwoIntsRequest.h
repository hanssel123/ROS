// Generated by gencpp from file package_robot/SumTwoIntsRequest.msg
// DO NOT EDIT!


#ifndef PACKAGE_ROBOT_MESSAGE_SUMTWOINTSREQUEST_H
#define PACKAGE_ROBOT_MESSAGE_SUMTWOINTSREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace package_robot
{
template <class ContainerAllocator>
struct SumTwoIntsRequest_
{
  typedef SumTwoIntsRequest_<ContainerAllocator> Type;

  SumTwoIntsRequest_()
    : a(0)
    , b(0)  {
    }
  SumTwoIntsRequest_(const ContainerAllocator& _alloc)
    : a(0)
    , b(0)  {
  (void)_alloc;
    }



   typedef int64_t _a_type;
  _a_type a;

   typedef int64_t _b_type;
  _b_type b;





  typedef boost::shared_ptr< ::package_robot::SumTwoIntsRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::package_robot::SumTwoIntsRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SumTwoIntsRequest_

typedef ::package_robot::SumTwoIntsRequest_<std::allocator<void> > SumTwoIntsRequest;

typedef boost::shared_ptr< ::package_robot::SumTwoIntsRequest > SumTwoIntsRequestPtr;
typedef boost::shared_ptr< ::package_robot::SumTwoIntsRequest const> SumTwoIntsRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::package_robot::SumTwoIntsRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::package_robot::SumTwoIntsRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::package_robot::SumTwoIntsRequest_<ContainerAllocator1> & lhs, const ::package_robot::SumTwoIntsRequest_<ContainerAllocator2> & rhs)
{
  return lhs.a == rhs.a &&
    lhs.b == rhs.b;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::package_robot::SumTwoIntsRequest_<ContainerAllocator1> & lhs, const ::package_robot::SumTwoIntsRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace package_robot

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::package_robot::SumTwoIntsRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::package_robot::SumTwoIntsRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::package_robot::SumTwoIntsRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::package_robot::SumTwoIntsRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::package_robot::SumTwoIntsRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::package_robot::SumTwoIntsRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::package_robot::SumTwoIntsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "36d09b846be0b371c5f190354dd3153e";
  }

  static const char* value(const ::package_robot::SumTwoIntsRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x36d09b846be0b371ULL;
  static const uint64_t static_value2 = 0xc5f190354dd3153eULL;
};

template<class ContainerAllocator>
struct DataType< ::package_robot::SumTwoIntsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "package_robot/SumTwoIntsRequest";
  }

  static const char* value(const ::package_robot::SumTwoIntsRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::package_robot::SumTwoIntsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#Request\n"
"int64 a\n"
"int64 b\n"
;
  }

  static const char* value(const ::package_robot::SumTwoIntsRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::package_robot::SumTwoIntsRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.a);
      stream.next(m.b);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SumTwoIntsRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::package_robot::SumTwoIntsRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::package_robot::SumTwoIntsRequest_<ContainerAllocator>& v)
  {
    s << indent << "a: ";
    Printer<int64_t>::stream(s, indent + "  ", v.a);
    s << indent << "b: ";
    Printer<int64_t>::stream(s, indent + "  ", v.b);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PACKAGE_ROBOT_MESSAGE_SUMTWOINTSREQUEST_H
