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
CMAKE_SOURCE_DIR = /home/konrad/Desktop/fortran

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/konrad/Desktop/fortran

# Include any dependencies generated for this target.
include CMakeFiles/task.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/task.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/task.dir/flags.make

CMakeFiles/task.dir/src/task.f90.o: CMakeFiles/task.dir/flags.make
CMakeFiles/task.dir/src/task.f90.o: src/task.f90
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/konrad/Desktop/fortran/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building Fortran object CMakeFiles/task.dir/src/task.f90.o"
	ifort $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -c /home/konrad/Desktop/fortran/src/task.f90 -o CMakeFiles/task.dir/src/task.f90.o

CMakeFiles/task.dir/src/task.f90.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing Fortran source to CMakeFiles/task.dir/src/task.f90.i"
	ifort $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -E /home/konrad/Desktop/fortran/src/task.f90 > CMakeFiles/task.dir/src/task.f90.i

CMakeFiles/task.dir/src/task.f90.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling Fortran source to assembly CMakeFiles/task.dir/src/task.f90.s"
	ifort $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -S /home/konrad/Desktop/fortran/src/task.f90 -o CMakeFiles/task.dir/src/task.f90.s

CMakeFiles/task.dir/src/task.f90.o.requires:

.PHONY : CMakeFiles/task.dir/src/task.f90.o.requires

CMakeFiles/task.dir/src/task.f90.o.provides: CMakeFiles/task.dir/src/task.f90.o.requires
	$(MAKE) -f CMakeFiles/task.dir/build.make CMakeFiles/task.dir/src/task.f90.o.provides.build
.PHONY : CMakeFiles/task.dir/src/task.f90.o.provides

CMakeFiles/task.dir/src/task.f90.o.provides.build: CMakeFiles/task.dir/src/task.f90.o


CMakeFiles/task.dir/src/gauss.f90.o: CMakeFiles/task.dir/flags.make
CMakeFiles/task.dir/src/gauss.f90.o: src/gauss.f90
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/konrad/Desktop/fortran/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building Fortran object CMakeFiles/task.dir/src/gauss.f90.o"
	ifort $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -c /home/konrad/Desktop/fortran/src/gauss.f90 -o CMakeFiles/task.dir/src/gauss.f90.o

CMakeFiles/task.dir/src/gauss.f90.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing Fortran source to CMakeFiles/task.dir/src/gauss.f90.i"
	ifort $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -E /home/konrad/Desktop/fortran/src/gauss.f90 > CMakeFiles/task.dir/src/gauss.f90.i

CMakeFiles/task.dir/src/gauss.f90.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling Fortran source to assembly CMakeFiles/task.dir/src/gauss.f90.s"
	ifort $(Fortran_DEFINES) $(Fortran_INCLUDES) $(Fortran_FLAGS) -S /home/konrad/Desktop/fortran/src/gauss.f90 -o CMakeFiles/task.dir/src/gauss.f90.s

CMakeFiles/task.dir/src/gauss.f90.o.requires:

.PHONY : CMakeFiles/task.dir/src/gauss.f90.o.requires

CMakeFiles/task.dir/src/gauss.f90.o.provides: CMakeFiles/task.dir/src/gauss.f90.o.requires
	$(MAKE) -f CMakeFiles/task.dir/build.make CMakeFiles/task.dir/src/gauss.f90.o.provides.build
.PHONY : CMakeFiles/task.dir/src/gauss.f90.o.provides

CMakeFiles/task.dir/src/gauss.f90.o.provides.build: CMakeFiles/task.dir/src/gauss.f90.o


# Object files for target task
task_OBJECTS = \
"CMakeFiles/task.dir/src/task.f90.o" \
"CMakeFiles/task.dir/src/gauss.f90.o"

# External object files for target task
task_EXTERNAL_OBJECTS =

bin/task: CMakeFiles/task.dir/src/task.f90.o
bin/task: CMakeFiles/task.dir/src/gauss.f90.o
bin/task: CMakeFiles/task.dir/build.make
bin/task: CMakeFiles/task.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/konrad/Desktop/fortran/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking Fortran executable bin/task"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/task.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/task.dir/build: bin/task

.PHONY : CMakeFiles/task.dir/build

CMakeFiles/task.dir/requires: CMakeFiles/task.dir/src/task.f90.o.requires
CMakeFiles/task.dir/requires: CMakeFiles/task.dir/src/gauss.f90.o.requires

.PHONY : CMakeFiles/task.dir/requires

CMakeFiles/task.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/task.dir/cmake_clean.cmake
.PHONY : CMakeFiles/task.dir/clean

CMakeFiles/task.dir/depend:
	cd /home/konrad/Desktop/fortran && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/konrad/Desktop/fortran /home/konrad/Desktop/fortran /home/konrad/Desktop/fortran /home/konrad/Desktop/fortran /home/konrad/Desktop/fortran/CMakeFiles/task.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/task.dir/depend

