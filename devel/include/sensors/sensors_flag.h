// Generated by gencpp from file sensors/sensors_flag.msg
// DO NOT EDIT!


#ifndef SENSORS_MESSAGE_SENSORS_FLAG_H
#define SENSORS_MESSAGE_SENSORS_FLAG_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace sensors
{
template <class ContainerAllocator>
struct sensors_flag_
{
  typedef sensors_flag_<ContainerAllocator> Type;

  sensors_flag_()
    : flag(0)  {
    }
  sensors_flag_(const ContainerAllocator& _alloc)
    : flag(0)  {
  (void)_alloc;
    }



   typedef int64_t _flag_type;
  _flag_type flag;





  typedef boost::shared_ptr< ::sensors::sensors_flag_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::sensors::sensors_flag_<ContainerAllocator> const> ConstPtr;

}; // struct sensors_flag_

typedef ::sensors::sensors_flag_<std::allocator<void> > sensors_flag;

typedef boost::shared_ptr< ::sensors::sensors_flag > sensors_flagPtr;
typedef boost::shared_ptr< ::sensors::sensors_flag const> sensors_flagConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::sensors::sensors_flag_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::sensors::sensors_flag_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::sensors::sensors_flag_<ContainerAllocator1> & lhs, const ::sensors::sensors_flag_<ContainerAllocator2> & rhs)
{
  return lhs.flag == rhs.flag;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::sensors::sensors_flag_<ContainerAllocator1> & lhs, const ::sensors::sensors_flag_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace sensors

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::sensors::sensors_flag_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sensors::sensors_flag_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::sensors::sensors_flag_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::sensors::sensors_flag_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sensors::sensors_flag_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sensors::sensors_flag_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::sensors::sensors_flag_<ContainerAllocator> >
{
  static const char* value()
  {
    return "87ee459c4b4bcda4c5ae0619ce324ea2";
  }

  static const char* value(const ::sensors::sensors_flag_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x87ee459c4b4bcda4ULL;
  static const uint64_t static_value2 = 0xc5ae0619ce324ea2ULL;
};

template<class ContainerAllocator>
struct DataType< ::sensors::sensors_flag_<ContainerAllocator> >
{
  static const char* value()
  {
    return "sensors/sensors_flag";
  }

  static const char* value(const ::sensors::sensors_flag_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::sensors::sensors_flag_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 flag\n"
;
  }

  static const char* value(const ::sensors::sensors_flag_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::sensors::sensors_flag_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.flag);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct sensors_flag_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::sensors::sensors_flag_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::sensors::sensors_flag_<ContainerAllocator>& v)
  {
    s << indent << "flag: ";
    Printer<int64_t>::stream(s, indent + "  ", v.flag);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SENSORS_MESSAGE_SENSORS_FLAG_H
