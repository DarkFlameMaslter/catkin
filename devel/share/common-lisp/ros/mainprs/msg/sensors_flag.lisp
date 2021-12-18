; Auto-generated. Do not edit!


(cl:in-package mainprs-msg)


;//! \htmlinclude sensors_flag.msg.html

(cl:defclass <sensors_flag> (roslisp-msg-protocol:ros-message)
  ((flag
    :reader flag
    :initarg :flag
    :type cl:integer
    :initform 0))
)

(cl:defclass sensors_flag (<sensors_flag>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <sensors_flag>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'sensors_flag)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mainprs-msg:<sensors_flag> is deprecated: use mainprs-msg:sensors_flag instead.")))

(cl:ensure-generic-function 'flag-val :lambda-list '(m))
(cl:defmethod flag-val ((m <sensors_flag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mainprs-msg:flag-val is deprecated.  Use mainprs-msg:flag instead.")
  (flag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <sensors_flag>) ostream)
  "Serializes a message object of type '<sensors_flag>"
  (cl:let* ((signed (cl:slot-value msg 'flag)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <sensors_flag>) istream)
  "Deserializes a message object of type '<sensors_flag>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'flag) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<sensors_flag>)))
  "Returns string type for a message object of type '<sensors_flag>"
  "mainprs/sensors_flag")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'sensors_flag)))
  "Returns string type for a message object of type 'sensors_flag"
  "mainprs/sensors_flag")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<sensors_flag>)))
  "Returns md5sum for a message object of type '<sensors_flag>"
  "87ee459c4b4bcda4c5ae0619ce324ea2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'sensors_flag)))
  "Returns md5sum for a message object of type 'sensors_flag"
  "87ee459c4b4bcda4c5ae0619ce324ea2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<sensors_flag>)))
  "Returns full string definition for message of type '<sensors_flag>"
  (cl:format cl:nil "int64 flag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'sensors_flag)))
  "Returns full string definition for message of type 'sensors_flag"
  (cl:format cl:nil "int64 flag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <sensors_flag>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <sensors_flag>))
  "Converts a ROS message object to a list"
  (cl:list 'sensors_flag
    (cl:cons ':flag (flag msg))
))
