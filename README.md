 # Finite Difference Method implementation in Fortran
 ## Written for a course project

 To compile the programme open the terminal in project folder
 and use cmake . && make

 It needs ifort in your path, to change it edit "set (CMAKE_Fortran_COMPILER ifort)"
 to compiler of your choice or remove it co cmake could find fortran compiler itself

 To make tests use make check, it will print output of tests in console and
 write them down in tests/unit_tests.txt, if you already run
 ./bin/task, ./bin/task4, ./bin/task16 it will also update graphs in ./graphs

 ![Grapph of errors with diffrent kinds:][logo]
 [logo]: https://github.com/Konrad337/fortranTaskOne/blob/master/graphs/errors.png




 ![Grapph of results:][logo]
 [logo]: https://github.com/Konrad337/fortranTaskOne/blob/master/graphs/data6.png
