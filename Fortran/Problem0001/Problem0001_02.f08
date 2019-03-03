! ------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler] 0001                                                                                                            !
! https://projecteuler.net/problem=1                                                                                              !
! http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%201                                                        !
! ------------------------------------------------------------------------------------------------------------------------------- !
  
pure function Problem0001_02 (limit) result (sum)

  ! argument of this <function>
  integer (kind=INT64), intent (in) :: limit

  ! return value of this <function>
  integer (kind=INT64) :: sum

  ! support variables for this <function>
  integer (kind=INT64) :: itr


  ! STEP.01
  ! initialize the variables
  sum = 0_INT64

  ! STEP.02
  ! calculate the target sum
  do itr = 1_INT64, limit-1_INT64, 1_INT64
    if ( determine_istargetmultiple (itr) ) sum = sum + itr
  end do

  ! STEP.END !
  return

end function Problem0001_02

! -------------------------------------------------------------------------------------------------------------------------------- !
! End of Source Code                                                                                                               !
! -------------------------------------------------------------------------------------------------------------------------------- !
