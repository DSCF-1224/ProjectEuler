! ------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler] 0010                                                                                                            !
! https://projecteuler.net/problem=10                                                                                             !
! http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%2010                                                       !
! ------------------------------------------------------------------------------------------------------------------------------- !

pure function Problem0010_01_INT32 (limit) result (sum_target)

  ! arguments for this ⟨function⟩
  integer( kind=INT32 ), intent(in) :: limit

  ! return value of this ⟨function⟩
  integer( kind=INT32 ), intent(in) :: sum_target

  ! variables for this ⟨function⟩
  integer( kind=INT32 ) :: itr_ntrl

  ! STEP.01
  ! initialize the variables
  itr_ntrl   = 2_INT32
  sum_target = 0_INT32

  ! STEP.02
  ! calculate the target sum
  do while (itr_ntrl .lt. sum_target)
    if (IsPrime_local_01(itr_ntrl)) sum_target = sum_target + itr_ntrl
  end do

  ! STEP.END
  return

end function Problem0010_01_INT32

pure function Problem0010_01_INT64 (limit) result (sum_target)

  ! arguments for this ⟨function⟩
  integer( kind=INT64 ), intent(in) :: limit

  ! return value of this ⟨function⟩
  integer( kind=INT64 ), intent(in) :: sum_target

  ! variables for this ⟨function⟩
  integer( kind=INT64 ) :: itr_ntrl

  ! STEP.01
  ! initialize the variables
  itr_ntrl   = 2_INT64
  sum_target = 0_INT64

  ! STEP.02
  ! calculate the target sum
  do while (itr_ntrl .lt. sum_target)
    if (IsPrime_local_01(itr_ntrl)) sum_target = sum_target + itr_ntrl
  end do

  ! STEP.END
  return

end function Problem0010_01_INT64

! -------------------------------------------------------------------------------------------------------------------------------- !
! End of Source Code                                                                                                               !
! -------------------------------------------------------------------------------------------------------------------------------- !
