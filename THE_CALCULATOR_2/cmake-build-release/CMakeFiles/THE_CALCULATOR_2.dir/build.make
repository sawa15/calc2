# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.9

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2017.2.2\bin\cmake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2017.2.2\bin\cmake\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\bulk\CLionProjects\THE_CALCULATOR_2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\bulk\CLionProjects\THE_CALCULATOR_2\cmake-build-release

# Include any dependencies generated for this target.
include CMakeFiles/THE_CALCULATOR_2.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/THE_CALCULATOR_2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/THE_CALCULATOR_2.dir/flags.make

CMakeFiles/THE_CALCULATOR_2.dir/main.cpp.obj: CMakeFiles/THE_CALCULATOR_2.dir/flags.make
CMakeFiles/THE_CALCULATOR_2.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\bulk\CLionProjects\THE_CALCULATOR_2\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/THE_CALCULATOR_2.dir/main.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\THE_CALCULATOR_2.dir\main.cpp.obj -c C:\Users\bulk\CLionProjects\THE_CALCULATOR_2\main.cpp

CMakeFiles/THE_CALCULATOR_2.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/THE_CALCULATOR_2.dir/main.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\bulk\CLionProjects\THE_CALCULATOR_2\main.cpp > CMakeFiles\THE_CALCULATOR_2.dir\main.cpp.i

CMakeFiles/THE_CALCULATOR_2.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/THE_CALCULATOR_2.dir/main.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\bulk\CLionProjects\THE_CALCULATOR_2\main.cpp -o CMakeFiles\THE_CALCULATOR_2.dir\main.cpp.s

CMakeFiles/THE_CALCULATOR_2.dir/main.cpp.obj.requires:

.PHONY : CMakeFiles/THE_CALCULATOR_2.dir/main.cpp.obj.requires

CMakeFiles/THE_CALCULATOR_2.dir/main.cpp.obj.provides: CMakeFiles/THE_CALCULATOR_2.dir/main.cpp.obj.requires
	$(MAKE) -f CMakeFiles\THE_CALCULATOR_2.dir\build.make CMakeFiles/THE_CALCULATOR_2.dir/main.cpp.obj.provides.build
.PHONY : CMakeFiles/THE_CALCULATOR_2.dir/main.cpp.obj.provides

CMakeFiles/THE_CALCULATOR_2.dir/main.cpp.obj.provides.build: CMakeFiles/THE_CALCULATOR_2.dir/main.cpp.obj


# Object files for target THE_CALCULATOR_2
THE_CALCULATOR_2_OBJECTS = \
"CMakeFiles/THE_CALCULATOR_2.dir/main.cpp.obj"

# External object files for target THE_CALCULATOR_2
THE_CALCULATOR_2_EXTERNAL_OBJECTS =

THE_CALCULATOR_2.exe: CMakeFiles/THE_CALCULATOR_2.dir/main.cpp.obj
THE_CALCULATOR_2.exe: CMakeFiles/THE_CALCULATOR_2.dir/build.make
THE_CALCULATOR_2.exe: CMakeFiles/THE_CALCULATOR_2.dir/linklibs.rsp
THE_CALCULATOR_2.exe: CMakeFiles/THE_CALCULATOR_2.dir/objects1.rsp
THE_CALCULATOR_2.exe: CMakeFiles/THE_CALCULATOR_2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\bulk\CLionProjects\THE_CALCULATOR_2\cmake-build-release\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable THE_CALCULATOR_2.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\THE_CALCULATOR_2.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/THE_CALCULATOR_2.dir/build: THE_CALCULATOR_2.exe

.PHONY : CMakeFiles/THE_CALCULATOR_2.dir/build

CMakeFiles/THE_CALCULATOR_2.dir/requires: CMakeFiles/THE_CALCULATOR_2.dir/main.cpp.obj.requires

.PHONY : CMakeFiles/THE_CALCULATOR_2.dir/requires

CMakeFiles/THE_CALCULATOR_2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\THE_CALCULATOR_2.dir\cmake_clean.cmake
.PHONY : CMakeFiles/THE_CALCULATOR_2.dir/clean

CMakeFiles/THE_CALCULATOR_2.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\bulk\CLionProjects\THE_CALCULATOR_2 C:\Users\bulk\CLionProjects\THE_CALCULATOR_2 C:\Users\bulk\CLionProjects\THE_CALCULATOR_2\cmake-build-release C:\Users\bulk\CLionProjects\THE_CALCULATOR_2\cmake-build-release C:\Users\bulk\CLionProjects\THE_CALCULATOR_2\cmake-build-release\CMakeFiles\THE_CALCULATOR_2.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/THE_CALCULATOR_2.dir/depend

