;; Auto-generated. Do not edit!


(when (boundp 'package_robot::DoCarWashResult)
  (if (not (find-package "PACKAGE_ROBOT"))
    (make-package "PACKAGE_ROBOT"))
  (shadow 'DoCarWashResult (find-package "PACKAGE_ROBOT")))
(unless (find-package "PACKAGE_ROBOT::DOCARWASHRESULT")
  (make-package "PACKAGE_ROBOT::DOCARWASHRESULT"))

(in-package "ROS")
;;//! \htmlinclude DoCarWashResult.msg.html


(defclass package_robot::DoCarWashResult
  :super ros::object
  :slots (_total_cars_cleaned ))

(defmethod package_robot::DoCarWashResult
  (:init
   (&key
    ((:total_cars_cleaned __total_cars_cleaned) 0)
    )
   (send-super :init)
   (setq _total_cars_cleaned (round __total_cars_cleaned))
   self)
  (:total_cars_cleaned
   (&optional __total_cars_cleaned)
   (if __total_cars_cleaned (setq _total_cars_cleaned __total_cars_cleaned)) _total_cars_cleaned)
  (:serialization-length
   ()
   (+
    ;; int32 _total_cars_cleaned
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _total_cars_cleaned
       (write-long _total_cars_cleaned s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _total_cars_cleaned
     (setq _total_cars_cleaned (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get package_robot::DoCarWashResult :md5sum-) "2977e980bbc096b3b3c2043d941b53ab")
(setf (get package_robot::DoCarWashResult :datatype-) "package_robot/DoCarWashResult")
(setf (get package_robot::DoCarWashResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#result
int32 total_cars_cleaned

")



(provide :package_robot/DoCarWashResult "2977e980bbc096b3b3c2043d941b53ab")


