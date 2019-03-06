! -------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler] 0002                                                                                                             !
! https://projecteuler.net/problem=2                                                                                               !
! http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%202                                                         !
! ------------------------------------------------------------------------------------------------------------------------------- -!
 
pure function Problem0002_01_RCR(limit) result(sum)

  ! argument of this <function>
  integer(kind=INT64), intent(in) :: limit

  ! return value of this <function>
  integer(kind=INT64) :: sum

  ! support variables for this <function>
  integer(kind=INT32) :: itr
  integer(kind=INT64) :: buf_Fibonacci


  ! STEP.01
  ! initialize the local variables
  itr           = 1_INT32
  buf_Fibonacci = Calc_FibonacciNum_RCR(itr)
  sum           = 0_INT64

  ! STEP.02
  do while (buf_Fibonacci .lt. limit)
    if ( IsEven(buf_Fibonacci) ) sum = sum + buf_Fibonacci
    itr           = itr + 1_INT32
    buf_Fibonacci = Calc_FibonacciNum_RCR(itr)
  end do

  ! STEP.END
  return

end function Problem0002_01_RCR

 
pure function Problem0002_01_WithMemo(limit) result(sum)

  ! argument of this <function>
  integer(kind=INT64), intent(in) :: limit

  ! return value of this <function>
  integer(kind=INT64) :: sum

  ! support variables for this <function>
  integer(kind=INT32) :: itr
  integer(kind=INT64) :: buf_Fibonacci


  ! STEP.01
  ! initialize the local variables
  itr           = 1_INT32
  buf_Fibonacci = Calc_FibonacciNum_WithMemo(itr)
  sum           = 0_INT64

  ! STEP.02
  do while (buf_Fibonacci .lt. limit)
    if ( IsEven(buf_Fibonacci) ) sum = sum + buf_Fibonacci
    itr           = itr + 1_INT32
    buf_Fibonacci = Calc_FibonacciNum_WithMemo(itr)
  end do

  ! STEP.END
  return

end function Problem0002_01_WithMemo

! -------------------------------------------------------------------------------------------------------------------------------- !
! End of Source Code                                                                                                               !
! -------------------------------------------------------------------------------------------------------------------------------- !
