# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "blinky: 7 messages, 0 services")

set(MSG_I_FLAGS "-Iblinky:/home/dsp/dsp_ws/devel/share/blinky/msg;-Iactionlib_msgs:/opt/ros/indigo/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(blinky_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceActionGoal.msg" NAME_WE)
add_custom_target(_blinky_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "blinky" "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceActionGoal.msg" "blinky/FaceGoal:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceAction.msg" NAME_WE)
add_custom_target(_blinky_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "blinky" "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceAction.msg" "blinky/FaceActionGoal:actionlib_msgs/GoalStatus:blinky/FaceFeedback:actionlib_msgs/GoalID:blinky/FaceActionFeedback:blinky/FaceActionResult:std_msgs/Header:blinky/FaceGoal:blinky/FaceResult"
)

get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceGoal.msg" NAME_WE)
add_custom_target(_blinky_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "blinky" "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceGoal.msg" ""
)

get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceFeedback.msg" NAME_WE)
add_custom_target(_blinky_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "blinky" "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceFeedback.msg" ""
)

get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceActionFeedback.msg" NAME_WE)
add_custom_target(_blinky_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "blinky" "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceActionFeedback.msg" "actionlib_msgs/GoalStatus:blinky/FaceFeedback:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceActionResult.msg" NAME_WE)
add_custom_target(_blinky_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "blinky" "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceActionResult.msg" "actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:std_msgs/Header:blinky/FaceResult"
)

get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceResult.msg" NAME_WE)
add_custom_target(_blinky_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "blinky" "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceResult.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(blinky
  "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/blinky
)
_generate_msg_cpp(blinky
  "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/blinky
)
_generate_msg_cpp(blinky
  "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/blinky
)
_generate_msg_cpp(blinky
  "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/dsp/dsp_ws/devel/share/blinky/msg/FaceFeedback.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/blinky
)
_generate_msg_cpp(blinky
  "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/dsp/dsp_ws/devel/share/blinky/msg/FaceResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/blinky
)
_generate_msg_cpp(blinky
  "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/blinky
)
_generate_msg_cpp(blinky
  "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceAction.msg"
  "${MSG_I_FLAGS}"
  "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceActionGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/dsp/dsp_ws/devel/share/blinky/msg/FaceFeedback.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/dsp/dsp_ws/devel/share/blinky/msg/FaceActionFeedback.msg;/home/dsp/dsp_ws/devel/share/blinky/msg/FaceActionResult.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/dsp/dsp_ws/devel/share/blinky/msg/FaceGoal.msg;/home/dsp/dsp_ws/devel/share/blinky/msg/FaceResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/blinky
)

### Generating Services

