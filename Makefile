# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


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

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/usr/bin/ccmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# Special rule for the target test
test:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running tests..."
	/usr/bin/ctest --force-new-ctest-process $(ARGS)
.PHONY : test

# Special rule for the target test
test/fast: test

.PHONY : test/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/konrad/Desktop/fortran/CMakeFiles /home/konrad/Desktop/fortran/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/konrad/Desktop/fortran/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named task

# Build rule for target.
task: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 task
.PHONY : task

# fast build rule for target.
task/fast:
	$(MAKE) -f CMakeFiles/task.dir/build.make CMakeFiles/task.dir/build
.PHONY : task/fast

#=============================================================================
# Target rules for targets named tests

# Build rule for target.
tests: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 tests
.PHONY : tests

# fast build rule for target.
tests/fast:
	$(MAKE) -f CMakeFiles/tests.dir/build.make CMakeFiles/tests.dir/build
.PHONY : tests/fast

#=============================================================================
# Target rules for targets named check

# Build rule for target.
check: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 check
.PHONY : check

# fast build rule for target.
check/fast:
	$(MAKE) -f CMakeFiles/check.dir/build.make CMakeFiles/check.dir/build
.PHONY : check/fast

#=============================================================================
# Target rules for targets named task4

# Build rule for target.
task4: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 task4
.PHONY : task4

# fast build rule for target.
task4/fast:
	$(MAKE) -f CMakeFiles/task4.dir/build.make CMakeFiles/task4.dir/build
.PHONY : task4/fast

#=============================================================================
# Target rules for targets named task16

# Build rule for target.
task16: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 task16
.PHONY : task16

# fast build rule for target.
task16/fast:
	$(MAKE) -f CMakeFiles/task16.dir/build.make CMakeFiles/task16.dir/build
.PHONY : task16/fast

src/fruit.o: src/fruit.F90.o

.PHONY : src/fruit.o

# target to build an object file
src/fruit.F90.o:
	$(MAKE) -f CMakeFiles/tests.dir/build.make CMakeFiles/tests.dir/src/fruit.F90.o
.PHONY : src/fruit.F90.o

src/fruit.i: src/fruit.F90.i

.PHONY : src/fruit.i

# target to preprocess a source file
src/fruit.F90.i:
	$(MAKE) -f CMakeFiles/tests.dir/build.make CMakeFiles/tests.dir/src/fruit.F90.i
.PHONY : src/fruit.F90.i

src/fruit.s: src/fruit.F90.s

.PHONY : src/fruit.s

# target to generate assembly for a file
src/fruit.F90.s:
	$(MAKE) -f CMakeFiles/tests.dir/build.make CMakeFiles/tests.dir/src/fruit.F90.s
.PHONY : src/fruit.F90.s

src/gauss.o: src/gauss.F90.o

.PHONY : src/gauss.o

# target to build an object file
src/gauss.F90.o:
	$(MAKE) -f CMakeFiles/task.dir/build.make CMakeFiles/task.dir/src/gauss.F90.o
	$(MAKE) -f CMakeFiles/tests.dir/build.make CMakeFiles/tests.dir/src/gauss.F90.o
	$(MAKE) -f CMakeFiles/task4.dir/build.make CMakeFiles/task4.dir/src/gauss.F90.o
	$(MAKE) -f CMakeFiles/task16.dir/build.make CMakeFiles/task16.dir/src/gauss.F90.o
.PHONY : src/gauss.F90.o

src/gauss.i: src/gauss.F90.i

.PHONY : src/gauss.i

# target to preprocess a source file
src/gauss.F90.i:
	$(MAKE) -f CMakeFiles/task.dir/build.make CMakeFiles/task.dir/src/gauss.F90.i
	$(MAKE) -f CMakeFiles/tests.dir/build.make CMakeFiles/tests.dir/src/gauss.F90.i
	$(MAKE) -f CMakeFiles/task4.dir/build.make CMakeFiles/task4.dir/src/gauss.F90.i
	$(MAKE) -f CMakeFiles/task16.dir/build.make CMakeFiles/task16.dir/src/gauss.F90.i
.PHONY : src/gauss.F90.i

src/gauss.s: src/gauss.F90.s

.PHONY : src/gauss.s

# target to generate assembly for a file
src/gauss.F90.s:
	$(MAKE) -f CMakeFiles/task.dir/build.make CMakeFiles/task.dir/src/gauss.F90.s
	$(MAKE) -f CMakeFiles/tests.dir/build.make CMakeFiles/tests.dir/src/gauss.F90.s
	$(MAKE) -f CMakeFiles/task4.dir/build.make CMakeFiles/task4.dir/src/gauss.F90.s
	$(MAKE) -f CMakeFiles/task16.dir/build.make CMakeFiles/task16.dir/src/gauss.F90.s
.PHONY : src/gauss.F90.s

src/matrice_ops.o: src/matrice_ops.F90.o

.PHONY : src/matrice_ops.o

