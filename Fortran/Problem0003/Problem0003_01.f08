! ------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler] 0003                                                                                                            !
! https://projecteuler.net/problem=3                                                                                              !
! http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%203                                                        !
! ------------------------------------------------------------------------------------------------------------------------------- !
pure function Problem0003_01_INT32(target) result(factor_last)

  ! argument of this <function>
  integer(kind=INT32), intent(in) :: target

  ! return value of this <function>
  integer(kind=INT32) :: factor_last

  ! support variables for this <function>
  integer(kind=INT32) :: buffer_trgt
  integer(kind=INT32) :: factor_crnt


  ! STEP.01 !
  buffer_trgt = target
  factor_crnt = 2_INT32
  factor_last = 1_INT32

  ! STEP.02 !
  do while (buffer_trgt .gt. 1_INT32)

    if (IsMultiple(target=buffer_trgt, ref=factor_crnt)) then
      factor_last = factor_crnt
      do while (IsMultiple( target= buffer_trgt, ref=factor_crnt ))
        buffer_trgt = buffer_trgt / factor_crnt
      end do
    end if

    factor_crnt = factor_crnt + 1_INT32

  end do

  ! STEP.END !
  return

end function Problem0003_01_INT32


pure function Problem0003_01_INT64(target) result(factor_last)

  ! argument of this <function>
  integer(kind=INT64), intent(in) :: target

  ! return value of this <function>
  integer(kind=INT64) :: factor_last

  ! support variables for this <function>
  integer(kind=INT64) :: buffer_trgt
  integer(kind=INT64) :: factor_crnt


  ! STEP.01 !
  buffer_trgt = target
  factor_crnt = 2_INT64
  factor_last = 1_INT64

  ! STEP.02 !
  do while (buffer_trgt .gt. 1_INT64)

    if (IsMultiple(target=buffer_trgt, ref=factor_crnt)) then
      factor_last = factor_crnt
      do while( IsMultiple(target=buffer_trgt, ref=factor_crnt))
        buffer_trgt = buffer_trgt / factor_crnt
      end do
    end if

    factor_crnt = factor_crnt + 1_INT64

  end do

  ! STEP.END !
  return

end function Problem0003_01_INT64

! -------------------------------------------------------------------------------------------------------------------------------- !
! End of Source Code                                                                                                               !
! -------------------------------------------------------------------------------------------------------------------------------- !
