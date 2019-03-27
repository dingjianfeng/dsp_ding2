cmake_minimum_required(VERSION 2.8.3)
project(dspbot_tools)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  geometry_msgs
  roscpp
  rospy
  sensor_msgs
  serial
  std_msgs
  tf
  dynamic_reconfigure
)

catkin_python_setup()

generate_dynamic_reconfigure_options(cfg/CalibrateAngular.cfg cfg/CalibrateLinear.cfg)

catkin_package(CATKIN_DEPENDS dynamic_reconfigure)


#catkin_install_python(
#  PROGRAMS src/dashgo_tools/transform_utils
#  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
#)

###########
## Build ##
###########

## Specify additional locations of header files
## Your package locations should be listed before other locations
# include_directories(include)
include_directories(
  ${catkin_INCLUDE_DIRS}
)



