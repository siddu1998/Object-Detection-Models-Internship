; Auto-generated. Do not edit!


(cl:in-package mmmros-msg)


;//! \htmlinclude Movement.msg.html

(cl:defclass <Movement> (roslisp-msg-protocol:ros-message)
  ((leftWheelSpeed
    :reader leftWheelSpeed
    :initarg :leftWheelSpeed
    :type cl:float
    :initform 0.0)
   (rightWheelSpeed
    :reader rightWheelSpeed
    :initarg :rightWheelSpeed
    :type cl:float
    :initform 0.0)
   (leftShoulderAngle
    :reader leftShoulderAngle
    :initarg :leftShoulderAngle
    :type cl:float
    :initform 0.0)
   (rightShoulderAngle
    :reader rightShoulderAngle
    :initarg :rightShoulderAngle
    :type cl:float
    :initform 0.0)
   (leftElbowAngle
    :reader leftElbowAngle
    :initarg :leftElbowAngle
    :type cl:float
    :initform 0.0)
   (rightElbowAngle
    :reader rightElbowAngle
    :initarg :rightElbowAngle
    :type cl:float
    :initform 0.0)
   (leftArmExtension
    :reader leftArmExtension
    :initarg :leftArmExtension
    :type cl:float
    :initform 0.0)
   (rightArmExtension
    :reader rightArmExtension
    :initarg :rightArmExtension
    :type cl:float
    :initform 0.0)
   (leftGripperAngles
    :reader leftGripperAngles
    :initarg :leftGripperAngles
    :type (cl:vector cl:float)
   :initform (cl:make-array 5 :element-type 'cl:float :initial-element 0.0))
   (rightGripperAngles
    :reader rightGripperAngles
    :initarg :rightGripperAngles
    :type (cl:vector cl:float)
   :initform (cl:make-array 5 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Movement (<Movement>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Movement>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Movement)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mmmros-msg:<Movement> is deprecated: use mmmros-msg:Movement instead.")))

(cl:ensure-generic-function 'leftWheelSpeed-val :lambda-list '(m))
(cl:defmethod leftWheelSpeed-val ((m <Movement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mmmros-msg:leftWheelSpeed-val is deprecated.  Use mmmros-msg:leftWheelSpeed instead.")
  (leftWheelSpeed m))

(cl:ensure-generic-function 'rightWheelSpeed-val :lambda-list '(m))
(cl:defmethod rightWheelSpeed-val ((m <Movement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mmmros-msg:rightWheelSpeed-val is deprecated.  Use mmmros-msg:rightWheelSpeed instead.")
  (rightWheelSpeed m))

(cl:ensure-generic-function 'leftShoulderAngle-val :lambda-list '(m))
(cl:defmethod leftShoulderAngle-val ((m <Movement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mmmros-msg:leftShoulderAngle-val is deprecated.  Use mmmros-msg:leftShoulderAngle instead.")
  (leftShoulderAngle m))

(cl:ensure-generic-function 'rightShoulderAngle-val :lambda-list '(m))
(cl:defmethod rightShoulderAngle-val ((m <Movement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mmmros-msg:rightShoulderAngle-val is deprecated.  Use mmmros-msg:rightShoulderAngle instead.")
  (rightShoulderAngle m))

(cl:ensure-generic-function 'leftElbowAngle-val :lambda-list '(m))
(cl:defmethod leftElbowAngle-val ((m <Movement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mmmros-msg:leftElbowAngle-val is deprecated.  Use mmmros-msg:leftElbowAngle instead.")
  (leftElbowAngle m))

(cl:ensure-generic-function 'rightElbowAngle-val :lambda-list '(m))
(cl:defmethod rightElbowAngle-val ((m <Movement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mmmros-msg:rightElbowAngle-val is deprecated.  Use mmmros-msg:rightElbowAngle instead.")
  (rightElbowAngle m))

(cl:ensure-generic-function 'leftArmExtension-val :lambda-list '(m))
(cl:defmethod leftArmExtension-val ((m <Movement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mmmros-msg:leftArmExtension-val is deprecated.  Use mmmros-msg:leftArmExtension instead.")
  (leftArmExtension m))

(cl:ensure-generic-function 'rightArmExtension-val :lambda-list '(m))
(cl:defmethod rightArmExtension-val ((m <Movement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mmmros-msg:rightArmExtension-val is deprecated.  Use mmmros-msg:rightArmExtension instead.")
  (rightArmExtension m))

(cl:ensure-generic-function 'leftGripperAngles-val :lambda-list '(m))
(cl:defmethod leftGripperAngles-val ((m <Movement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mmmros-msg:leftGripperAngles-val is deprecated.  Use mmmros-msg:leftGripperAngles instead.")
  (leftGripperAngles m))

(cl:ensure-generic-function 'rightGripperAngles-val :lambda-list '(m))
(cl:defmethod rightGripperAngles-val ((m <Movement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mmmros-msg:rightGripperAngles-val is deprecated.  Use mmmros-msg:rightGripperAngles instead.")
  (rightGripperAngles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Movement>) ostream)
  "Serializes a message object of type '<Movement>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'leftWheelSpeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rightWheelSpeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'leftShoulderAngle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rightShoulderAngle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'leftElbowAngle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rightElbowAngle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'leftArmExtension))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rightArmExtension))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'leftGripperAngles))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'rightGripperAngles))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Movement>) istream)
  "Deserializes a message object of type '<Movement>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'leftWheelSpeed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rightWheelSpeed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'leftShoulderAngle) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rightShoulderAngle) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'leftElbowAngle) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rightElbowAngle) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'leftArmExtension) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rightArmExtension) (roslisp-utils:decode-double-float-bits bits)))
  (cl:setf (cl:slot-value msg 'leftGripperAngles) (cl:make-array 5))
  (cl:let ((vals (cl:slot-value msg 'leftGripperAngles)))
    (cl:dotimes (i 5)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'rightGripperAngles) (cl:make-array 5))
  (cl:let ((vals (cl:slot-value msg 'rightGripperAngles)))
    (cl:dotimes (i 5)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Movement>)))
  "Returns string type for a message object of type '<Movement>"
  "mmmros/Movement")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Movement)))
  "Returns string type for a message object of type 'Movement"
  "mmmros/Movement")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Movement>)))
  "Returns md5sum for a message object of type '<Movement>"
  "0b79e7ecaa7e231855c31617cdebe463")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Movement)))
  "Returns md5sum for a message object of type 'Movement"
  "0b79e7ecaa7e231855c31617cdebe463")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Movement>)))
  "Returns full string definition for message of type '<Movement>"
  (cl:format cl:nil "float64 leftWheelSpeed~%float64 rightWheelSpeed~%float64 leftShoulderAngle~%float64 rightShoulderAngle~%float64 leftElbowAngle~%float64 rightElbowAngle~%float64 leftArmExtension~%float64 rightArmExtension~%float64[5] leftGripperAngles~%float64[5] rightGripperAngles~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Movement)))
  "Returns full string definition for message of type 'Movement"
  (cl:format cl:nil "float64 leftWheelSpeed~%float64 rightWheelSpeed~%float64 leftShoulderAngle~%float64 rightShoulderAngle~%float64 leftElbowAngle~%float64 rightElbowAngle~%float64 leftArmExtension~%float64 rightArmExtension~%float64[5] leftGripperAngles~%float64[5] rightGripperAngles~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Movement>))
  (cl:+ 0
     8
     8
     8
     8
     8
     8
     8
     8
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'leftGripperAngles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'rightGripperAngles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Movement>))
  "Converts a ROS message object to a list"
  (cl:list 'Movement
    (cl:cons ':leftWheelSpeed (leftWheelSpeed msg))
    (cl:cons ':rightWheelSpeed (rightWheelSpeed msg))
    (cl:cons ':leftShoulderAngle (leftShoulderAngle msg))
    (cl:cons ':rightShoulderAngle (rightShoulderAngle msg))
    (cl:cons ':leftElbowAngle (leftElbowAngle msg))
    (cl:cons ':rightElbowAngle (rightElbowAngle msg))
    (cl:cons ':leftArmExtension (leftArmExtension msg))
    (cl:cons ':rightArmExtension (rightArmExtension msg))
    (cl:cons ':leftGripperAngles (leftGripperAngles msg))
    (cl:cons ':rightGripperAngles (rightGripperAngles msg))
))
