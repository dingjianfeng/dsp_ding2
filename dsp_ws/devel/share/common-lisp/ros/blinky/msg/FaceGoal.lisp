; Auto-generated. Do not edit!


(cl:in-package blinky-msg)


;//! \htmlinclude FaceGoal.msg.html

(cl:defclass <FaceGoal> (roslisp-msg-protocol:ros-message)
  ((display_type
    :reader display_type
    :initarg :display_type
    :type cl:string
    :initform "")
   (h1_text
    :reader h1_text
    :initarg :h1_text
    :type cl:string
    :initform "")
   (h2_text
    :reader h2_text
    :initarg :h2_text
    :type cl:string
    :initform "")
   (question
    :reader question
    :initarg :question
    :type cl:string
    :initform "")
   (choices
    :reader choices
    :initarg :choices
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass FaceGoal (<FaceGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FaceGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FaceGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name blinky-msg:<FaceGoal> is deprecated: use blinky-msg:FaceGoal instead.")))

(cl:ensure-generic-function 'display_type-val :lambda-list '(m))
(cl:defmethod display_type-val ((m <FaceGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader blinky-msg:display_type-val is deprecated.  Use blinky-msg:display_type instead.")
  (display_type m))

(cl:ensure-generic-function 'h1_text-val :lambda-list '(m))
(cl:defmethod h1_text-val ((m <FaceGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader blinky-msg:h1_text-val is deprecated.  Use blinky-msg:h1_text instead.")
  (h1_text m))

(cl:ensure-generic-function 'h2_text-val :lambda-list '(m))
(cl:defmethod h2_text-val ((m <FaceGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader blinky-msg:h2_text-val is deprecated.  Use blinky-msg:h2_text instead.")
  (h2_text m))

(cl:ensure-generic-function 'question-val :lambda-list '(m))
(cl:defmethod question-val ((m <FaceGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader blinky-msg:question-val is deprecated.  Use blinky-msg:question instead.")
  (question m))

(cl:ensure-generic-function 'choices-val :lambda-list '(m))
(cl:defmethod choices-val ((m <FaceGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader blinky-msg:choices-val is deprecated.  Use blinky-msg:choices instead.")
  (choices m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<FaceGoal>)))
    "Constants for message type '<FaceGoal>"
  '((:DEFAULT . default)
    (:DISPLAY_MESSAGE . displayMessage)
    (:ASK_CHOICE . askMultipleChoice))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'FaceGoal)))
    "Constants for message type 'FaceGoal"
  '((:DEFAULT . default)
    (:DISPLAY_MESSAGE . displayMessage)
    (:ASK_CHOICE . askMultipleChoice))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FaceGoal>) ostream)
  "Serializes a message object of type '<FaceGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'display_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'display_type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'h1_text))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'h1_text))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'h2_text))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'h2_text))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'question))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'question))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'choices))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'choices))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FaceGoal>) istream)
  "Deserializes a message object of type '<FaceGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'display_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'display_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'h1_text) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'h1_text) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'h2_text) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'h2_text) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'question) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'question) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'choices) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'choices)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FaceGoal>)))
  "Returns string type for a message object of type '<FaceGoal>"
  "blinky/FaceGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FaceGoal)))
  "Returns string type for a message object of type 'FaceGoal"
  "blinky/FaceGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FaceGoal>)))
  "Returns md5sum for a message object of type '<FaceGoal>"
  "982c53d2a7301939450af501833b474b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FaceGoal)))
  "Returns md5sum for a message object of type 'FaceGoal"
  "982c53d2a7301939450af501833b474b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FaceGoal>)))
  "Returns full string definition for message of type '<FaceGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%string display_type # See display type constants.~%string h1_text # Large, headline text.~%string h2_text # Regular-sized text.~%string question # The question to ask to the user.~%string[] choices # Choices for multiple choice question.~%~%# Display types.~%string DEFAULT = default~%string DISPLAY_MESSAGE = displayMessage~%string ASK_CHOICE = askMultipleChoice~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FaceGoal)))
  "Returns full string definition for message of type 'FaceGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%string display_type # See display type constants.~%string h1_text # Large, headline text.~%string h2_text # Regular-sized text.~%string question # The question to ask to the user.~%string[] choices # Choices for multiple choice question.~%~%# Display types.~%string DEFAULT = default~%string DISPLAY_MESSAGE = displayMessage~%string ASK_CHOICE = askMultipleChoice~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FaceGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'display_type))
     4 (cl:length (cl:slot-value msg 'h1_text))
     4 (cl:length (cl:slot-value msg 'h2_text))
     4 (cl:length (cl:slot-value msg 'question))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'choices) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FaceGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'FaceGoal
    (cl:cons ':display_type (display_type msg))
    (cl:cons ':h1_text (h1_text msg))
    (cl:cons ':h2_text (h2_text msg))
    (cl:cons ':question (question msg))
    (cl:cons ':choices (choices msg))
))
