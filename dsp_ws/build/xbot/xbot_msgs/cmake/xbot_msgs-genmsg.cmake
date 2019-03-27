# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "xbot_msgs: 19 messages, 0 services")

set(MSG_I_FLAGS "-Ixbot_msgs:/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg;-Ixbot_msgs:/home/dsp/dsp_ws/devel/share/xbot_msgs/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/indigo/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(xbot_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/XbotState.msg" NAME_WE)
add_custom_target(_xbot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xbot_msgs" "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/XbotState.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/Echo.msg" NAME_WE)
add_custom_target(_xbot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xbot_msgs" "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/Echo.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/RawImu.msg" NAME_WE)
add_custom_target(_xbot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xbot_msgs" "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/RawImu.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingAction.msg" NAME_WE)
add_custom_target(_xbot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xbot_msgs" "/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingAction.msg" "xbot_msgs/AutoDockingActionGoal:xbot_msgs/AutoDockingActionResult:actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:xbot_msgs/AutoDockingResult:xbot_msgs/AutoDockingActionFeedback:std_msgs/Header:xbot_msgs/AutoDockingFeedback:xbot_msgs/AutoDockingGoal"
)

get_filename_component(_filename "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/InfraRed.msg" NAME_WE)
add_custom_target(_xbot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xbot_msgs" "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/InfraRed.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/FaceResult.msg" NAME_WE)
add_custom_target(_xbot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xbot_msgs" "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/FaceResult.msg" ""
)

get_filename_component(_filename "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/Battery.msg" NAME_WE)
add_custom_target(_xbot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xbot_msgs" "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/Battery.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingActionFeedback.msg" NAME_WE)
add_custom_target(_xbot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xbot_msgs" "/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingActionFeedback.msg" "actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:std_msgs/Header:xbot_msgs/AutoDockingFeedback"
)

get_filename_component(_filename "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/Imu.msg" NAME_WE)
add_custom_target(_xbot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xbot_msgs" "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/Imu.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingActionResult.msg" NAME_WE)
add_custom_target(_xbot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xbot_msgs" "/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingActionResult.msg" "actionlib_msgs/GoalStatus:xbot_msgs/AutoDockingResult:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingResult.msg" NAME_WE)
add_custom_target(_xbot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xbot_msgs" "/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingResult.msg" ""
)

get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingFeedback.msg" NAME_WE)
add_custom_target(_xbot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xbot_msgs" "/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingFeedback.msg" ""
)

get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingGoal.msg" NAME_WE)
add_custom_target(_xbot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xbot_msgs" "/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingGoal.msg" ""
)

get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingActionGoal.msg" NAME_WE)
add_custom_target(_xbot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xbot_msgs" "/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingActionGoal.msg" "actionlib_msgs/GoalID:std_msgs/Header:xbot_msgs/AutoDockingGoal"
)

get_filename_component(_filename "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/KeyboardInput.msg" NAME_WE)
add_custom_target(_xbot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xbot_msgs" "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/KeyboardInput.msg" ""
)

get_filename_component(_filename "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/ExtraSensor.msg" NAME_WE)
add_custom_target(_xbot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xbot_msgs" "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/ExtraSensor.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/NaviState.msg" NAME_WE)
add_custom_target(_xbot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xbot_msgs" "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/NaviState.msg" ""
)

get_filename_component(_filename "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/CoreSensor.msg" NAME_WE)
add_custom_target(_xbot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xbot_msgs" "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/CoreSensor.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/XbotPose.msg" NAME_WE)
add_custom_target(_xbot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "xbot_msgs" "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/XbotPose.msg" "std_msgs/Header"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(xbot_msgs
  "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/XbotState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xbot_msgs
)
_generate_msg_cpp(xbot_msgs
  "/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingResult.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xbot_msgs
)
_generate_msg_cpp(xbot_msgs
  "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/RawImu.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xbot_msgs
)
_generate_msg_cpp(xbot_msgs
  "/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingAction.msg"
  "${MSG_I_FLAGS}"
  "/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingActionGoal.msg;/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingActionResult.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingResult.msg;/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingActionFeedback.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingFeedback.msg;/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xbot_msgs
)
_generate_msg_cpp(xbot_msgs
  "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/InfraRed.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xbot_msgs
)
_generate_msg_cpp(xbot_msgs
  "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/FaceResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xbot_msgs
)
_generate_msg_cpp(xbot_msgs
  "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/Battery.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xbot_msgs
)
_generate_msg_cpp(xbot_msgs
  "/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xbot_msgs
)
_generate_msg_cpp(xbot_msgs
  "/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xbot_msgs
)
_generate_msg_cpp(xbot_msgs
  "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/Imu.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xbot_msgs
)
_generate_msg_cpp(xbot_msgs
  "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/Echo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xbot_msgs
)
_generate_msg_cpp(xbot_msgs
  "/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xbot_msgs
)
_generate_msg_cpp(xbot_msgs
  "/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xbot_msgs
)
_generate_msg_cpp(xbot_msgs
  "/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xbot_msgs
)
_generate_msg_cpp(xbot_msgs
  "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/KeyboardInput.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xbot_msgs
)
_generate_msg_cpp(xbot_msgs
  "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/ExtraSensor.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xbot_msgs
)
_generate_msg_cpp(xbot_msgs
  "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/NaviState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xbot_msgs
)
_generate_msg_cpp(xbot_msgs
  "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/CoreSensor.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xbot_msgs
)
_generate_msg_cpp(xbot_msgs
  "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/XbotPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xbot_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(xbot_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xbot_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(xbot_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(xbot_msgs_generate_messages xbot_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/XbotState.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_cpp _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/Echo.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_cpp _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/RawImu.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_cpp _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingAction.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_cpp _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/InfraRed.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_cpp _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/FaceResult.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_cpp _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/Battery.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_cpp _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingActionFeedback.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_cpp _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/Imu.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_cpp _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingActionResult.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_cpp _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingResult.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_cpp _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingFeedback.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_cpp _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingGoal.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_cpp _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingActionGoal.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_cpp _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/KeyboardInput.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_cpp _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/ExtraSensor.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_cpp _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/NaviState.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_cpp _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/CoreSensor.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_cpp _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/XbotPose.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_cpp _xbot_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(xbot_msgs_gencpp)
add_dependencies(xbot_msgs_gencpp xbot_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS xbot_msgs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(xbot_msgs
  "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/XbotState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xbot_msgs
)
_generate_msg_lisp(xbot_msgs
  "/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingResult.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xbot_msgs
)
_generate_msg_lisp(xbot_msgs
  "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/RawImu.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xbot_msgs
)
_generate_msg_lisp(xbot_msgs
  "/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingAction.msg"
  "${MSG_I_FLAGS}"
  "/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingActionGoal.msg;/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingActionResult.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingResult.msg;/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingActionFeedback.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingFeedback.msg;/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xbot_msgs
)
_generate_msg_lisp(xbot_msgs
  "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/InfraRed.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xbot_msgs
)
_generate_msg_lisp(xbot_msgs
  "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/FaceResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xbot_msgs
)
_generate_msg_lisp(xbot_msgs
  "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/Battery.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xbot_msgs
)
_generate_msg_lisp(xbot_msgs
  "/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xbot_msgs
)
_generate_msg_lisp(xbot_msgs
  "/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xbot_msgs
)
_generate_msg_lisp(xbot_msgs
  "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/Imu.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xbot_msgs
)
_generate_msg_lisp(xbot_msgs
  "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/Echo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xbot_msgs
)
_generate_msg_lisp(xbot_msgs
  "/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xbot_msgs
)
_generate_msg_lisp(xbot_msgs
  "/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xbot_msgs
)
_generate_msg_lisp(xbot_msgs
  "/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xbot_msgs
)
_generate_msg_lisp(xbot_msgs
  "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/KeyboardInput.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xbot_msgs
)
_generate_msg_lisp(xbot_msgs
  "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/ExtraSensor.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xbot_msgs
)
_generate_msg_lisp(xbot_msgs
  "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/NaviState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xbot_msgs
)
_generate_msg_lisp(xbot_msgs
  "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/CoreSensor.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xbot_msgs
)
_generate_msg_lisp(xbot_msgs
  "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/XbotPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xbot_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(xbot_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xbot_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(xbot_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(xbot_msgs_generate_messages xbot_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/XbotState.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_lisp _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/Echo.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_lisp _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/RawImu.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_lisp _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingAction.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_lisp _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/InfraRed.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_lisp _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/FaceResult.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_lisp _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/Battery.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_lisp _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingActionFeedback.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_lisp _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/Imu.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_lisp _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingActionResult.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_lisp _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingResult.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_lisp _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingFeedback.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_lisp _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingGoal.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_lisp _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingActionGoal.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_lisp _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/KeyboardInput.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_lisp _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/ExtraSensor.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_lisp _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/NaviState.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_lisp _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/CoreSensor.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_lisp _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/XbotPose.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_lisp _xbot_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(xbot_msgs_genlisp)
add_dependencies(xbot_msgs_genlisp xbot_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS xbot_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(xbot_msgs
  "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/XbotState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xbot_msgs
)
_generate_msg_py(xbot_msgs
  "/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingResult.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xbot_msgs
)
_generate_msg_py(xbot_msgs
  "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/RawImu.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xbot_msgs
)
_generate_msg_py(xbot_msgs
  "/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingAction.msg"
  "${MSG_I_FLAGS}"
  "/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingActionGoal.msg;/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingActionResult.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingResult.msg;/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingActionFeedback.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingFeedback.msg;/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xbot_msgs
)
_generate_msg_py(xbot_msgs
  "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/InfraRed.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xbot_msgs
)
_generate_msg_py(xbot_msgs
  "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/FaceResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xbot_msgs
)
_generate_msg_py(xbot_msgs
  "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/Battery.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xbot_msgs
)
_generate_msg_py(xbot_msgs
  "/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xbot_msgs
)
_generate_msg_py(xbot_msgs
  "/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xbot_msgs
)
_generate_msg_py(xbot_msgs
  "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/Imu.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xbot_msgs
)
_generate_msg_py(xbot_msgs
  "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/Echo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xbot_msgs
)
_generate_msg_py(xbot_msgs
  "/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xbot_msgs
)
_generate_msg_py(xbot_msgs
  "/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xbot_msgs
)
_generate_msg_py(xbot_msgs
  "/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xbot_msgs
)
_generate_msg_py(xbot_msgs
  "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/KeyboardInput.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xbot_msgs
)
_generate_msg_py(xbot_msgs
  "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/ExtraSensor.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xbot_msgs
)
_generate_msg_py(xbot_msgs
  "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/NaviState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xbot_msgs
)
_generate_msg_py(xbot_msgs
  "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/CoreSensor.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xbot_msgs
)
_generate_msg_py(xbot_msgs
  "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/XbotPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xbot_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(xbot_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xbot_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(xbot_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(xbot_msgs_generate_messages xbot_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/XbotState.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_py _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/Echo.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_py _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/RawImu.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_py _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingAction.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_py _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/InfraRed.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_py _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/FaceResult.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_py _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/Battery.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_py _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingActionFeedback.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_py _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/Imu.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_py _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingActionResult.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_py _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingResult.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_py _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingFeedback.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_py _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingGoal.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_py _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/xbot_msgs/msg/AutoDockingActionGoal.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_py _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/KeyboardInput.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_py _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/ExtraSensor.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_py _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/NaviState.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_py _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/CoreSensor.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_py _xbot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/src/xbot/xbot_msgs/msg/XbotPose.msg" NAME_WE)
add_dependencies(xbot_msgs_generate_messages_py _xbot_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(xbot_msgs_genpy)
add_dependencies(xbot_msgs_genpy xbot_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS xbot_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xbot_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/xbot_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(xbot_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(xbot_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xbot_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/xbot_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(xbot_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(xbot_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xbot_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xbot_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/xbot_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(xbot_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(xbot_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
