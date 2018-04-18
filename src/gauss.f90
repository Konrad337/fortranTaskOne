

module gauss

    implicit none

contains

subroutine gauss_elimination(A, b, arrSize, X)

    implicit none
    integer(kind=4), intent(IN)                          :: arrSize
    real(kind=8)                                         :: X(arrSize), C
    real(kind=8),    intent(INOUT)                       :: A(arrSize, arrSize), b(arrSize)
    integer(kind=4)                                      :: i, j


    X = MATMUL(A, b)

    do i = 1,arrSize
        do j = 1,arrSize
            if(i.ne.j) then
                C = A(i,j)/A(i,i)
                A(:,j) = A(:,j) - C * A(:,i)
                X(j) = X(j) - C*X(i)
                X(i) = X(i)/A(i,i)
                A(:,i) = A(:,i)/A(i,i)
            endif
        end do
    end do

    write(*,*) X


end subroutine


end module
