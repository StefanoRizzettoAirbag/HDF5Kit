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
CMAKE_BINARY_DIR = /Users/stefanorizzetto/Documents/HDF5Kit/build/iphonesimulator-x86_64

# Include any dependencies generated for this target.
include test/CMakeFiles/cache_api.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/cache_api.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/cache_api.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/cache_api.dir/flags.make

test/CMakeFiles/cache_api.dir/codegen:
.PHONY : test/CMakeFiles/cache_api.dir/codegen

test/CMakeFiles/cache_api.dir/cache_api.c.o: test/CMakeFiles/cache_api.dir/flags.make
test/CMakeFiles/cache_api.dir/cache_api.c.o: /Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/test/cache_api.c
test/CMakeFiles/cache_api.dir/cache_api.c.o: test/CMakeFiles/cache_api.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/stefanorizzetto/Documents/HDF5Kit/build/iphonesimulator-x86_64/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object test/CMakeFiles/cache_api.dir/cache_api.c.o"
	cd /Users/stefanorizzetto/Documents/HDF5Kit/build/iphonesimulator-x86_64/test && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT test/CMakeFiles/cache_api.dir/cache_api.c.o -MF CMakeFiles/cache_api.dir/cache_api.c.o.d -o CMakeFiles/cache_api.dir/cache_api.c.o -c /Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/test/cache_api.c

test/CMakeFiles/cache_api.dir/cache_api.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/cache_api.dir/cache_api.c.i"
	cd /Users/stefanorizzetto/Documents/HDF5Kit/build/iphonesimulator-x86_64/test && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/test/cache_api.c > CMakeFiles/cache_api.dir/cache_api.c.i

test/CMakeFiles/cache_api.dir/cache_api.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/cache_api.dir/cache_api.c.s"
	cd /Users/stefanorizzetto/Documents/HDF5Kit/build/iphonesimulator-x86_64/test && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/test/cache_api.c -o CMakeFiles/cache_api.dir/cache_api.c.s

# Object files for target cache_api
cache_api_OBJECTS = \
"CMakeFiles/cache_api.dir/cache_api.c.o"

# External object files for target cache_api
cache_api_EXTERNAL_OBJECTS =

bin/cache_api: test/CMakeFiles/cache_api.dir/cache_api.c.o
bin/cache_api: test/CMakeFiles/cache_api.dir/build.make
bin/cache_api: bin/libhdf5_test.a
bin/cache_api: bin/libhdf5.a
bin/cache_api: test/CMakeFiles/cache_api.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/stefanorizzetto/Documents/HDF5Kit/build/iphonesimulator-x86_64/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ../bin/cache_api"
	cd /Users/stefanorizzetto/Documents/HDF5Kit/build/iphonesimulator-x86_64/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cache_api.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/cache_api.dir/build: bin/cache_api
.PHONY : test/CMakeFiles/cache_api.dir/build

test/CMakeFiles/cache_api.dir/clean:
	cd /Users/stefanorizzetto/Documents/HDF5Kit/build/iphonesimulator-x86_64/test && $(CMAKE_COMMAND) -P CMakeFiles/cache_api.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/cache_api.dir/clean

test/CMakeFiles/cache_api.dir/depend:
	cd /Users/stefanorizzetto/Documents/HDF5Kit/build/iphonesimulator-x86_64 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6 /Users/stefanorizzetto/Documents/HDF5Kit/hdf5-1.14.6/test /Users/stefanorizzetto/Documents/HDF5Kit/build/iphonesimulator-x86_64 /Users/stefanorizzetto/Documents/HDF5Kit/build/iphonesimulator-x86_64/test /Users/stefanorizzetto/Documents/HDF5Kit/build/iphonesimulator-x86_64/test/CMakeFiles/cache_api.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : test/CMakeFiles/cache_api.dir/depend

