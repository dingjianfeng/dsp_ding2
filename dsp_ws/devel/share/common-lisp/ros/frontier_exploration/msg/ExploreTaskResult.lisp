; Auto-generated. Do not edit!


(cl:in-package frontier_exploration-msg)


;//! \htmlinclude ExploreTaskResult.msg.html

(cl:defclass <ExploreTaskResult> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ExploreTaskResult (<ExploreTaskResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExploreTaskResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExploreTaskResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name frontier_exploration-msg:<ExploreTaskResult> is deprecated: use frontier_exploration-msg:ExploreTaskResult instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExploreTaskResult>) ostream)
  "Serializes a message object of type '<ExploreTaskResult>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExploreTaskResult>) istream)
  "Deserializes a message object of type '<ExploreTaskResult>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExploreTaskResult>)))
  "Returns string type for a message object of type '<ExploreTaskResult>"
  "frontier_exploration/ExploreTaskResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExploreTaskResult)))
  "Returns string type for a message object of type 'ExploreTaskResult"
  "frontier_exploration/ExploreTaskResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExploreTaskResult>)))
  "Returns md5sum for a message object of type '<ExploreTaskResult>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExploreTaskResult)))
  "Returns md5sum for a message object of type 'ExploreTaskResult"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExploreTaskResult>)))
  "Returns full string definition for message of type '<ExploreTaskResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExploreTaskResult)))
  "Returns full string definition for message of type 'ExploreTaskResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExploreTaskResult>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExploreTaskResult>))
  "Converts a ROS message object to a list"
  (cl:list 'ExploreTaskResult
))