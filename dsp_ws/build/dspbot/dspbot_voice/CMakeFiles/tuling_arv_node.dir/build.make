# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/dsp/dsp_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/dsp/dsp_ws/build

# Include any dependencies generated for this target.
include dspbot/dspbot_voice/CMakeFiles/tuling_arv_node.dir/depend.make

# Include the progress variables for this target.
include dspbot/dspbot_voice/CMakeFiles/tuling_arv_node.dir/progress.make

# Include the compile flags for this target's objects.
include dspbot/dspbot_voice/CMakeFiles/tuling_arv_node.dir/flags.make

dspbot/dspbot_voice/CMakeFiles/tuling_arv_node.dir/src/tuling_arv.cpp.o: dspbot/dspbot_voice/CMakeFiles/tuling_arv_node.dir/flags.make
dspbot/dspbot_voice/CMakeFiles/tuling_arv_node.dir/src/tuling_arv.cpp.o: /home/dsp/dsp_ws/src/dspbot/dspbot_voice/src/tuling_arv.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dsp/dsp_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object dspbot/dspbot_voice/CMakeFiles/tuling_arv_node.dir/src/tuling_arv.cpp.o"
	cd /home/dsp/dsp_ws/build/dspbot/dspbot_voice && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tuling_arv_node.dir/src/tuling_arv.cpp.o -c /home/dsp/dsp_ws/src/dspbot/dspbot_voice/src/tuling_arv.cpp

dspbot/dspbot_voice/CMakeFiles/tuling_arv_node.dir/src/tuling_arv.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tuling_arv_node.dir/src/tuling_arv.cpp.i"
	cd /home/dsp/dsp_ws/build/dspbot/dspbot_voice && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dsp/dsp_ws/src/dspbot/dspbot_voice/src/tuling_arv.cpp > CMakeFiles/tuling_arv_node.dir/src/tuling_arv.cpp.i

dspbot/dspbot_voice/CMakeFiles/tuling_arv_node.dir/src/tuling_arv.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tuling_arv_node.dir/src/tuling_arv.cpp.s"
	cd /home/dsp/dsp_ws/build/dspbot/dspbot_voice && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dsp/dsp_ws/src/dspbot/dspbot_voice/src/tuling_arv.cpp -o CMakeFiles/tuling_arv_node.dir/src/tuling_arv.cpp.s

# Object files for target tuling_arv_node
tuling_arv_node_OBJECTS = \
"CMakeFiles/tuling_arv_node.dir/src/tuling_arv.cpp.o"

# External object files for target tuling_arv_node
tuling_arv_node_EXTERNAL_OBJECTS =

/home/dsp/dsp_ws/devel/lib/dspbot_voice/tuling_arv_node: dspbot/dspbot_voice/CMakeFiles/tuling_arv_node.dir/src/tuling_arv.cpp.o
/home/dsp/dsp_ws/devel/lib/dspbot_voice/tuling_arv_node: dspbot/dspbot_voice/CMakeFiles/tuling_arv_node.dir/build.make
/home/dsp/dsp_ws/devel/lib/dspbot_voice/tuling_arv_node: /opt/ros/indigo/lib/libroscpp.so
/home/dsp/dsp_ws/devel/lib/dspbot_voice/tuling_arv_node: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/dsp/dsp_ws/devel/lib/dspbot_voice/tuling_arv_node: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/dsp/dsp_ws/devel/lib/dspbot_voice/tuling_arv_node: /opt/ros/indigo/lib/librosconsole.so
/home/dsp/dsp_ws/devel/lib/dspbot_voice/tuling_arv_node: /opt/ros/indigo/lib/librosconsole_log4cxx.so
/home/dsp/dsp_ws/devel/lib/dspbot_voice/tuling_arv_node: /opt/ros/indigo/lib/librosconsole_backend_interface.so
/home/dsp/dsp_ws/devel/lib/dspbot_voice/tuling_arv_node: /usr/lib/liblog4cxx.so
/home/dsp/dsp_ws/devel/lib/dspbot_voice/tuling_arv_node: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/dsp/dsp_ws/devel/lib/dspbot_voice/tuling_arv_node: /opt/ros/indigo/lib/libxmlrpcpp.so
/home/dsp/dsp_ws/devel/lib/dspbot_voice/tuling_arv_node: /opt/ros/indigo/lib/libroscpp_serialization.so
/home/dsp/dsp_ws/devel/lib/dspbot_voice/tuling_arv_node: /opt/ros/indigo/lib/librostime.so
/home/dsp/dsp_ws/devel/lib/dspbot_voice/tuling_arv_node: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/dsp/dsp_ws/devel/lib/dspbot_voice/tuling_arv_node: /opt/ros/indigo/lib/libcpp_common.so
/home/dsp/dsp_ws/devel/lib/dspbot_voice/tuling_arv_node: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/dsp/dsp_ws/devel/lib/dspbot_voice/tuling_arv_node: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/dsp/dsp_ws/devel/lib/dspbot_voice/tuling_arv_node: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/dsp/dsp_ws/devel/lib/dspbot_voice/tuling_arv_node: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/dsp/dsp_ws/devel/lib/dspbot_voice/tuling_arv_node: dspbot/dspbot_voice/CMakeFiles/tuling_arv_node.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/dsp/dsp_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/dsp/dsp_ws/devel/lib/dspbot_voice/tuling_arv_node"
	cd /home/dsp/dsp_ws/build/dspbot/dspbot_voice && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tuling_arv_node.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
dspbot/dspbot_voice/CMakeFiles/tuling_arv_node.dir/build: /home/dsp/dsp_ws/devel/lib/dspbot_voice/tuling_arv_node

.PHONY : dspbot/dspbot_voice/CMakeFiles/tuling_arv_node.dir/build

dspbot/dspbot_voice/CMakeFiles/tuling_arv_node.dir/clean:
	cd /home/dsp/dsp_ws/build/dspbot/dspbot_voice && $(CMAKE_COMMAND) -P CMakeFiles/tuling_arv_node.dir/cmake_clean.cmake
.PHONY : dspbot/dspbot_voice/CMakeFiles/tuling_arv_node.dir/clean

dspbot/dspbot_voice/CMakeFiles/tuling_arv_node.dir/depend:
	cd /home/dsp/dsp_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dsp/dsp_ws/src /home/dsp/dsp_ws/src/dspbot/dspbot_voice /home/dsp/dsp_ws/build /home/dsp/dsp_ws/build/dspbot/dspbot_voice /home/dsp/dsp_ws/build/dspbot/dspbot_voice/CMakeFiles/tuling_arv_node.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : dspbot/dspbot_voice/CMakeFiles/tuling_arv_node.dir/depend

