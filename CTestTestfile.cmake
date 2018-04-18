# CMake generated Testfile for 
# Source directory: /home/konrad/Desktop/fortran
# Build directory: /home/konrad/Desktop/fortran
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(testSystem "sh" "-c" "rm -f /home/konrad/Desktop/fortran/src/tests/systemResults.txt           && /home/konrad/Desktop/fortran/src/../bin/tests           >> /home/konrad/Desktop/fortran/src/tests/systemResults.txt")
