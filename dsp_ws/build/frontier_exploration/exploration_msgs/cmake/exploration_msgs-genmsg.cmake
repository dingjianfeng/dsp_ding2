# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "exploration_msgs: 7 messages, 1 services")

set(MSG_I_FLAGS "-Iexploration_msgs:/home/dsp/dsp_ws/devel/share/exploration_msgs/msg;-Iactionlib_msgs:/opt/ros/indigo/share/actionlib_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(exploration_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreActionGoal.msg" NAME_WE)
add_custom_target(_exploration_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "exploration_msgs" "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreActionGoal.msg" "exploration_msgs/ExploreGoal:geometry_msgs/Polygon:actionlib_msgs/GoalID:geometry_msgs/PolygonStamped:geometry_msgs/Point32:std_msgs/Header:geometry_msgs/Point:geometry_msgs/PointStamped"
)

get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreGoal.msg" NAME_WE)
add_custom_target(_exploration_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "exploration_msgs" "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreGoal.msg" "geometry_msgs/Point:geometry_msgs/PolygonStamped:geometry_msgs/Point32:std_msgs/Header:geometry_msgs/PointStamped:geometry_msgs/Polygon"
)

get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreAction.msg" NAME_WE)
add_custom_target(_exploration_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "exploration_msgs" "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreAction.msg" "exploration_msgs/ExploreGoal:geometry_msgs/Polygon:geometry_msgs/Quaternion:actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:geometry_msgs/PolygonStamped:geometry_msgs/Pose:exploration_msgs/ExploreActionFeedback:geometry_msgs/Point32:std_msgs/Header:exploration_msgs/ExploreActionResult:geometry_msgs/Point:exploration_msgs/ExploreActionGoal:geometry_msgs/PoseStamped:exploration_msgs/ExploreFeedback:exploration_msgs/ExploreResult:geometry_msgs/PointStamped"
)

get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreActionFeedback.msg" NAME_WE)
add_custom_target(_exploration_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "exploration_msgs" "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreActionFeedback.msg" "geometry_msgs/Point:geometry_msgs/Quaternion:actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:std_msgs/Header:exploration_msgs/ExploreFeedback:geometry_msgs/PoseStamped:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/dsp/dsp_ws/src/frontier_exploration/exploration_msgs/srv/SetPolygon.srv" NAME_WE)
add_custom_target(_exploration_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "exploration_msgs" "/home/dsp/dsp_ws/src/frontier_exploration/exploration_msgs/srv/SetPolygon.srv" "geometry_msgs/Point32:geometry_msgs/Polygon:geometry_msgs/PolygonStamped:std_msgs/Header"
)

get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreResult.msg" NAME_WE)
add_custom_target(_exploration_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "exploration_msgs" "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreResult.msg" ""
)

