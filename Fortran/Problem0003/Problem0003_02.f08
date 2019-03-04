! ------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler] 0003                                                                                                            !
! https://projecteuler.net/problem=3                                                                                              !
! http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%203                                                        !
! ------------------------------------------------------------------------------------------------------------------------------- !
pure function Problem0003_02_INT32 (target) result (factor_last)

  ! argument of this <function>
  integer (kind=INT32), intent (in) :: target

  ! return value of this <function>
  integer (kind=INT32) :: factor_last

  ! support variables for this <function>
  integer (kind=INT32) :: buffer_trgt
  integer (kind=INT32) :: factor_crnt


  ! STEP.01 !
  buffer_trgt = target
  factor_crnt = 2_INT32

  ! STEP.02 !
  if (determine_ismultiple (target=buffer_trgt, base=factor_crnt)) then
  factor_last = factor_crnt
  do while (determine_ismultiple (target=buffer_trgt, base=factor_crnt))
    buffer_trgt = buffer_trgt / factor_crnt
  end do
  else
  factor_last = 1_INT32
  end if

  ! STEP.03 !
  factor_crnt = 3_INT32

  ! STEP.04 !
  do while (buffer_trgt .gt. 1_INT32)

  if (determine_ismultiple (target=buffer_trgt, base=factor_crnt)) then
    factor_last = factor_crnt
    do while (determine_ismultiple (target=buffer_trgt, base=factor_crnt))
    buffer_trgt = buffer_trgt / factor_crnt
    end do
  end if

  factor_crnt = factor_crnt + 2_INT32

  end do

  ! STEP.END !
  return

end function Problem0003_02_INT32

pure function Problem0003_02_INT64 (target) result (factor_last)

  ! argument of this <function>
  integer (kind=INT64), intent (in) :: target

  ! return value of this <function>
  integer (kind=INT64) :: factor_last

  ! support variables for this <function>
  integer (kind=INT64) :: buffer_trgt
  integer (kind=INT64) :: factor_crnt


  ! STEP.01 !
  buffer_trgt = target
  factor_crnt = 2_INT64

  ! STEP.02 !
  if (determine_ismultiple (target=buffer_trgt, base=factor_crnt)) then
  factor_last = factor_crnt
  do while (determine_ismultiple (target=buffer_trgt, base=factor_crnt))
    buffer_trgt = buffer_trgt / factor_crnt
  end do
  else
  factor_last = 1_INT64
  end if

  ! STEP.03 !
  factor_crnt = 3_INT64

  ! STEP.04 !
  do while (buffer_trgt .gt. 1_INT64)

  if ( determine_ismultiple (target=buffer_trgt, base=factor_crnt)) then
    factor_last = factor_crnt
    do while (determine_ismultiple (target=buffer_trgt, base=factor_crnt))
    buffer_trgt = buffer_trgt / factor_crnt
    end do
  end if

  factor_crnt = factor_crnt + 2_INT64

  end do

  ! STEP.END !
  return

end function Problem0003_02_INT64

! -------------------------------------------------------------------------------------------------------------------------------- !
! End of Source Code                                                                                                               !
! -------------------------------------------------------------------------------------------------------------------------------- !
