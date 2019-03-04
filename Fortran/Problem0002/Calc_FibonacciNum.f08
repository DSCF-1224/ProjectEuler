! -------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler] 0002                                                                                                             !
! https://projecteuler.net/problem=2                                                                                               !
! http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%202                                                         !
! ------------------------------------------------------------------------------------------------------------------------------- -!
recursive pure function Calc_FibonacciNum_RCR (term) result (retval)

  ! argument of this <function>
  integer (kind=INT32), intent (in) :: term

  ! return value of this <function>
  integer (kind=INT64) :: retval

  ! STEP.01
  select case (term)
    case (1_INT32); retval = Fibonacci_1st
    case (2_INT32); retval = Fibonacci_2nd
    case default;   retval = Calc_FibonacciNum_RCR (term - 1_INT32) + Calc_FibonacciNum_RCR (term - 2_INT32)
  end select

  ! STEP.END
  return

end function Calc_FibonacciNum_RCR


pure function Calc_FibonacciNum_WithMemo (term) result (retval)

  ! arguments for this <function>
  integer (kind=INT32), intent (in) :: term

  ! return value of this <function>
  integer (kind=INT64) :: retval

  ! local variables for this <function>
  integer (kind=INT32)              :: itr
  integer (kind=INT64), allocatable :: buf(:)

  select case (term)
    case (1_INT32); retval = Fibonacci_1st; return
    case (2_INT32); retval = Fibonacci_2nd; return
  case default

    ! STEP.01
    ! allocate the array to store the Fibonacci sequence
    allocate ( buf(1:term) )

    ! STEP.02
    ! set the initial values of the Fibonacci sequence
    buf(1) = Fibonacci_1st
    buf(2) = Fibonacci_2nd

    ! STEP.03
    ! calculate the `term`-th value of the Fibonacci sequence
    do itr = 3,term,1
      buf(itr) = buf(itr-1) + buf(itr-2)
    end do

    ! STEP.04
    ! set the return value of this function
    retval = buf(term)

    ! STEP.05
    ! deallocate the array to store the Fibonacci sequence
    deallocate ( buf )

    ! STEP.END
    return

  end select

end function Calc_FibonacciNum_WithMemo

! -------------------------------------------------------------------------------------------------------------------------------- !
! End of Source Code                                                                                                               !
! -------------------------------------------------------------------------------------------------------------------------------- !
