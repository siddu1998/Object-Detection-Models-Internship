; Auto-generated. Do not edit!


(cl:in-package mmmros-msg)


;//! \htmlinclude SensorData.msg.html

(cl:defclass <SensorData> (roslisp-msg-protocol:ros-message)
  ((leftRange
    :reader leftRange
    :initarg :leftRange
    :type cl:integer
    :initform 0)
   (rightRange
    :reader rightRange
    :initarg :rightRange
    :type cl:integer
    :initform 0))
)

(cl:defclass SensorData (<SensorData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SensorData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SensorData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mmmros-msg:<SensorData> is deprecated: use mmmros-msg:SensorData instead.")))

(cl:ensure-generic-function 'leftRange-val :lambda-list '(m))
(cl:defmethod leftRange-val ((m <SensorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mmmros-msg:leftRange-val is deprecated.  Use mmmros-msg:leftRange instead.")
  (leftRange m))

(cl:ensure-generic-function 'rightRange-val :lambda-list '(m))
(cl:defmethod rightRange-val ((m <SensorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mmmros-msg:rightRange-val is deprecated.  Use mmmros-msg:rightRange instead.")
  (rightRange m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SensorData>) ostream)
  "Serializes a message object of type '<SensorData>"
  (cl:let* ((signed (cl:slot-value msg 'leftRange)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rightRange)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SensorData>) istream)
  "Deserializes a message object of type '<SensorData>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'leftRange) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rightRange) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SensorData>)))
  "Returns string type for a message object of type '<SensorData>"
  "mmmros/SensorData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SensorData)))
  "Returns string type for a message object of type 'SensorData"
  "mmmros/SensorData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SensorData>)))
  "Returns md5sum for a message object of type '<SensorData>"
  "b1c36752ab3b6f5eff0925b1e6157daa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SensorData)))
  "Returns md5sum for a message object of type 'SensorData"
  "b1c36752ab3b6f5eff0925b1e6157daa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SensorData>)))
  "Returns full string definition for message of type '<SensorData>"
  (cl:format cl:nil "int64 leftRange~%int64 rightRange~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SensorData)))
  "Returns full string definition for message of type 'SensorData"
  (cl:format cl:nil "int64 leftRange~%int64 rightRange~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SensorData>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SensorData>))
  "Converts a ROS message object to a list"
  (cl:list 'SensorData
    (cl:cons ':leftRange (leftRange msg))
    (cl:cons ':rightRange (rightRange msg))
))
