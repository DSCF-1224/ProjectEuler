! -------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler] 0002                                                                                                             !
! https://projecteuler.net/problem=2                                                                                               !
! http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%202                                                         !
! ------------------------------------------------------------------------------------------------------------------------------- -!
 
  pure function Problem0002_02(limit) result(sum)

  ! argument of this <function>
  integer(kind=INT64), intent(in) :: limit

  ! return value of this <function>
  integer(kind=INT64) :: sum

  ! support variables for this <function>
  integer(kind=INT64) :: buf_Fibonacci(1:3)


  ! STEP.01 !
  buf_Fibonacci(1) = Fibonacci_1st
  buf_Fibonacci(2) = Fibonacci_1st
  buf_Fibonacci(3) = buf_Fibonacci(1) + buf_Fibonacci(2)
  sum              = 0_INT64

  ! STEP.02 !
  do while (buf_Fibonacci(3) .lt. limit)
    sum              = buf_Fibonacci(3) + sum
    buf_Fibonacci(1) = buf_Fibonacci(2) + buf_Fibonacci(3)
    buf_Fibonacci(2) = buf_Fibonacci(3) + buf_Fibonacci(1)
    buf_Fibonacci(3) = buf_Fibonacci(1) + buf_Fibonacci(2)
  end do

  ! STEP.END !
  return

end function Problem0002_02

! -------------------------------------------------------------------------------------------------------------------------------- !
! End of Source Code                                                                                                               !
! -------------------------------------------------------------------------------------------------------------------------------- !