get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreFeedback.msg" NAME_WE)
add_custom_target(_exploration_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "exploration_msgs" "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreFeedback.msg" "geometry_msgs/Point:geometry_msgs/PoseStamped:geometry_msgs/Quaternion:std_msgs/Header:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreActionResult.msg" NAME_WE)
add_custom_target(_exploration_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "exploration_msgs" "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreActionResult.msg" "actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:std_msgs/Header:exploration_msgs/ExploreResult"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(exploration_msgs
  "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreGoal.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exploration_msgs
)
_generate_msg_cpp(exploration_msgs
  "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exploration_msgs
)
_generate_msg_cpp(exploration_msgs
  "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreAction.msg"
  "${MSG_I_FLAGS}"
  "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreGoal.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreActionFeedback.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreActionResult.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreActionGoal.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreFeedback.msg;/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreResult.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exploration_msgs
)
_generate_msg_cpp(exploration_msgs
  "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreFeedback.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exploration_msgs
)
_generate_msg_cpp(exploration_msgs
  "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exploration_msgs
)
_generate_msg_cpp(exploration_msgs
  "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exploration_msgs
)
_generate_msg_cpp(exploration_msgs
  "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exploration_msgs
)

### Generating Services
_generate_srv_cpp(exploration_msgs
  "/home/dsp/dsp_ws/src/frontier_exploration/exploration_msgs/srv/SetPolygon.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exploration_msgs
)

### Generating Module File
_generate_module_cpp(exploration_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exploration_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(exploration_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(exploration_msgs_generate_messages exploration_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreActionGoal.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_cpp _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreGoal.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_cpp _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreAction.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_cpp _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreActionFeedback.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_cpp _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/src/frontier_exploration/exploration_msgs/srv/SetPolygon.srv" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_cpp _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreResult.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_cpp _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreFeedback.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_cpp _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreActionResult.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_cpp _exploration_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(exploration_msgs_gencpp)
add_dependencies(exploration_msgs_gencpp exploration_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS exploration_msgs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(exploration_msgs
  "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreGoal.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exploration_msgs
)
_generate_msg_lisp(exploration_msgs
  "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exploration_msgs
)
_generate_msg_lisp(exploration_msgs
  "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreAction.msg"
  "${MSG_I_FLAGS}"
  "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreGoal.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreActionFeedback.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreActionResult.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreActionGoal.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreFeedback.msg;/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreResult.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exploration_msgs
)
_generate_msg_lisp(exploration_msgs
  "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreFeedback.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exploration_msgs
)
_generate_msg_lisp(exploration_msgs
  "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exploration_msgs
)
_generate_msg_lisp(exploration_msgs
  "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exploration_msgs
)
_generate_msg_lisp(exploration_msgs
  "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exploration_msgs
)

### Generating Services
_generate_srv_lisp(exploration_msgs
  "/home/dsp/dsp_ws/src/frontier_exploration/exploration_msgs/srv/SetPolygon.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exploration_msgs
)

### Generating Module File
_generate_module_lisp(exploration_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exploration_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(exploration_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(exploration_msgs_generate_messages exploration_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreActionGoal.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_lisp _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreGoal.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_lisp _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreAction.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_lisp _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreActionFeedback.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_lisp _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/src/frontier_exploration/exploration_msgs/srv/SetPolygon.srv" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_lisp _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreResult.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_lisp _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreFeedback.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_lisp _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreActionResult.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_lisp _exploration_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(exploration_msgs_genlisp)
add_dependencies(exploration_msgs_genlisp exploration_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS exploration_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(exploration_msgs
  "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreGoal.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exploration_msgs
)
_generate_msg_py(exploration_msgs
  "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Polygon.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exploration_msgs
)
_generate_msg_py(exploration_msgs
  "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreAction.msg"
  "${MSG_I_FLAGS}"
  "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreGoal.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreActionFeedback.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreActionResult.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreActionGoal.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreFeedback.msg;/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreResult.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exploration_msgs
)
_generate_msg_py(exploration_msgs
  "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreFeedback.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exploration_msgs
)
_generate_msg_py(exploration_msgs
  "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exploration_msgs
)
_generate_msg_py(exploration_msgs
  "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exploration_msgs
)
_generate_msg_py(exploration_msgs
  "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exploration_msgs
)

### Generating Services
_generate_srv_py(exploration_msgs
  "/home/dsp/dsp_ws/src/frontier_exploration/exploration_msgs/srv/SetPolygon.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exploration_msgs
)

### Generating Module File
_generate_module_py(exploration_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exploration_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(exploration_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(exploration_msgs_generate_messages exploration_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreActionGoal.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_py _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreGoal.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_py _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreAction.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_py _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreActionFeedback.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_py _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/src/frontier_exploration/exploration_msgs/srv/SetPolygon.srv" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_py _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreResult.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_py _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreFeedback.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_py _exploration_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dsp/dsp_ws/devel/share/exploration_msgs/msg/ExploreActionResult.msg" NAME_WE)
add_dependencies(exploration_msgs_generate_messages_py _exploration_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(exploration_msgs_genpy)
add_dependencies(exploration_msgs_genpy exploration_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS exploration_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exploration_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/exploration_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(exploration_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(exploration_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exploration_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/exploration_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(exploration_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(exploration_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exploration_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exploration_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/exploration_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(exploration_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(exploration_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
