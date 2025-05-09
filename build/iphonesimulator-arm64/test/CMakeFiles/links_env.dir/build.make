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
include test/CMakeFiles/links_env.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/links_env.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/links_env.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/links_env.dir/flags.make

test/CMakeFiles/links_env.dir/codegen:
.PHONY : test/CMakeFiles/links_env.dir/codegen

test/CMakeFiles/links_env.dir/links_env.c.o: test/CMakeFiles/links_env.dir/flags.make
test/CMakeFiles/links_env.dir/links_env.c.o: /Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/test/links_env.c
test/CMakeFiles/links_env.dir/links_env.c.o: test/CMakeFiles/links_env.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/stefanorizzetto/Documents/HDF5Kit/build/iphonesimulator-arm64/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object test/CMakeFiles/links_env.dir/links_env.c.o"
	cd /Users/stefanorizzetto/Documents/HDF5Kit/build/iphonesimulator-arm64/test && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT test/CMakeFiles/links_env.dir/links_env.c.o -MF CMakeFiles/links_env.dir/links_env.c.o.d -o CMakeFiles/links_env.dir/links_env.c.o -c /Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/test/links_env.c

test/CMakeFiles/links_env.dir/links_env.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/links_env.dir/links_env.c.i"
	cd /Users/stefanorizzetto/Documents/HDF5Kit/build/iphonesimulator-arm64/test && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/test/links_env.c > CMakeFiles/links_env.dir/links_env.c.i

test/CMakeFiles/links_env.dir/links_env.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/links_env.dir/links_env.c.s"
	cd /Users/stefanorizzetto/Documents/HDF5Kit/build/iphonesimulator-arm64/test && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/test/links_env.c -o CMakeFiles/links_env.dir/links_env.c.s

# Object files for target links_env
links_env_OBJECTS = \
"CMakeFiles/links_env.dir/links_env.c.o"

# External object files for target links_env
links_env_EXTERNAL_OBJECTS =

bin/links_env: test/CMakeFiles/links_env.dir/links_env.c.o
bin/links_env: test/CMakeFiles/links_env.dir/build.make
bin/links_env: bin/libhdf5_test.a
bin/links_env: bin/libhdf5.a
bin/links_env: test/CMakeFiles/links_env.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/stefanorizzetto/Documents/HDF5Kit/build/iphonesimulator-arm64/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ../bin/links_env"
	cd /Users/stefanorizzetto/Documents/HDF5Kit/build/iphonesimulator-arm64/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/links_env.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/links_env.dir/build: bin/links_env
.PHONY : test/CMakeFiles/links_env.dir/build

test/CMakeFiles/links_env.dir/clean:
	cd /Users/stefanorizzetto/Documents/HDF5Kit/build/iphonesimulator-arm64/test && $(CMAKE_COMMAND) -P CMakeFiles/links_env.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/links_env.dir/clean

test/CMakeFiles/links_env.dir/depend:
	cd /Users/stefanorizzetto/Documents/HDF5Kit/build/iphonesimulator-arm64 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6 /Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/test /Users/stefanorizzetto/Documents/HDF5Kit/build/iphonesimulator-arm64 /Users/stefanorizzetto/Documents/HDF5Kit/build/iphonesimulator-arm64/test /Users/stefanorizzetto/Documents/HDF5Kit/build/iphonesimulator-arm64/test/CMakeFiles/links_env.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : test/CMakeFiles/links_env.dir/depend

