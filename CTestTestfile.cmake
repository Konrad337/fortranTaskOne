# CMake generated Testfile for 
# Source directory: /home/konrad/Desktop/fortran
# Build directory: /home/konrad/Desktop/fortran
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(unit_tests "sh" "-c" "rm -f /home/konrad/Desktop/fortran/src/../tests/unit_tests.txt           && /home/konrad/Desktop/fortran/src/../bin/tests           >> /home/konrad/Desktop/fortran/src/../tests/unit_tests.txt           && less /home/konrad/Desktop/fortran/src/../tests/unit_tests.txt")
