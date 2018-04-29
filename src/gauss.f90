

module gauss

    implicit none

contains

subroutine gauss_elimination(A, output_a, arr_size)
    implicit none

    integer(kind=4), intent(IN)                          :: arr_size
    real(kind=8)                                         :: C
    real(kind=8),    intent(INOUT)                       :: A(arr_size, arr_size), output_a(arr_size)
    integer(kind=4)                                      :: i, j




    do i = 1,arr_size
        do j = 1,arr_size
            if(i /= j) then
                C = A(i,j)/A(i,i)
                if (C .NE. 0) then
                A(:, J) = A(:, J) - C * A(:, I)
                output_a(J) = output_a(J) - C*output_a(I)
            endif
            if (A(I, I) .NE. 1) then
                output_a(I) = output_a(I) / A(I, I)
                A(:, I) = A(:, I) / A(I, I)
            endif
            endif
        end do
    end do
    





end subroutine


end module
