// Generated by gencpp from file mmmros/SensorData.msg
// DO NOT EDIT!


#ifndef MMMROS_MESSAGE_SENSORDATA_H
#define MMMROS_MESSAGE_SENSORDATA_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace mmmros
{
template <class ContainerAllocator>
struct SensorData_
{
  typedef SensorData_<ContainerAllocator> Type;

  SensorData_()
    : leftRange(0)
    , rightRange(0)  {
    }
  SensorData_(const ContainerAllocator& _alloc)
    : leftRange(0)
    , rightRange(0)  {
  (void)_alloc;
    }



   typedef int64_t _leftRange_type;
  _leftRange_type leftRange;

   typedef int64_t _rightRange_type;
  _rightRange_type rightRange;





  typedef boost::shared_ptr< ::mmmros::SensorData_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mmmros::SensorData_<ContainerAllocator> const> ConstPtr;

}; // struct SensorData_

typedef ::mmmros::SensorData_<std::allocator<void> > SensorData;

typedef boost::shared_ptr< ::mmmros::SensorData > SensorDataPtr;
typedef boost::shared_ptr< ::mmmros::SensorData const> SensorDataConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mmmros::SensorData_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mmmros::SensorData_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace mmmros

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'mmmros': ['/home/sid/catkin_ws/src/mmmros/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::mmmros::SensorData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mmmros::SensorData_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mmmros::SensorData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mmmros::SensorData_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mmmros::SensorData_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mmmros::SensorData_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mmmros::SensorData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b1c36752ab3b6f5eff0925b1e6157daa";
  }

  static const char* value(const ::mmmros::SensorData_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb1c36752ab3b6f5eULL;
  static const uint64_t static_value2 = 0xff0925b1e6157daaULL;
};

template<class ContainerAllocator>
struct DataType< ::mmmros::SensorData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mmmros/SensorData";
  }

  static const char* value(const ::mmmros::SensorData_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mmmros::SensorData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 leftRange\n\
int64 rightRange\n\
";
  }

  static const char* value(const ::mmmros::SensorData_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mmmros::SensorData_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.leftRange);
      stream.next(m.rightRange);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SensorData_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mmmros::SensorData_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mmmros::SensorData_<ContainerAllocator>& v)
  {
    s << indent << "leftRange: ";
    Printer<int64_t>::stream(s, indent + "  ", v.leftRange);
    s << indent << "rightRange: ";
    Printer<int64_t>::stream(s, indent + "  ", v.rightRange);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MMMROS_MESSAGE_SENSORDATA_H