# target to build an object file
src/matrice_ops.F90.o:
	$(MAKE) -f CMakeFiles/task.dir/build.make CMakeFiles/task.dir/src/matrice_ops.F90.o
	$(MAKE) -f CMakeFiles/tests.dir/build.make CMakeFiles/tests.dir/src/matrice_ops.F90.o
	$(MAKE) -f CMakeFiles/task4.dir/build.make CMakeFiles/task4.dir/src/matrice_ops.F90.o
	$(MAKE) -f CMakeFiles/task16.dir/build.make CMakeFiles/task16.dir/src/matrice_ops.F90.o
.PHONY : src/matrice_ops.F90.o

src/matrice_ops.i: src/matrice_ops.F90.i

.PHONY : src/matrice_ops.i

# target to preprocess a source file
src/matrice_ops.F90.i:
	$(MAKE) -f CMakeFiles/task.dir/build.make CMakeFiles/task.dir/src/matrice_ops.F90.i
	$(MAKE) -f CMakeFiles/tests.dir/build.make CMakeFiles/tests.dir/src/matrice_ops.F90.i
	$(MAKE) -f CMakeFiles/task4.dir/build.make CMakeFiles/task4.dir/src/matrice_ops.F90.i
	$(MAKE) -f CMakeFiles/task16.dir/build.make CMakeFiles/task16.dir/src/matrice_ops.F90.i
.PHONY : src/matrice_ops.F90.i

src/matrice_ops.s: src/matrice_ops.F90.s

.PHONY : src/matrice_ops.s

# target to generate assembly for a file
src/matrice_ops.F90.s:
	$(MAKE) -f CMakeFiles/task.dir/build.make CMakeFiles/task.dir/src/matrice_ops.F90.s
	$(MAKE) -f CMakeFiles/tests.dir/build.make CMakeFiles/tests.dir/src/matrice_ops.F90.s
	$(MAKE) -f CMakeFiles/task4.dir/build.make CMakeFiles/task4.dir/src/matrice_ops.F90.s
	$(MAKE) -f CMakeFiles/task16.dir/build.make CMakeFiles/task16.dir/src/matrice_ops.F90.s
.PHONY : src/matrice_ops.F90.s

src/task.o: src/task.F90.o

.PHONY : src/task.o

# target to build an object file
src/task.F90.o:
	$(MAKE) -f CMakeFiles/task.dir/build.make CMakeFiles/task.dir/src/task.F90.o
	$(MAKE) -f CMakeFiles/task4.dir/build.make CMakeFiles/task4.dir/src/task.F90.o
	$(MAKE) -f CMakeFiles/task16.dir/build.make CMakeFiles/task16.dir/src/task.F90.o
.PHONY : src/task.F90.o

src/task.i: src/task.F90.i

.PHONY : src/task.i

# target to preprocess a source file
src/task.F90.i:
	$(MAKE) -f CMakeFiles/task.dir/build.make CMakeFiles/task.dir/src/task.F90.i
	$(MAKE) -f CMakeFiles/task4.dir/build.make CMakeFiles/task4.dir/src/task.F90.i
	$(MAKE) -f CMakeFiles/task16.dir/build.make CMakeFiles/task16.dir/src/task.F90.i
.PHONY : src/task.F90.i

src/task.s: src/task.F90.s

.PHONY : src/task.s

# target to generate assembly for a file
src/task.F90.s:
	$(MAKE) -f CMakeFiles/task.dir/build.make CMakeFiles/task.dir/src/task.F90.s
	$(MAKE) -f CMakeFiles/task4.dir/build.make CMakeFiles/task4.dir/src/task.F90.s
	$(MAKE) -f CMakeFiles/task16.dir/build.make CMakeFiles/task16.dir/src/task.F90.s
.PHONY : src/task.F90.s

src/tests.o: src/tests.F90.o

.PHONY : src/tests.o

# target to build an object file
src/tests.F90.o:
	$(MAKE) -f CMakeFiles/tests.dir/build.make CMakeFiles/tests.dir/src/tests.F90.o
.PHONY : src/tests.F90.o

src/tests.i: src/tests.F90.i

.PHONY : src/tests.i

# target to preprocess a source file
src/tests.F90.i:
	$(MAKE) -f CMakeFiles/tests.dir/build.make CMakeFiles/tests.dir/src/tests.F90.i
.PHONY : src/tests.F90.i

src/tests.s: src/tests.F90.s

.PHONY : src/tests.s

# target to generate assembly for a file
src/tests.F90.s:
	$(MAKE) -f CMakeFiles/tests.dir/build.make CMakeFiles/tests.dir/src/tests.F90.s
.PHONY : src/tests.F90.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... rebuild_cache"
	@echo "... edit_cache"
	@echo "... task"
	@echo "... tests"
	@echo "... check"
	@echo "... task4"
	@echo "... task16"
	@echo "... test"
	@echo "... src/fruit.o"
	@echo "... src/fruit.i"
	@echo "... src/fruit.s"
	@echo "... src/gauss.o"
	@echo "... src/gauss.i"
	@echo "... src/gauss.s"
	@echo "... src/matrice_ops.o"
	@echo "... src/matrice_ops.i"
	@echo "... src/matrice_ops.s"
	@echo "... src/task.o"
	@echo "... src/task.i"
	@echo "... src/task.s"
	@echo "... src/tests.o"
	@echo "... src/tests.i"
	@echo "... src/tests.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

