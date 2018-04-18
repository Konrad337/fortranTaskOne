
cmake_minimum_required(VERSION 3.5)
project (lab_project_1)
file(GLOB SOURCES "./src/*.f90")
enable_language (Fortran)

set (CMAKE_Fortran_COMPILER ifort)
message("Set fortran compiler to ${CMAKE_Fortran_COMPILER}")

set(CMAKE_SOURCE_DIR ${CMAKE_SOURCE_DIR}/src)
set(CMAKE_BINARY_DIR ${CMAKE_SOURCE_DIR}/../bin)
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR})
set(LIBRARY_OUTPUT_PATH ${CMAKE_BINARY_DIR})
set(CMAKE_TEST_DIR ${CMAKE_SOURCE_DIR}/tests)
set(TASK_SOURCES
    ${CMAKE_SOURCE_DIR}/task.f90
    ${CMAKE_SOURCE_DIR}/gauss.f90)
set(TEST_SOURCES
    ${CMAKE_SOURCE_DIR}/tests.f90
    ${CMAKE_SOURCE_DIR}/gauss.f90
    ${CMAKE_SOURCE_DIR}/fruit.f90)



include_directories("${PROJECT_SOURCE_DIR}/src")


if(NOT CMAKE_BUILD_TYPE)
  message(STATUS "No build type selected, default to Release")
  set(CMAKE_BUILD_TYPE "Release")
#  set(CMAKE_BUILD_TYPE "Debug")
endif()

# FFLAGS depend on the compiler
get_filename_component (Fortran_COMPILER_NAME ${CMAKE_Fortran_COMPILER} NAME)

if(CMAKE_Fortran_COMPILER_ID MATCHES "GNU")
    set(dialect "-ffree-form -std=f2008 -fimplicit-none -fpp -Wall -pedantic")
    set(bounds "-fbounds-check")
    set(realeaseopts "-O3  -pthread -funroll-all-loops")
    set(debugopts "-O0 -g3 -fbacktrace -fcheck=all -fdump-fortran-optimized")
#    -DIINFO -DIDEBUG -DIPRINT")
elseif(CMAKE_Fortran_COMPILER_ID MATCHES "Intel")
    set(dialect "-std08  -module . -implicitnone -fpp -Wall -pedantic")
    set(bounds " -check bounds")
    set(realeaseopts "-funroll-all-loops -O3")
    set(debugopts "-O0 -g -traceback -check all -debug extended -debug-parameters all")
#    -DIINFO -DIDEBUG -DIPRINT")
endif()

set(CMAKE_Fortran_FLAGS_DEBUG "${CMAKE_Fortran_FLAGS_DEBUG} ${bounds}")
set(CMAKE_Fortran_FLAGS_DEBUG "${CMAKE_Fortran_FLAGS_DEBUG} ${debugopts}")
set(CMAKE_Fortran_FLAGS "${CMAKE_Fortran_FLAGS} ${dialect}")
set(CMAKE_Fortran_FLAGS "${CMAKE_Fortran_RELEASE_FLAGS} ${realeaseopts}")


add_executable(task ${TASK_SOURCES})
add_executable(tests ${TEST_SOURCES})

set(runSystemCommand "${CMAKE_BINARY_DIR}/tests")

enable_testing()
add_test(NAME testSystem COMMAND sh -c
         "rm -f ${CMAKE_TEST_DIR}/systemResults.txt \
          && ${runSystemCommand} \
          >> ${CMAKE_TEST_DIR}/systemResults.txt")












#
