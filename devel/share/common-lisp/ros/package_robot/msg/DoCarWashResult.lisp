; Auto-generated. Do not edit!


(cl:in-package package_robot-msg)


;//! \htmlinclude DoCarWashResult.msg.html

(cl:defclass <DoCarWashResult> (roslisp-msg-protocol:ros-message)
  ((total_cars_cleaned
    :reader total_cars_cleaned
    :initarg :total_cars_cleaned
    :type cl:integer
    :initform 0))
)

(cl:defclass DoCarWashResult (<DoCarWashResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DoCarWashResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DoCarWashResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name package_robot-msg:<DoCarWashResult> is deprecated: use package_robot-msg:DoCarWashResult instead.")))

(cl:ensure-generic-function 'total_cars_cleaned-val :lambda-list '(m))
(cl:defmethod total_cars_cleaned-val ((m <DoCarWashResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader package_robot-msg:total_cars_cleaned-val is deprecated.  Use package_robot-msg:total_cars_cleaned instead.")
  (total_cars_cleaned m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DoCarWashResult>) ostream)
  "Serializes a message object of type '<DoCarWashResult>"
  (cl:let* ((signed (cl:slot-value msg 'total_cars_cleaned)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DoCarWashResult>) istream)
  "Deserializes a message object of type '<DoCarWashResult>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'total_cars_cleaned) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DoCarWashResult>)))
  "Returns string type for a message object of type '<DoCarWashResult>"
  "package_robot/DoCarWashResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DoCarWashResult)))
  "Returns string type for a message object of type 'DoCarWashResult"
  "package_robot/DoCarWashResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DoCarWashResult>)))
  "Returns md5sum for a message object of type '<DoCarWashResult>"
  "2977e980bbc096b3b3c2043d941b53ab")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DoCarWashResult)))
  "Returns md5sum for a message object of type 'DoCarWashResult"
  "2977e980bbc096b3b3c2043d941b53ab")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DoCarWashResult>)))
  "Returns full string definition for message of type '<DoCarWashResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result~%int32 total_cars_cleaned~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DoCarWashResult)))
  "Returns full string definition for message of type 'DoCarWashResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result~%int32 total_cars_cleaned~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DoCarWashResult>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DoCarWashResult>))
  "Converts a ROS message object to a list"
  (cl:list 'DoCarWashResult
    (cl:cons ':total_cars_cleaned (total_cars_cleaned msg))
))
