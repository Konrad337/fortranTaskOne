

module gauss

    implicit none

contains

subroutine gauss_elimination(A, b, arr_size, output_a)
    implicit none

    integer(kind=4), intent(IN)                          :: arr_size
    real(kind=8)                                         :: C
    real(kind=8),    intent(INOUT)                       :: A(arr_size, arr_size), b(arr_size), output_a(arr_size)
    integer(kind=4)                                      :: i, j


    do i=1,arr_size
        output_a(i) = sum(A(i,:)*b)
    end do

    do i = 1,arr_size
        do j = 1,arr_size
            if(i /= j) then
                C = A(i,j)/A(i,i)
                A(:,j) = A(:,j) - C * A(:,i)
                output_a(j) = output_a(j) - C*output_a(i)
                output_a(i) = output_a(i)/A(i,i)
                A(:,i) = A(:,i)/A(i,i)
            endif
        end do
    end do
    !write(*,*) output_a






end subroutine


end module
