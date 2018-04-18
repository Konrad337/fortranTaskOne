


module gauss_test
    use gauss
    use fruit

    implicit none
    !private
    integer(kind=4)            :: size = 3, i
    real(kind=8), dimension(9) :: test_array_1 = (/ 1.0, 0.0, 0.0, 3.0, 10.0, 5.0, 0.0, 0.0, 10.0 /)
    real(kind=8), dimension(3) :: test_array_2 = (/ 1.0, 2.0, 6.0/)
    real(kind=8), dimension(3) :: correct_output = (/ 1.0, 2.0, 6.0/)
    real(kind=8), dimension(3) :: output_test_array


contains
    subroutine gauss_elimination_test
        call gauss_elimination(test_array_1, test_array_2, 3, output_test_array)
        do i = 1,size
            call assert_equals(output_test_array(i), correct_output(i))
        end do
    end subroutine

end module gauss_test


PROGRAM tests
    use fruit
    use gauss_test
    call init_fruit
    call gauss_elimination_test
    call fruit_summary

END PROGRAM tests
