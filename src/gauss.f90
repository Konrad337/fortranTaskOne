

module gauss

    implicit none

contains

subroutine gauss_elimination(A, b, arr_size, X)

    implicit none
    integer(kind=4), intent(IN)                          :: arr_size
    real(kind=8)                                         :: X(arr_size), C
    real(kind=8),    intent(INOUT)                       :: A(arr_size, arr_size), b(arr_size)
    integer(kind=4)                                      :: i, j


    X = MATMUL(A, b)

    do i = 1,arr_size
        do j = 1,arr_size
            if(i.ne.j) then
                C = A(i,j)/A(i,i)
                A(:,j) = A(:,j) - C * A(:,i)
                X(j) = X(j) - C*X(i)
                X(i) = X(i)/A(i,i)
                A(:,i) = A(:,i)/A(i,i)
            endif
        end do
    end do


end subroutine


end module
