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
        P2 = -2.0/(size**2)
        P3 = 1.0/(size**2)


        allocate ( matrice(size-1, size-1) )
        allocate (X(size-1))
        allocate (output(size))
        allocate (correct_output(size))

        matrice(:,:) = 0
        output(:) = 0
        !output(size) = 1

        do j=1,size
            correct_output(j) = 1.0*j/size
            X(j) = 1.0*j/size
        end do



        call fill_matrice(P1, P2, P3, size-1, matrice)
        call gauss_elimination(matrice, X, size - 1, output(1:size-1))
        output(size) = 1
        !write(*,*) output
        numeric_error_mean = sum(correct_output - output)/size


        write(*, *) 'Numeric errror mean for n =', size, ' equals ', numeric_error_mean
        write (filename_1, "(A13,I1)") "graphs/data_o", i
        write (filename_2, "(A15,I1)") "graphs/data_c_o", i
        open(unit=1, file=filename_1)
        open(unit=2, file=filename_2)

        do j=1,size
            write(1,*) 1.0*j/size, output(j)
            write(2,*) 1.0*j/size, correct_output(j)
        end do
        close(unit=1)
        close(unit=2)

        deallocate (matrice, output, correct_output, X)

    end do







END PROGRAM
