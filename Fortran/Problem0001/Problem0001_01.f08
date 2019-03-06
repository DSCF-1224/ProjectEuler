! ------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler] 0001                                                                                                            !
! https://projecteuler.net/problem=1                                                                                              !
! http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%201                                                        !
! ------------------------------------------------------------------------------------------------------------------------------- !
  
pure function Problem0001_01(limit) result(sum)

  ! argument of this <function>
  integer(kind=INT64), intent(in) :: limit

  ! return value of this <function>
  integer(kind=INT64) :: sum

  ! support variables for this <function>
  integer(kind=INT64) :: itr


  ! STEP.01
  ! initialize the variables
  itr = 1_INT64
  sum = 0_INT64

  ! STEP.02
  ! calculate the target sum
  do while (itr .lt. limit)
    if (IsTargetMultiple (itr)) sum = sum + itr
    itr = itr + 1_INT64
  end do

  ! STEP.03
  return

end function Problem0001_01

! -------------------------------------------------------------------------------------------------------------------------------- !
! End of Source Code                                                                                                               !
! -------------------------------------------------------------------------------------------------------------------------------- !
