! ------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler]                                                                                                                 !
! support subrutines and functions                                                                                                !
! ------------------------------------------------------------------------------------------------------------------------------- !

pure function IsPrime_local_step02_INT8 (target) result (stat)

  ! arguments for this ⟨function⟩
  integer( kind=INT8 ), intent(in) :: target

  ! return value of this ⟨function⟩
  logical :: stat

  ! variables for this ⟨function⟩
  integer(kind=INT8) :: fctr_itr

  ! STEP.01
  ! check whether the integer `target` is a prime number
  if (target .le. 1_INT8) then
    stat = .false.
    return ! STEP.BAD_END
  end if

  if (IsMultiple(target=target, ref=2_INT8)) then
    stat = .false.
    return ! STEP.BAD_END
  end if

  fctr_itr = 3_INT8
  stat     = .true.

  do while (fctr_itr .lt. target)

    if (IsMultiple(target=target, ref=fctr_itr)) then
      stat = .false.
      return ! STEP.BAD_END
    end if

    fctr_itr = fctr_itr + 2_INT8

  end do

  ! STEP.TRUE_END
  return

end function IsPrime_local_step02_INT8

pure function IsPrime_local_step02_INT16 (target) result (stat)

  ! arguments for this ⟨function⟩
  integer( kind=INT16 ), intent(in) :: target

  ! return value of this ⟨function⟩
  logical :: stat

  ! variables for this ⟨function⟩
  integer(kind=INT16) :: fctr_itr

  ! STEP.01
  ! check whether the integer `target` is a prime number
  if (target .le. 1_INT16) then
    stat = .false.
    return ! STEP.BAD_END
  end if

  if (IsMultiple(target=target, ref=2_INT16)) then
    stat = .false.
    return ! STEP.BAD_END
  end if

  fctr_itr = 3_INT16
  stat     = .true.

  do while (fctr_itr .lt. target)

    if (IsMultiple(target=target, ref=fctr_itr)) then
      stat = .false.
      return ! STEP.BAD_END
    end if

    fctr_itr = fctr_itr + 2_INT16

  end do

  ! STEP.TRUE_END
  return

end function IsPrime_local_step02_INT16

pure function IsPrime_local_step02_INT32 (target) result (stat)

  ! arguments for this ⟨function⟩
  integer( kind=INT32 ), intent(in) :: target

  ! return value of this ⟨function⟩
  logical :: stat

  ! variables for this ⟨function⟩
  integer(kind=INT32) :: fctr_itr

  ! STEP.01
  ! check whether the integer `target` is a prime number
  if (target .le. 1_INT32) then
    stat = .false.
    return ! STEP.BAD_END
  end if

  if (IsMultiple(target=target, ref=2_INT32)) then
    stat = .false.
    return ! STEP.BAD_END
  end if

  fctr_itr = 3_INT32
  stat     = .true.

  do while (fctr_itr .lt. target)

    if (IsMultiple(target=target, ref=fctr_itr)) then
      stat = .false.
      return ! STEP.BAD_END
    end if

    fctr_itr = fctr_itr + 2_INT32

  end do

  ! STEP.TRUE_END
  return

end function IsPrime_local_step02_INT32

pure function IsPrime_local_step02_INT64 (target) result (stat)

  ! arguments for this ⟨function⟩
  integer( kind=INT64 ), intent(in) :: target

  ! return value of this ⟨function⟩
  logical :: stat

  ! variables for this ⟨function⟩
  integer(kind=INT64) :: fctr_itr

  ! STEP.01
  ! check whether the integer `target` is a prime number
  if (target .le. 1_INT64) then
    stat = .false.
    return ! STEP.BAD_END
  end if

  if (IsMultiple(target=target, ref=2_INT64)) then
    stat = .false.
    return ! STEP.BAD_END
  end if

  fctr_itr = 3_INT64
  stat     = .true.

  do while (fctr_itr .lt. target)

    if (IsMultiple(target=target, ref=fctr_itr)) then
      stat = .false.
      return ! STEP.BAD_END
    end if

    fctr_itr = fctr_itr + 2_INT64

  end do

  ! STEP.TRUE_END
  return

end function IsPrime_local_step02_INT64


