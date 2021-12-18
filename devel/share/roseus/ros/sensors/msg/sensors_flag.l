;; Auto-generated. Do not edit!


(when (boundp 'sensors::sensors_flag)
  (if (not (find-package "SENSORS"))
    (make-package "SENSORS"))
  (shadow 'sensors_flag (find-package "SENSORS")))
(unless (find-package "SENSORS::SENSORS_FLAG")
  (make-package "SENSORS::SENSORS_FLAG"))

(in-package "ROS")
;;//! \htmlinclude sensors_flag.msg.html


(defclass sensors::sensors_flag
  :super ros::object
  :slots (_flag ))

(defmethod sensors::sensors_flag
  (:init
   (&key
    ((:flag __flag) 0)
    )
   (send-super :init)
   (setq _flag (round __flag))
   self)
  (:flag
   (&optional __flag)
   (if __flag (setq _flag __flag)) _flag)
  (:serialization-length
   ()
   (+
    ;; int64 _flag
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _flag
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _flag (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _flag) (= (length (_flag . bv)) 2)) ;; bignum
              (write-long (ash (elt (_flag . bv) 0) 0) s)
              (write-long (ash (elt (_flag . bv) 1) -1) s))
             ((and (class _flag) (= (length (_flag . bv)) 1)) ;; big1
              (write-long (elt (_flag . bv) 0) s)
              (write-long (if (>= _flag 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _flag s)(write-long (if (>= _flag 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _flag
#+(or :alpha :irix6 :x86_64)
      (setf _flag (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _flag (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(setf (get sensors::sensors_flag :md5sum-) "87ee459c4b4bcda4c5ae0619ce324ea2")
(setf (get sensors::sensors_flag :datatype-) "sensors/sensors_flag")
(setf (get sensors::sensors_flag :definition-)
      "int64 flag

")



(provide :sensors/sensors_flag "87ee459c4b4bcda4c5ae0619ce324ea2")


