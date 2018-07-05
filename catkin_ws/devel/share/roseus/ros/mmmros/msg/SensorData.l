;; Auto-generated. Do not edit!


(when (boundp 'mmmros::SensorData)
  (if (not (find-package "MMMROS"))
    (make-package "MMMROS"))
  (shadow 'SensorData (find-package "MMMROS")))
(unless (find-package "MMMROS::SENSORDATA")
  (make-package "MMMROS::SENSORDATA"))

(in-package "ROS")
;;//! \htmlinclude SensorData.msg.html


(defclass mmmros::SensorData
  :super ros::object
  :slots (_leftRange _rightRange ))

(defmethod mmmros::SensorData
  (:init
   (&key
    ((:leftRange __leftRange) 0)
    ((:rightRange __rightRange) 0)
    )
   (send-super :init)
   (setq _leftRange (round __leftRange))
   (setq _rightRange (round __rightRange))
   self)
  (:leftRange
   (&optional __leftRange)
   (if __leftRange (setq _leftRange __leftRange)) _leftRange)
  (:rightRange
   (&optional __rightRange)
   (if __rightRange (setq _rightRange __rightRange)) _rightRange)
  (:serialization-length
   ()
   (+
    ;; int64 _leftRange
    8
    ;; int64 _rightRange
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _leftRange
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _leftRange (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _leftRange) (= (length (_leftRange . bv)) 2)) ;; bignum
              (write-long (ash (elt (_leftRange . bv) 0) 0) s)
              (write-long (ash (elt (_leftRange . bv) 1) -1) s))
             ((and (class _leftRange) (= (length (_leftRange . bv)) 1)) ;; big1
              (write-long (elt (_leftRange . bv) 0) s)
              (write-long (if (>= _leftRange 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _leftRange s)(write-long (if (>= _leftRange 0) 0 #xffffffff) s)))
     ;; int64 _rightRange
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _rightRange (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _rightRange) (= (length (_rightRange . bv)) 2)) ;; bignum
              (write-long (ash (elt (_rightRange . bv) 0) 0) s)
              (write-long (ash (elt (_rightRange . bv) 1) -1) s))
             ((and (class _rightRange) (= (length (_rightRange . bv)) 1)) ;; big1
              (write-long (elt (_rightRange . bv) 0) s)
              (write-long (if (>= _rightRange 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _rightRange s)(write-long (if (>= _rightRange 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _leftRange
#+(or :alpha :irix6 :x86_64)
      (setf _leftRange (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _leftRange (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _rightRange
#+(or :alpha :irix6 :x86_64)
      (setf _rightRange (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _rightRange (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get mmmros::SensorData :md5sum-) "b1c36752ab3b6f5eff0925b1e6157daa")
(setf (get mmmros::SensorData :datatype-) "mmmros/SensorData")
(setf (get mmmros::SensorData :definition-)
      "int64 leftRange
int64 rightRange

")



(provide :mmmros/SensorData "b1c36752ab3b6f5eff0925b1e6157daa")


