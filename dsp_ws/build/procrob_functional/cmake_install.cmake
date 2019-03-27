# Install script for directory: /home/dsp/dsp_ws/src/procrob_functional

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/dsp/dsp_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/face_recognition/msg" TYPE FILE FILES "/home/dsp/dsp_ws/src/procrob_functional/msg/FRClientGoal.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/face_recognition/action" TYPE FILE FILES "/home/dsp/dsp_ws/src/procrob_functional/action/FaceRecognition.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/face_recognition/msg" TYPE FILE FILES
    "/home/dsp/dsp_ws/devel/share/face_recognition/msg/FaceRecognitionAction.msg"
    "/home/dsp/dsp_ws/devel/share/face_recognition/msg/FaceRecognitionActionGoal.msg"
    "/home/dsp/dsp_ws/devel/share/face_recognition/msg/FaceRecognitionActionResult.msg"
    "/home/dsp/dsp_ws/devel/share/face_recognition/msg/FaceRecognitionActionFeedback.msg"
    "/home/dsp/dsp_ws/devel/share/face_recognition/msg/FaceRecognitionGoal.msg"
    "/home/dsp/dsp_ws/devel/share/face_recognition/msg/FaceRecognitionResult.msg"
    "/home/dsp/dsp_ws/devel/share/face_recognition/msg/FaceRecognitionFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/face_recognition/cmake" TYPE FILE FILES "/home/dsp/dsp_ws/build/procrob_functional/catkin_generated/installspace/face_recognition-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/dsp/dsp_ws/devel/include/face_recognition")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/dsp/dsp_ws/devel/share/common-lisp/ros/face_recognition")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/dsp/dsp_ws/devel/lib/python2.7/dist-packages/face_recognition")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/dsp/dsp_ws/devel/lib/python2.7/dist-packages/face_recognition")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/dsp/dsp_ws/build/procrob_functional/catkin_generated/installspace/face_recognition.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/face_recognition/cmake" TYPE FILE FILES "/home/dsp/dsp_ws/build/procrob_functional/catkin_generated/installspace/face_recognition-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/face_recognition/cmake" TYPE FILE FILES
    "/home/dsp/dsp_ws/build/procrob_functional/catkin_generated/installspace/face_recognitionConfig.cmake"
    "/home/dsp/dsp_ws/build/procrob_functional/catkin_generated/installspace/face_recognitionConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/face_recognition" TYPE FILE FILES "/home/dsp/dsp_ws/src/procrob_functional/package.xml")
endif()

