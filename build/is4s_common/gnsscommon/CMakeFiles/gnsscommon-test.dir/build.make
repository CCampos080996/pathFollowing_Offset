# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/christian/lateralOffset/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/christian/lateralOffset/build

# Include any dependencies generated for this target.
include is4s_common/gnsscommon/CMakeFiles/gnsscommon-test.dir/depend.make

# Include the progress variables for this target.
include is4s_common/gnsscommon/CMakeFiles/gnsscommon-test.dir/progress.make

# Include the compile flags for this target's objects.
include is4s_common/gnsscommon/CMakeFiles/gnsscommon-test.dir/flags.make

is4s_common/gnsscommon/CMakeFiles/gnsscommon-test.dir/tests/gnsscommon_tests.cpp.o: is4s_common/gnsscommon/CMakeFiles/gnsscommon-test.dir/flags.make
is4s_common/gnsscommon/CMakeFiles/gnsscommon-test.dir/tests/gnsscommon_tests.cpp.o: /home/christian/lateralOffset/src/is4s_common/gnsscommon/tests/gnsscommon_tests.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/christian/lateralOffset/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object is4s_common/gnsscommon/CMakeFiles/gnsscommon-test.dir/tests/gnsscommon_tests.cpp.o"
	cd /home/christian/lateralOffset/build/is4s_common/gnsscommon && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gnsscommon-test.dir/tests/gnsscommon_tests.cpp.o -c /home/christian/lateralOffset/src/is4s_common/gnsscommon/tests/gnsscommon_tests.cpp

is4s_common/gnsscommon/CMakeFiles/gnsscommon-test.dir/tests/gnsscommon_tests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gnsscommon-test.dir/tests/gnsscommon_tests.cpp.i"
	cd /home/christian/lateralOffset/build/is4s_common/gnsscommon && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/christian/lateralOffset/src/is4s_common/gnsscommon/tests/gnsscommon_tests.cpp > CMakeFiles/gnsscommon-test.dir/tests/gnsscommon_tests.cpp.i

is4s_common/gnsscommon/CMakeFiles/gnsscommon-test.dir/tests/gnsscommon_tests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gnsscommon-test.dir/tests/gnsscommon_tests.cpp.s"
	cd /home/christian/lateralOffset/build/is4s_common/gnsscommon && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/christian/lateralOffset/src/is4s_common/gnsscommon/tests/gnsscommon_tests.cpp -o CMakeFiles/gnsscommon-test.dir/tests/gnsscommon_tests.cpp.s

is4s_common/gnsscommon/CMakeFiles/gnsscommon-test.dir/tests/gnsscommon_tests.cpp.o.requires:

.PHONY : is4s_common/gnsscommon/CMakeFiles/gnsscommon-test.dir/tests/gnsscommon_tests.cpp.o.requires

is4s_common/gnsscommon/CMakeFiles/gnsscommon-test.dir/tests/gnsscommon_tests.cpp.o.provides: is4s_common/gnsscommon/CMakeFiles/gnsscommon-test.dir/tests/gnsscommon_tests.cpp.o.requires
	$(MAKE) -f is4s_common/gnsscommon/CMakeFiles/gnsscommon-test.dir/build.make is4s_common/gnsscommon/CMakeFiles/gnsscommon-test.dir/tests/gnsscommon_tests.cpp.o.provides.build
.PHONY : is4s_common/gnsscommon/CMakeFiles/gnsscommon-test.dir/tests/gnsscommon_tests.cpp.o.provides

is4s_common/gnsscommon/CMakeFiles/gnsscommon-test.dir/tests/gnsscommon_tests.cpp.o.provides.build: is4s_common/gnsscommon/CMakeFiles/gnsscommon-test.dir/tests/gnsscommon_tests.cpp.o


# Object files for target gnsscommon-test
gnsscommon__test_OBJECTS = \
"CMakeFiles/gnsscommon-test.dir/tests/gnsscommon_tests.cpp.o"

# External object files for target gnsscommon-test
gnsscommon__test_EXTERNAL_OBJECTS =

/home/christian/lateralOffset/devel/lib/gnsscommon/gnsscommon-test: is4s_common/gnsscommon/CMakeFiles/gnsscommon-test.dir/tests/gnsscommon_tests.cpp.o
/home/christian/lateralOffset/devel/lib/gnsscommon/gnsscommon-test: is4s_common/gnsscommon/CMakeFiles/gnsscommon-test.dir/build.make
/home/christian/lateralOffset/devel/lib/gnsscommon/gnsscommon-test: gtest/gtest/libgtest.so
/home/christian/lateralOffset/devel/lib/gnsscommon/gnsscommon-test: /home/christian/lateralOffset/devel/lib/libgnsscommon.so
/home/christian/lateralOffset/devel/lib/gnsscommon/gnsscommon-test: /home/christian/lateralOffset/devel/lib/liblogutils.so
/home/christian/lateralOffset/devel/lib/gnsscommon/gnsscommon-test: /home/christian/lateralOffset/devel/lib/libgeodesy.so
/home/christian/lateralOffset/devel/lib/gnsscommon/gnsscommon-test: /home/christian/lateralOffset/devel/lib/libtimeutils.so
/home/christian/lateralOffset/devel/lib/gnsscommon/gnsscommon-test: /home/christian/lateralOffset/devel/lib/libeigentools.so
/home/christian/lateralOffset/devel/lib/gnsscommon/gnsscommon-test: /usr/lib/x86_64-linux-gnu/libcurl.so
/home/christian/lateralOffset/devel/lib/gnsscommon/gnsscommon-test: is4s_common/gnsscommon/CMakeFiles/gnsscommon-test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/christian/lateralOffset/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/christian/lateralOffset/devel/lib/gnsscommon/gnsscommon-test"
	cd /home/christian/lateralOffset/build/is4s_common/gnsscommon && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gnsscommon-test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
is4s_common/gnsscommon/CMakeFiles/gnsscommon-test.dir/build: /home/christian/lateralOffset/devel/lib/gnsscommon/gnsscommon-test

.PHONY : is4s_common/gnsscommon/CMakeFiles/gnsscommon-test.dir/build

is4s_common/gnsscommon/CMakeFiles/gnsscommon-test.dir/requires: is4s_common/gnsscommon/CMakeFiles/gnsscommon-test.dir/tests/gnsscommon_tests.cpp.o.requires

.PHONY : is4s_common/gnsscommon/CMakeFiles/gnsscommon-test.dir/requires

is4s_common/gnsscommon/CMakeFiles/gnsscommon-test.dir/clean:
	cd /home/christian/lateralOffset/build/is4s_common/gnsscommon && $(CMAKE_COMMAND) -P CMakeFiles/gnsscommon-test.dir/cmake_clean.cmake
.PHONY : is4s_common/gnsscommon/CMakeFiles/gnsscommon-test.dir/clean

is4s_common/gnsscommon/CMakeFiles/gnsscommon-test.dir/depend:
	cd /home/christian/lateralOffset/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/christian/lateralOffset/src /home/christian/lateralOffset/src/is4s_common/gnsscommon /home/christian/lateralOffset/build /home/christian/lateralOffset/build/is4s_common/gnsscommon /home/christian/lateralOffset/build/is4s_common/gnsscommon/CMakeFiles/gnsscommon-test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : is4s_common/gnsscommon/CMakeFiles/gnsscommon-test.dir/depend

