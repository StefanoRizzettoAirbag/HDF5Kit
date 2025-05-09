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
CMAKE_BINARY_DIR = /Users/stefanorizzetto/Documents/HDF5Kit/build/iphoneos-arm64

# Include any dependencies generated for this target.
include test/CMakeFiles/vol.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/vol.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/vol.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/vol.dir/flags.make

test/CMakeFiles/vol.dir/codegen:
.PHONY : test/CMakeFiles/vol.dir/codegen

test/CMakeFiles/vol.dir/vol.c.o: test/CMakeFiles/vol.dir/flags.make
test/CMakeFiles/vol.dir/vol.c.o: /Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/test/vol.c
test/CMakeFiles/vol.dir/vol.c.o: test/CMakeFiles/vol.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/stefanorizzetto/Documents/HDF5Kit/build/iphoneos-arm64/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object test/CMakeFiles/vol.dir/vol.c.o"
	cd /Users/stefanorizzetto/Documents/HDF5Kit/build/iphoneos-arm64/test && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT test/CMakeFiles/vol.dir/vol.c.o -MF CMakeFiles/vol.dir/vol.c.o.d -o CMakeFiles/vol.dir/vol.c.o -c /Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/test/vol.c

test/CMakeFiles/vol.dir/vol.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/vol.dir/vol.c.i"
	cd /Users/stefanorizzetto/Documents/HDF5Kit/build/iphoneos-arm64/test && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/test/vol.c > CMakeFiles/vol.dir/vol.c.i

test/CMakeFiles/vol.dir/vol.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/vol.dir/vol.c.s"
	cd /Users/stefanorizzetto/Documents/HDF5Kit/build/iphoneos-arm64/test && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/test/vol.c -o CMakeFiles/vol.dir/vol.c.s

# Object files for target vol
vol_OBJECTS = \
"CMakeFiles/vol.dir/vol.c.o"

# External object files for target vol
vol_EXTERNAL_OBJECTS =

bin/vol: test/CMakeFiles/vol.dir/vol.c.o
bin/vol: test/CMakeFiles/vol.dir/build.make
bin/vol: bin/libhdf5_test.a
bin/vol: bin/libhdf5.a
bin/vol: test/CMakeFiles/vol.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/stefanorizzetto/Documents/HDF5Kit/build/iphoneos-arm64/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ../bin/vol"
	cd /Users/stefanorizzetto/Documents/HDF5Kit/build/iphoneos-arm64/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vol.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/vol.dir/build: bin/vol
.PHONY : test/CMakeFiles/vol.dir/build

test/CMakeFiles/vol.dir/clean:
	cd /Users/stefanorizzetto/Documents/HDF5Kit/build/iphoneos-arm64/test && $(CMAKE_COMMAND) -P CMakeFiles/vol.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/vol.dir/clean

test/CMakeFiles/vol.dir/depend:
	cd /Users/stefanorizzetto/Documents/HDF5Kit/build/iphoneos-arm64 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6 /Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/test /Users/stefanorizzetto/Documents/HDF5Kit/build/iphoneos-arm64 /Users/stefanorizzetto/Documents/HDF5Kit/build/iphoneos-arm64/test /Users/stefanorizzetto/Documents/HDF5Kit/build/iphoneos-arm64/test/CMakeFiles/vol.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : test/CMakeFiles/vol.dir/depend