### Generating Module File
_generate_module_cpp(blinky
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/blinky
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(blinky_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(blinky_generate_messages blinky_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceActionGoal.msg" NAME_WE)
add_dependencies(blinky_generate_messages_cpp _blinky_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceAction.msg" NAME_WE)
add_dependencies(blinky_generate_messages_cpp _blinky_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceGoal.msg" NAME_WE)
add_dependencies(blinky_generate_messages_cpp _blinky_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceFeedback.msg" NAME_WE)
add_dependencies(blinky_generate_messages_cpp _blinky_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceActionFeedback.msg" NAME_WE)
add_dependencies(blinky_generate_messages_cpp _blinky_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceActionResult.msg" NAME_WE)
add_dependencies(blinky_generate_messages_cpp _blinky_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceResult.msg" NAME_WE)
add_dependencies(blinky_generate_messages_cpp _blinky_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(blinky_gencpp)
add_dependencies(blinky_gencpp blinky_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS blinky_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(blinky
  "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/blinky
)
_generate_msg_lisp(blinky
  "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/blinky
)
_generate_msg_lisp(blinky
  "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/blinky
)
_generate_msg_lisp(blinky
  "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/dsp/dsp_ws/devel/share/blinky/msg/FaceFeedback.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/blinky
)
_generate_msg_lisp(blinky
  "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/dsp/dsp_ws/devel/share/blinky/msg/FaceResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/blinky
)
_generate_msg_lisp(blinky
  "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/blinky
)
_generate_msg_lisp(blinky
  "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceAction.msg"
  "${MSG_I_FLAGS}"
  "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceActionGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/dsp/dsp_ws/devel/share/blinky/msg/FaceFeedback.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/dsp/dsp_ws/devel/share/blinky/msg/FaceActionFeedback.msg;/home/dsp/dsp_ws/devel/share/blinky/msg/FaceActionResult.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/dsp/dsp_ws/devel/share/blinky/msg/FaceGoal.msg;/home/dsp/dsp_ws/devel/share/blinky/msg/FaceResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/blinky
)

### Generating Services

### Generating Module File
_generate_module_lisp(blinky
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/blinky
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(blinky_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(blinky_generate_messages blinky_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceActionGoal.msg" NAME_WE)
add_dependencies(blinky_generate_messages_lisp _blinky_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceAction.msg" NAME_WE)
add_dependencies(blinky_generate_messages_lisp _blinky_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceGoal.msg" NAME_WE)
add_dependencies(blinky_generate_messages_lisp _blinky_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceFeedback.msg" NAME_WE)
add_dependencies(blinky_generate_messages_lisp _blinky_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceActionFeedback.msg" NAME_WE)
add_dependencies(blinky_generate_messages_lisp _blinky_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceActionResult.msg" NAME_WE)
add_dependencies(blinky_generate_messages_lisp _blinky_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceResult.msg" NAME_WE)
add_dependencies(blinky_generate_messages_lisp _blinky_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(blinky_genlisp)
add_dependencies(blinky_genlisp blinky_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS blinky_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(blinky
  "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/blinky
)
_generate_msg_py(blinky
  "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/blinky
)
_generate_msg_py(blinky
  "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/blinky
)
_generate_msg_py(blinky
  "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/dsp/dsp_ws/devel/share/blinky/msg/FaceFeedback.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/blinky
)
_generate_msg_py(blinky
  "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/dsp/dsp_ws/devel/share/blinky/msg/FaceResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/blinky
)
_generate_msg_py(blinky
  "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/blinky
)
_generate_msg_py(blinky
  "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceAction.msg"
  "${MSG_I_FLAGS}"
  "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceActionGoal.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/dsp/dsp_ws/devel/share/blinky/msg/FaceFeedback.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/dsp/dsp_ws/devel/share/blinky/msg/FaceActionFeedback.msg;/home/dsp/dsp_ws/devel/share/blinky/msg/FaceActionResult.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/dsp/dsp_ws/devel/share/blinky/msg/FaceGoal.msg;/home/dsp/dsp_ws/devel/share/blinky/msg/FaceResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/blinky
)

### Generating Services

### Generating Module File
_generate_module_py(blinky
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/blinky
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(blinky_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(blinky_generate_messages blinky_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceActionGoal.msg" NAME_WE)
add_dependencies(blinky_generate_messages_py _blinky_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceAction.msg" NAME_WE)
add_dependencies(blinky_generate_messages_py _blinky_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceGoal.msg" NAME_WE)
add_dependencies(blinky_generate_messages_py _blinky_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceFeedback.msg" NAME_WE)
add_dependencies(blinky_generate_messages_py _blinky_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceActionFeedback.msg" NAME_WE)
add_dependencies(blinky_generate_messages_py _blinky_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceActionResult.msg" NAME_WE)
add_dependencies(blinky_generate_messages_py _blinky_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/blinky/msg/FaceResult.msg" NAME_WE)
add_dependencies(blinky_generate_messages_py _blinky_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(blinky_genpy)
add_dependencies(blinky_genpy blinky_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS blinky_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/blinky)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/blinky
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(blinky_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/blinky)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/blinky
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(blinky_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/blinky)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/blinky\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/blinky
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(blinky_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
