
(cl:in-package :asdf)

(defsystem "blinky-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "FaceFeedback" :depends-on ("_package_FaceFeedback"))
    (:file "_package_FaceFeedback" :depends-on ("_package"))
    (:file "FaceActionFeedback" :depends-on ("_package_FaceActionFeedback"))
    (:file "_package_FaceActionFeedback" :depends-on ("_package"))
    (:file "FaceActionResult" :depends-on ("_package_FaceActionResult"))
    (:file "_package_FaceActionResult" :depends-on ("_package"))
    (:file "FaceAction" :depends-on ("_package_FaceAction"))
    (:file "_package_FaceAction" :depends-on ("_package"))
    (:file "FaceGoal" :depends-on ("_package_FaceGoal"))
    (:file "_package_FaceGoal" :depends-on ("_package"))
    (:file "FaceActionGoal" :depends-on ("_package_FaceActionGoal"))
    (:file "_package_FaceActionGoal" :depends-on ("_package"))
    (:file "FaceResult" :depends-on ("_package_FaceResult"))
    (:file "_package_FaceResult" :depends-on ("_package"))
  ))