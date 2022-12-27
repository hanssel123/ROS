// Generated by gencpp from file package_robot/SumTwoInts.msg
// DO NOT EDIT!


#ifndef PACKAGE_ROBOT_MESSAGE_SUMTWOINTS_H
#define PACKAGE_ROBOT_MESSAGE_SUMTWOINTS_H

#include <ros/service_traits.h>


#include <package_robot/SumTwoIntsRequest.h>
#include <package_robot/SumTwoIntsResponse.h>


namespace package_robot
{

struct SumTwoInts
{

typedef SumTwoIntsRequest Request;
typedef SumTwoIntsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SumTwoInts
} // namespace package_robot


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::package_robot::SumTwoInts > {
  static const char* value()
  {
    return "6a2e34150c00229791cc89ff309fff21";
  }

  static const char* value(const ::package_robot::SumTwoInts&) { return value(); }
};

template<>
struct DataType< ::package_robot::SumTwoInts > {
  static const char* value()
  {
    return "package_robot/SumTwoInts";
  }

  static const char* value(const ::package_robot::SumTwoInts&) { return value(); }
};


// service_traits::MD5Sum< ::package_robot::SumTwoIntsRequest> should match
// service_traits::MD5Sum< ::package_robot::SumTwoInts >
template<>
struct MD5Sum< ::package_robot::SumTwoIntsRequest>
{
  static const char* value()
  {
    return MD5Sum< ::package_robot::SumTwoInts >::value();
  }
  static const char* value(const ::package_robot::SumTwoIntsRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::package_robot::SumTwoIntsRequest> should match
// service_traits::DataType< ::package_robot::SumTwoInts >
template<>
struct DataType< ::package_robot::SumTwoIntsRequest>
{
  static const char* value()
  {
    return DataType< ::package_robot::SumTwoInts >::value();
  }
  static const char* value(const ::package_robot::SumTwoIntsRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::package_robot::SumTwoIntsResponse> should match
// service_traits::MD5Sum< ::package_robot::SumTwoInts >
template<>
struct MD5Sum< ::package_robot::SumTwoIntsResponse>
{
  static const char* value()
  {
    return MD5Sum< ::package_robot::SumTwoInts >::value();
  }
  static const char* value(const ::package_robot::SumTwoIntsResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::package_robot::SumTwoIntsResponse> should match
// service_traits::DataType< ::package_robot::SumTwoInts >
template<>
struct DataType< ::package_robot::SumTwoIntsResponse>
{
  static const char* value()
  {
    return DataType< ::package_robot::SumTwoInts >::value();
  }
  static const char* value(const ::package_robot::SumTwoIntsResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // PACKAGE_ROBOT_MESSAGE_SUMTWOINTS_H