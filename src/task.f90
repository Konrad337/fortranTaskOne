









PROGRAM task
    use gauss
    use matrice_ops

    implicit none
    integer(kind=4)                                          :: size
    real(kind=8)                                             :: P1, P2, P3, numeric_error_mean = 0
    real(kind=8), dimension(:,:), allocatable                :: matrice
    real(kind=8), dimension(:), allocatable                  :: X, output, correct_output
    integer(kind=4)                                          :: i, j
    character(len=1024)                                      :: filename_1, filename_2

    do i=1,3
        size = 10**i
        P1 = 1.0/(size**2)
        P2 = (-2.0)/(size**2)
        P3 = 1.0/(size**2)
        !write(*,*) P1, P2, P3
        allocate ( matrice(size-1, size-1) )
        allocate (X(size-1))
        allocate (output(size-1))
        allocate (correct_output(size-1))

        do j=1,size-1
            X(j) = 1
            correct_output(j) = j/size
        end do
        call fill_matrice(P1, P2, P3, size-1, matrice)
        call gauss_elimination(matrice, X, size - 1, output)
        numeric_error_mean = sum(correct_output - output)/size-1

        write(*, *) 'Numeric errror mean for n =', size, ' equals ', numeric_error_mean
        write (filename_1, "(A6,I1)") "data_o", i
        write (filename_2, "(A8,I1)") "data_c_o", i
        open(unit=1, file=filename_1)
        open(unit=2, file=filename_2)
        do j=1,size-1
            write(1,*) 1.0*j/size, output(j)
            write(2,*) 1.0*j/size, correct_output(j)
        end do
        close(unit=1)
        close(unit=2)

        deallocate (matrice, output, correct_output, X)

    end do







END PROGRAM
