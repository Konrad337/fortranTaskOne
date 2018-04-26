 # Finite Difference Method implementation in Fortran
 ## Written for a course project
 To compile the programme open the terminal in project folder
 and use cmake . && make
 It needs ifort in your path, to change it edit "set (CMAKE_Fortran_COMPILER ifort)"
 to compiler of your choice or remove it co cmake could find fortran compiler itself
 To make tests use make check, it will print output of tests in console and
 write them down in tests/unit_tests.txt, it will upgrade data and data graphs as well
