# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 4.0

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/stefanorizzetto/Documents/HDF5Kit/build/iphonesimulator-arm64

# Include any dependencies generated for this target.
include test/CMakeFiles/event_set.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/event_set.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/event_set.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/event_set.dir/flags.make

test/CMakeFiles/event_set.dir/codegen:
.PHONY : test/CMakeFiles/event_set.dir/codegen

test/CMakeFiles/event_set.dir/event_set.c.o: test/CMakeFiles/event_set.dir/flags.make
test/CMakeFiles/event_set.dir/event_set.c.o: /Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/test/event_set.c
test/CMakeFiles/event_set.dir/event_set.c.o: test/CMakeFiles/event_set.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/stefanorizzetto/Documents/HDF5Kit/build/iphonesimulator-arm64/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object test/CMakeFiles/event_set.dir/event_set.c.o"
	cd /Users/stefanorizzetto/Documents/HDF5Kit/build/iphonesimulator-arm64/test && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT test/CMakeFiles/event_set.dir/event_set.c.o -MF CMakeFiles/event_set.dir/event_set.c.o.d -o CMakeFiles/event_set.dir/event_set.c.o -c /Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/test/event_set.c

test/CMakeFiles/event_set.dir/event_set.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/event_set.dir/event_set.c.i"
	cd /Users/stefanorizzetto/Documents/HDF5Kit/build/iphonesimulator-arm64/test && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/test/event_set.c > CMakeFiles/event_set.dir/event_set.c.i

test/CMakeFiles/event_set.dir/event_set.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/event_set.dir/event_set.c.s"
	cd /Users/stefanorizzetto/Documents/HDF5Kit/build/iphonesimulator-arm64/test && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/test/event_set.c -o CMakeFiles/event_set.dir/event_set.c.s

# Object files for target event_set
event_set_OBJECTS = \
"CMakeFiles/event_set.dir/event_set.c.o"

# External object files for target event_set
event_set_EXTERNAL_OBJECTS =

bin/event_set: test/CMakeFiles/event_set.dir/event_set.c.o
bin/event_set: test/CMakeFiles/event_set.dir/build.make
bin/event_set: bin/libhdf5_test.a
bin/event_set: bin/libhdf5.a
bin/event_set: test/CMakeFiles/event_set.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/stefanorizzetto/Documents/HDF5Kit/build/iphonesimulator-arm64/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ../bin/event_set"
	cd /Users/stefanorizzetto/Documents/HDF5Kit/build/iphonesimulator-arm64/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/event_set.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/event_set.dir/build: bin/event_set
.PHONY : test/CMakeFiles/event_set.dir/build

test/CMakeFiles/event_set.dir/clean:
	cd /Users/stefanorizzetto/Documents/HDF5Kit/build/iphonesimulator-arm64/test && $(CMAKE_COMMAND) -P CMakeFiles/event_set.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/event_set.dir/clean

test/CMakeFiles/event_set.dir/depend:
	cd /Users/stefanorizzetto/Documents/HDF5Kit/build/iphonesimulator-arm64 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6 /Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/test /Users/stefanorizzetto/Documents/HDF5Kit/build/iphonesimulator-arm64 /Users/stefanorizzetto/Documents/HDF5Kit/build/iphonesimulator-arm64/test /Users/stefanorizzetto/Documents/HDF5Kit/build/iphonesimulator-arm64/test/CMakeFiles/event_set.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : test/CMakeFiles/event_set.dir/depend

