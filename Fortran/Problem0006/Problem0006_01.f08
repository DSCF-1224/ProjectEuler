! ------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler] 0006                                                                                                            !
! https://projecteuler.net/problem=6                                                                                              !
! http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%206                                                        !
! ------------------------------------------------------------------------------------------------------------------------------- !

pure function Problem0006_01_INT32 (target) result(diff)

  ! arguments for this <function>
  integer(kind=INT32), intent(in) :: target

  ! return value of this <function>
  integer(kind=INT32) :: diff

  ! variables for this <function>
  integer(kind=INT32) :: sum_squared, squared_sum
  integer(kind=INT32) :: itr

  ! STEP.01
  sum_squared = 1_INT32
  squared_sum = 1_INT32

  ! STEP.02
  do itr = 2_INT32, target, 1_INT32
    sum_squared = sum_squared + itr*itr
    squared_sum = squared_sum + itr
  end do

  ! STEP.03
  squared_sum = squared_sum * squared_sum

  ! STEP.04
  diff = squared_sum - sum_squared

  ! STEP.END
  return

end function Problem0006_01_INT32


pure function Problem0006_01_INT64 (target) result(diff)

  ! arguments for this <function>
  integer(kind=INT64), intent(in) :: target

  ! return value of this <function>
  integer(kind=INT64) :: diff

  ! variables for this <function>
  integer(kind=INT64) :: sum_squared, squared_sum
  integer(kind=INT64) :: itr

  ! STEP.01
  sum_squared = 1_INT64
  squared_sum = 1_INT64

  ! STEP.02
  do itr = 2_INT64, target, 1_INT64
    sum_squared = sum_squared + itr*itr
    squared_sum = squared_sum + itr
  end do

  ! STEP.03
  squared_sum = squared_sum * squared_sum

  ! STEP.04
  diff = squared_sum - sum_squared

  ! STEP.END
  return

end function Problem0006_01_INT64

! -------------------------------------------------------------------------------------------------------------------------------- !
! End of Source Code                                                                                                               !
! -------------------------------------------------------------------------------------------------------------------------------- !
