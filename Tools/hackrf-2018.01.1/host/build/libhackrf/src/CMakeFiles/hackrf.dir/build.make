# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/user8/FISSURE/Tools/hackrf-2018.01.1/host

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/user8/FISSURE/Tools/hackrf-2018.01.1/host/build

# Include any dependencies generated for this target.
include libhackrf/src/CMakeFiles/hackrf.dir/depend.make

# Include the progress variables for this target.
include libhackrf/src/CMakeFiles/hackrf.dir/progress.make

# Include the compile flags for this target's objects.
include libhackrf/src/CMakeFiles/hackrf.dir/flags.make

libhackrf/src/CMakeFiles/hackrf.dir/hackrf.c.o: libhackrf/src/CMakeFiles/hackrf.dir/flags.make
libhackrf/src/CMakeFiles/hackrf.dir/hackrf.c.o: ../libhackrf/src/hackrf.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/user8/FISSURE/Tools/hackrf-2018.01.1/host/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object libhackrf/src/CMakeFiles/hackrf.dir/hackrf.c.o"
	cd /home/user8/FISSURE/Tools/hackrf-2018.01.1/host/build/libhackrf/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/hackrf.dir/hackrf.c.o   -c /home/user8/FISSURE/Tools/hackrf-2018.01.1/host/libhackrf/src/hackrf.c

libhackrf/src/CMakeFiles/hackrf.dir/hackrf.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/hackrf.dir/hackrf.c.i"
	cd /home/user8/FISSURE/Tools/hackrf-2018.01.1/host/build/libhackrf/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/user8/FISSURE/Tools/hackrf-2018.01.1/host/libhackrf/src/hackrf.c > CMakeFiles/hackrf.dir/hackrf.c.i

libhackrf/src/CMakeFiles/hackrf.dir/hackrf.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/hackrf.dir/hackrf.c.s"
	cd /home/user8/FISSURE/Tools/hackrf-2018.01.1/host/build/libhackrf/src && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/user8/FISSURE/Tools/hackrf-2018.01.1/host/libhackrf/src/hackrf.c -o CMakeFiles/hackrf.dir/hackrf.c.s

libhackrf/src/CMakeFiles/hackrf.dir/hackrf.c.o.requires:

.PHONY : libhackrf/src/CMakeFiles/hackrf.dir/hackrf.c.o.requires

libhackrf/src/CMakeFiles/hackrf.dir/hackrf.c.o.provides: libhackrf/src/CMakeFiles/hackrf.dir/hackrf.c.o.requires
	$(MAKE) -f libhackrf/src/CMakeFiles/hackrf.dir/build.make libhackrf/src/CMakeFiles/hackrf.dir/hackrf.c.o.provides.build
.PHONY : libhackrf/src/CMakeFiles/hackrf.dir/hackrf.c.o.provides

libhackrf/src/CMakeFiles/hackrf.dir/hackrf.c.o.provides.build: libhackrf/src/CMakeFiles/hackrf.dir/hackrf.c.o


# Object files for target hackrf
hackrf_OBJECTS = \
"CMakeFiles/hackrf.dir/hackrf.c.o"

# External object files for target hackrf
hackrf_EXTERNAL_OBJECTS =

libhackrf/src/libhackrf.so.0.5.0: libhackrf/src/CMakeFiles/hackrf.dir/hackrf.c.o
libhackrf/src/libhackrf.so.0.5.0: libhackrf/src/CMakeFiles/hackrf.dir/build.make
libhackrf/src/libhackrf.so.0.5.0: /usr/lib/x86_64-linux-gnu/libusb-1.0.so
libhackrf/src/libhackrf.so.0.5.0: libhackrf/src/CMakeFiles/hackrf.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/user8/FISSURE/Tools/hackrf-2018.01.1/host/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared library libhackrf.so"
	cd /home/user8/FISSURE/Tools/hackrf-2018.01.1/host/build/libhackrf/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hackrf.dir/link.txt --verbose=$(VERBOSE)
	cd /home/user8/FISSURE/Tools/hackrf-2018.01.1/host/build/libhackrf/src && $(CMAKE_COMMAND) -E cmake_symlink_library libhackrf.so.0.5.0 libhackrf.so.0 libhackrf.so

libhackrf/src/libhackrf.so.0: libhackrf/src/libhackrf.so.0.5.0
	@$(CMAKE_COMMAND) -E touch_nocreate libhackrf/src/libhackrf.so.0

libhackrf/src/libhackrf.so: libhackrf/src/libhackrf.so.0.5.0
	@$(CMAKE_COMMAND) -E touch_nocreate libhackrf/src/libhackrf.so

# Rule to build all files generated by this target.
libhackrf/src/CMakeFiles/hackrf.dir/build: libhackrf/src/libhackrf.so

.PHONY : libhackrf/src/CMakeFiles/hackrf.dir/build

libhackrf/src/CMakeFiles/hackrf.dir/requires: libhackrf/src/CMakeFiles/hackrf.dir/hackrf.c.o.requires

.PHONY : libhackrf/src/CMakeFiles/hackrf.dir/requires

libhackrf/src/CMakeFiles/hackrf.dir/clean:
	cd /home/user8/FISSURE/Tools/hackrf-2018.01.1/host/build/libhackrf/src && $(CMAKE_COMMAND) -P CMakeFiles/hackrf.dir/cmake_clean.cmake
.PHONY : libhackrf/src/CMakeFiles/hackrf.dir/clean

libhackrf/src/CMakeFiles/hackrf.dir/depend:
	cd /home/user8/FISSURE/Tools/hackrf-2018.01.1/host/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/user8/FISSURE/Tools/hackrf-2018.01.1/host /home/user8/FISSURE/Tools/hackrf-2018.01.1/host/libhackrf/src /home/user8/FISSURE/Tools/hackrf-2018.01.1/host/build /home/user8/FISSURE/Tools/hackrf-2018.01.1/host/build/libhackrf/src /home/user8/FISSURE/Tools/hackrf-2018.01.1/host/build/libhackrf/src/CMakeFiles/hackrf.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libhackrf/src/CMakeFiles/hackrf.dir/depend

