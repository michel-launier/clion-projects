# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /tmp/cpptest2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /tmp/cpptest2/cmake-build-cppdocker

# Include any dependencies generated for this target.
include CMakeFiles/cpptest2.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/cpptest2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cpptest2.dir/flags.make

CMakeFiles/cpptest2.dir/main.cpp.o: CMakeFiles/cpptest2.dir/flags.make
CMakeFiles/cpptest2.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/cpptest2/cmake-build-cppdocker/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/cpptest2.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cpptest2.dir/main.cpp.o -c /tmp/cpptest2/main.cpp

CMakeFiles/cpptest2.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpptest2.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /tmp/cpptest2/main.cpp > CMakeFiles/cpptest2.dir/main.cpp.i

CMakeFiles/cpptest2.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpptest2.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /tmp/cpptest2/main.cpp -o CMakeFiles/cpptest2.dir/main.cpp.s

# Object files for target cpptest2
cpptest2_OBJECTS = \
"CMakeFiles/cpptest2.dir/main.cpp.o"

# External object files for target cpptest2
cpptest2_EXTERNAL_OBJECTS =

cpptest2: CMakeFiles/cpptest2.dir/main.cpp.o
cpptest2: CMakeFiles/cpptest2.dir/build.make
cpptest2: CMakeFiles/cpptest2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/tmp/cpptest2/cmake-build-cppdocker/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable cpptest2"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cpptest2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cpptest2.dir/build: cpptest2

.PHONY : CMakeFiles/cpptest2.dir/build

CMakeFiles/cpptest2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cpptest2.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cpptest2.dir/clean

CMakeFiles/cpptest2.dir/depend:
	cd /tmp/cpptest2/cmake-build-cppdocker && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /tmp/cpptest2 /tmp/cpptest2 /tmp/cpptest2/cmake-build-cppdocker /tmp/cpptest2/cmake-build-cppdocker /tmp/cpptest2/cmake-build-cppdocker/CMakeFiles/cpptest2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cpptest2.dir/depend

