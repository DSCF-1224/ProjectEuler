! ------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler] 0006                                                                                                            !
! https://projecteuler.net/problem=6                                                                                              !
! http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%206                                                        !
! ------------------------------------------------------------------------------------------------------------------------------- !

pure function Problem0006_02_INT32 (target) result(diff)

  ! arguments for this <function>
  integer(kind=INT32), intent(in) :: target

  ! return value of this <function>
  integer(kind=INT32) :: diff

  ! variables for this <function>
  integer(kind=INT32) :: sum_squared, squared_sum

  ! STEP.01
  sum_squared = target * ( target + 1_INT32 ) * ( 2_INT32 * target + 1_INT32 ) / 6_INT32

  ! STEP.02
  squared_sum = target * ( target + 1_INT32 ) / 2_INT32
  squared_sum = squared_sum * squared_sum

  ! STEP.03
  diff = squared_sum - sum_squared
  return

end function Problem0006_02_INT32


pure function Problem0006_02_INT64 (target) result(diff)

  ! arguments for this <function>
  integer(kind=INT64), intent(in) :: target

  ! return value of this <function>
  integer(kind=INT64) :: diff

  ! variables for this <function>
  integer(kind=INT64) :: sum_squared, squared_sum

  ! STEP.01
  sum_squared = target * ( target + 1_INT64 ) * ( 2_INT64 * target + 1_INT64 ) / 6_INT64

  ! STEP.02
  squared_sum = target * ( target + 1_INT64 ) / 2_INT64
  squared_sum = squared_sum * squared_sum

  ! STEP.03
  diff = squared_sum - sum_squared
  return

end function Problem0006_02_INT64

! -------------------------------------------------------------------------------------------------------------------------------- !
! End of Source Code                                                                                                               !
! -------------------------------------------------------------------------------------------------------------------------------- !