pure function IsPrime_local_step02_faster_INT8 (target) result (stat)

  ! arguments for this ⟨function⟩
  integer( kind=INT8 ), intent(in) :: target

  ! return value of this ⟨function⟩
  logical :: stat

  ! variables for this ⟨function⟩
  integer(kind=INT8) :: fctr_itr, fctr_max

  ! STEP.01
  ! check whether the integer `target` is a prime number
  if (target .le. 1_INT8) then
    stat = .false.
    return ! STEP.BAD_END
  end if

  if (IsMultiple(target=target, ref=2_INT8)) then
    stat = .false.
    return ! STEP.BAD_END
  end if

  fctr_itr = 3_INT8
  fctr_max = int( sqrt( real(target, kind=REAL32) ), kind=INT8 )
  stat     = .true.

  do while (fctr_itr .lt. fctr_max)

    if (IsMultiple(target=target, ref=fctr_itr)) then
      stat = .false.
      return ! STEP.BAD_END
    end if

    fctr_itr = fctr_itr + 2_INT8

  end do

  ! STEP.TRUE_END
  return

end function IsPrime_local_step02_faster_INT8

pure function IsPrime_local_step02_faster_INT16 (target) result (stat)

  ! arguments for this ⟨function⟩
  integer( kind=INT16 ), intent(in) :: target

  ! return value of this ⟨function⟩
  logical :: stat

  ! variables for this ⟨function⟩
  integer(kind=INT16) :: fctr_itr, fctr_max

  ! STEP.01
  ! check whether the integer `target` is a prime number
  if (target .le. 1_INT16) then
    stat = .false.
    return ! STEP.BAD_END
  end if

  if (IsMultiple(target=target, ref=2_INT16)) then
    stat = .false.
    return ! STEP.BAD_END
  end if

  fctr_itr = 3_INT16
  fctr_max = int( sqrt( real(target, kind=REAL32) ), kind=INT16 )
  stat     = .true.

  do while (fctr_itr .lt. fctr_max)

    if (IsMultiple(target=target, ref=fctr_itr)) then
      stat = .false.
      return ! STEP.BAD_END
    end if

    fctr_itr = fctr_itr + 2_INT16

  end do

  ! STEP.TRUE_END
  return

end function IsPrime_local_step02_faster_INT16

pure function IsPrime_local_step02_faster_INT32 (target) result (stat)

  ! arguments for this ⟨function⟩
  integer( kind=INT32 ), intent(in) :: target

  ! return value of this ⟨function⟩
  logical :: stat

  ! variables for this ⟨function⟩
  integer(kind=INT32) :: fctr_itr, fctr_max

  ! STEP.01
  ! check whether the integer `target` is a prime number
  if (target .le. 1_INT32) then
    stat = .false.
    return ! STEP.BAD_END
  end if

  if (IsMultiple(target=target, ref=2_INT32)) then
    stat = .false.
    return ! STEP.BAD_END
  end if

  fctr_itr = 3_INT32
  fctr_max = int( sqrt( real(target, kind=REAL32) ), kind=INT32 )
  stat     = .true.

  do while (fctr_itr .lt. fctr_max)

    if (IsMultiple(target=target, ref=fctr_itr)) then
      stat = .false.
      return ! STEP.BAD_END
    end if

    fctr_itr = fctr_itr + 2_INT32

  end do

  ! STEP.TRUE_END
  return

end function IsPrime_local_step02_faster_INT32

pure function IsPrime_local_step02_faster_INT64 (target) result (stat)

  ! arguments for this ⟨function⟩
  integer( kind=INT64 ), intent(in) :: target

  ! return value of this ⟨function⟩
  logical :: stat

  ! variables for this ⟨function⟩
  integer(kind=INT64) :: fctr_itr, fctr_max

  ! STEP.01
  ! check whether the integer `target` is a prime number
  if (target .le. 1_INT64) then
    stat = .false.
    return ! STEP.BAD_END
  end if

  if (IsMultiple(target=target, ref=2_INT64)) then
    stat = .false.
    return ! STEP.BAD_END
  end if

  fctr_itr = 3_INT64
  fctr_max = int( sqrt( real(target, kind=REAL32) ), kind=INT64 )
  stat     = .true.

  do while (fctr_itr .lt. fctr_max)

    if (IsMultiple(target=target, ref=fctr_itr)) then
      stat = .false.
      return ! STEP.BAD_END
    end if

    fctr_itr = fctr_itr + 2_INT64

  end do

  ! STEP.TRUE_END
  return

end function IsPrime_local_step02_faster_INT64

! -------------------------------------------------------------------------------------------------------------------------------- !
! End of Source Code                                                                                                               !
! -------------------------------------------------------------------------------------------------------------------------------- !
