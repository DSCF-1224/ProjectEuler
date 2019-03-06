! ------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler] 0003                                                                                                            !
! https://projecteuler.net/problem=3                                                                                              !
! http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%203                                                        !
! ------------------------------------------------------------------------------------------------------------------------------- !
pure function Problem0003_03_INT32 (target) result(factor_last)

  ! argument of this <function>
  integer(kind=INT32), intent(in) :: target

  ! return value of this <function>
  integer(kind=INT32) :: factor_last
  integer(kind=INT32) :: factor_max

  ! support variables for this <function>
  integer(kind=INT32) :: buffer_trgt
  integer(kind=INT32) :: factor_crnt


  ! STEP.01 !
  buffer_trgt = target

  ! STEP.02 !
  if (IsMultiple(target=buffer_trgt, ref=2_INT32)) then

    factor_last = 2_INT32

    do while (IsMultiple(target=buffer_trgt, ref=2_INT32))
      buffer_trgt = buffer_trgt / 2_INT32
    end do

  else
    factor_last = 1_INT32
  end if

  ! STEP.03 !
  factor_crnt = 3_INT32
  factor_max  = nint (sqrt (real (buffer_trgt, kind=REAL64)), kind=INT32)

  ! STEP.04 !
  do while (buffer_trgt .gt. 1_INT32 .and. factor_crnt .le. factor_max)

  if (IsMultiple(target=buffer_trgt, ref=factor_crnt)) then
    
    factor_last = factor_crnt

    do while (IsMultiple(target=buffer_trgt, ref=factor_crnt))
      buffer_trgt = buffer_trgt / factor_crnt
    end do

    factor_max = nint (sqrt (real (buffer_trgt, kind=REAL64)), kind=INT32)

  end if

  factor_crnt = factor_crnt + 2_INT32

  end do

  ! STEP.05 !
  if (buffer_trgt .ne. 1_INT32) then
    factor_last = buffer_trgt
  end if

  ! STEP.END !
  return

end function Problem0003_03_INT32


pure function Problem0003_03_INT64 (target) result(factor_last)

  ! argument of this <function>
  integer(kind=INT64), intent(in) :: target

  ! return value of this <function>
  integer(kind=INT64) :: factor_last
  integer(kind=INT64) :: factor_max

  ! support variables for this <function>
  integer(kind=INT64) :: buffer_trgt
  integer(kind=INT64) :: factor_crnt


  ! STEP.01 !
  buffer_trgt = target

  ! STEP.02 !
  if (IsMultiple(target=buffer_trgt, ref=2_INT64)) then

    factor_last = 2_INT64

    do while (IsMultiple(target=buffer_trgt, ref=2_INT64))
      buffer_trgt = buffer_trgt / 2_INT64
    end do

  else
    factor_last = 1_INT64
  end if

  ! STEP.03 !
  factor_crnt = 3_INT64
  factor_max  = nint (sqrt (real (buffer_trgt, kind=REAL64)), kind=INT64)

  ! STEP.04 !
  do while (buffer_trgt .gt. 1_INT64 .and. factor_crnt .le. factor_max)

  if (IsMultiple(target=buffer_trgt, ref=factor_crnt)) then

    factor_last = factor_crnt

    do while (IsMultiple(target=buffer_trgt, ref=factor_crnt))
      buffer_trgt = buffer_trgt / factor_crnt
    end do
  
    factor_max = nint (sqrt (real (buffer_trgt, kind=REAL64)), kind=INT64)

  end if

  factor_crnt = factor_crnt + 2_INT64

  end do

  ! STEP.05 !
  if (buffer_trgt .ne. 1_INT64) then
    factor_last = buffer_trgt
  end if

  ! STEP.END !
  return

end function Problem0003_03_INT64

! -------------------------------------------------------------------------------------------------------------------------------- !
! End of Source Code                                                                                                               !
! -------------------------------------------------------------------------------------------------------------------------------- !
