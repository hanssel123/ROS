; Auto-generated. Do not edit!


(cl:in-package package_robot-msg)


;//! \htmlinclude DoCarWashGoal.msg.html

(cl:defclass <DoCarWashGoal> (roslisp-msg-protocol:ros-message)
  ((number_of_cars
    :reader number_of_cars
    :initarg :number_of_cars
    :type cl:integer
    :initform 0))
)

(cl:defclass DoCarWashGoal (<DoCarWashGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DoCarWashGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DoCarWashGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name package_robot-msg:<DoCarWashGoal> is deprecated: use package_robot-msg:DoCarWashGoal instead.")))

(cl:ensure-generic-function 'number_of_cars-val :lambda-list '(m))
(cl:defmethod number_of_cars-val ((m <DoCarWashGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader package_robot-msg:number_of_cars-val is deprecated.  Use package_robot-msg:number_of_cars instead.")
  (number_of_cars m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DoCarWashGoal>) ostream)
  "Serializes a message object of type '<DoCarWashGoal>"
  (cl:let* ((signed (cl:slot-value msg 'number_of_cars)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DoCarWashGoal>) istream)
  "Deserializes a message object of type '<DoCarWashGoal>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'number_of_cars) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DoCarWashGoal>)))
  "Returns string type for a message object of type '<DoCarWashGoal>"
  "package_robot/DoCarWashGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DoCarWashGoal)))
  "Returns string type for a message object of type 'DoCarWashGoal"
  "package_robot/DoCarWashGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DoCarWashGoal>)))
  "Returns md5sum for a message object of type '<DoCarWashGoal>"
  "33bb64012f135ffd1019c71227972263")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DoCarWashGoal)))
  "Returns md5sum for a message object of type 'DoCarWashGoal"
  "33bb64012f135ffd1019c71227972263")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DoCarWashGoal>)))
  "Returns full string definition for message of type '<DoCarWashGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal~%int32 number_of_cars~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DoCarWashGoal)))
  "Returns full string definition for message of type 'DoCarWashGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal~%int32 number_of_cars~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DoCarWashGoal>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DoCarWashGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'DoCarWashGoal
    (cl:cons ':number_of_cars (number_of_cars msg))
))
