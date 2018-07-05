;; Auto-generated. Do not edit!


(when (boundp 'mmmros::Movement)
  (if (not (find-package "MMMROS"))
    (make-package "MMMROS"))
  (shadow 'Movement (find-package "MMMROS")))
(unless (find-package "MMMROS::MOVEMENT")
  (make-package "MMMROS::MOVEMENT"))

(in-package "ROS")
;;//! \htmlinclude Movement.msg.html


(defclass mmmros::Movement
  :super ros::object
  :slots (_leftWheelSpeed _rightWheelSpeed _leftShoulderAngle _rightShoulderAngle _leftElbowAngle _rightElbowAngle _leftArmExtension _rightArmExtension _leftGripperAngles _rightGripperAngles ))

(defmethod mmmros::Movement
  (:init
   (&key
    ((:leftWheelSpeed __leftWheelSpeed) 0.0)
    ((:rightWheelSpeed __rightWheelSpeed) 0.0)
    ((:leftShoulderAngle __leftShoulderAngle) 0.0)
    ((:rightShoulderAngle __rightShoulderAngle) 0.0)
    ((:leftElbowAngle __leftElbowAngle) 0.0)
    ((:rightElbowAngle __rightElbowAngle) 0.0)
    ((:leftArmExtension __leftArmExtension) 0.0)
    ((:rightArmExtension __rightArmExtension) 0.0)
    ((:leftGripperAngles __leftGripperAngles) (make-array 5 :initial-element 0.0 :element-type :float))
    ((:rightGripperAngles __rightGripperAngles) (make-array 5 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _leftWheelSpeed (float __leftWheelSpeed))
   (setq _rightWheelSpeed (float __rightWheelSpeed))
   (setq _leftShoulderAngle (float __leftShoulderAngle))
   (setq _rightShoulderAngle (float __rightShoulderAngle))
   (setq _leftElbowAngle (float __leftElbowAngle))
   (setq _rightElbowAngle (float __rightElbowAngle))
   (setq _leftArmExtension (float __leftArmExtension))
   (setq _rightArmExtension (float __rightArmExtension))
   (setq _leftGripperAngles __leftGripperAngles)
   (setq _rightGripperAngles __rightGripperAngles)
   self)
  (:leftWheelSpeed
   (&optional __leftWheelSpeed)
   (if __leftWheelSpeed (setq _leftWheelSpeed __leftWheelSpeed)) _leftWheelSpeed)
  (:rightWheelSpeed
   (&optional __rightWheelSpeed)
   (if __rightWheelSpeed (setq _rightWheelSpeed __rightWheelSpeed)) _rightWheelSpeed)
  (:leftShoulderAngle
   (&optional __leftShoulderAngle)
   (if __leftShoulderAngle (setq _leftShoulderAngle __leftShoulderAngle)) _leftShoulderAngle)
  (:rightShoulderAngle
   (&optional __rightShoulderAngle)
   (if __rightShoulderAngle (setq _rightShoulderAngle __rightShoulderAngle)) _rightShoulderAngle)
  (:leftElbowAngle
   (&optional __leftElbowAngle)
   (if __leftElbowAngle (setq _leftElbowAngle __leftElbowAngle)) _leftElbowAngle)
  (:rightElbowAngle
   (&optional __rightElbowAngle)
   (if __rightElbowAngle (setq _rightElbowAngle __rightElbowAngle)) _rightElbowAngle)
  (:leftArmExtension
   (&optional __leftArmExtension)
   (if __leftArmExtension (setq _leftArmExtension __leftArmExtension)) _leftArmExtension)
  (:rightArmExtension
   (&optional __rightArmExtension)
   (if __rightArmExtension (setq _rightArmExtension __rightArmExtension)) _rightArmExtension)
  (:leftGripperAngles
   (&optional __leftGripperAngles)
   (if __leftGripperAngles (setq _leftGripperAngles __leftGripperAngles)) _leftGripperAngles)
  (:rightGripperAngles
   (&optional __rightGripperAngles)
   (if __rightGripperAngles (setq _rightGripperAngles __rightGripperAngles)) _rightGripperAngles)
  (:serialization-length
   ()
   (+
    ;; float64 _leftWheelSpeed
    8
    ;; float64 _rightWheelSpeed
    8
    ;; float64 _leftShoulderAngle
    8
    ;; float64 _rightShoulderAngle
    8
    ;; float64 _leftElbowAngle
    8
    ;; float64 _rightElbowAngle
    8
    ;; float64 _leftArmExtension
    8
    ;; float64 _rightArmExtension
    8
    ;; float64[5] _leftGripperAngles
    (* 8    5)
    ;; float64[5] _rightGripperAngles
    (* 8    5)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _leftWheelSpeed
       (sys::poke _leftWheelSpeed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rightWheelSpeed
       (sys::poke _rightWheelSpeed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _leftShoulderAngle
       (sys::poke _leftShoulderAngle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rightShoulderAngle
       (sys::poke _rightShoulderAngle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _leftElbowAngle
       (sys::poke _leftElbowAngle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rightElbowAngle
       (sys::poke _rightElbowAngle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _leftArmExtension
       (sys::poke _leftArmExtension (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rightArmExtension
       (sys::poke _rightArmExtension (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[5] _leftGripperAngles
     (dotimes (i 5)
       (sys::poke (elt _leftGripperAngles i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[5] _rightGripperAngles
     (dotimes (i 5)
       (sys::poke (elt _rightGripperAngles i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _leftWheelSpeed
     (setq _leftWheelSpeed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rightWheelSpeed
     (setq _rightWheelSpeed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _leftShoulderAngle
     (setq _leftShoulderAngle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rightShoulderAngle
     (setq _rightShoulderAngle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _leftElbowAngle
     (setq _leftElbowAngle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rightElbowAngle
     (setq _rightElbowAngle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _leftArmExtension
     (setq _leftArmExtension (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rightArmExtension
     (setq _rightArmExtension (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[5] _leftGripperAngles
   (dotimes (i (length _leftGripperAngles))
     (setf (elt _leftGripperAngles i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[5] _rightGripperAngles
   (dotimes (i (length _rightGripperAngles))
     (setf (elt _rightGripperAngles i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get mmmros::Movement :md5sum-) "0b79e7ecaa7e231855c31617cdebe463")
(setf (get mmmros::Movement :datatype-) "mmmros/Movement")
(setf (get mmmros::Movement :definition-)
      "float64 leftWheelSpeed
float64 rightWheelSpeed
float64 leftShoulderAngle
float64 rightShoulderAngle
float64 leftElbowAngle
float64 rightElbowAngle
float64 leftArmExtension
float64 rightArmExtension
float64[5] leftGripperAngles
float64[5] rightGripperAngles

")



(provide :mmmros/Movement "0b79e7ecaa7e231855c31617cdebe463")


