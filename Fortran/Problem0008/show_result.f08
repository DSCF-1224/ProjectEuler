! -------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler] 0008                                                                                                             !
! https://projecteuler.net/problem=8                                                                                               !
! http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%208                                                         !
! -------------------------------------------------------------------------------------------------------------------------------- !

subroutine show_result_each (version, num_digits)

  ! arguments for this <subroutine>
  integer,             intent(in) :: version
  integer(kind=INT32), intent(in) :: num_digits

  ! variables for this <subroutine>
  integer(kind=INT64)      :: result
  type (Type_System_Clock) :: System_Clock_Start, System_Clock_End


  ! STEP.01
  select case (version)

    case (1)
      
      call SYSTEM_CLOCK_UsingType (System_Clock_Start)
      call Open_FileData
      result = Problem0008_01 (num_digits)
      call Close_FileData
      call SYSTEM_CLOCK_UsingType (System_Clock_End)

    case (2)
      
      call SYSTEM_CLOCK_UsingType (System_Clock_Start)
      call Open_FileData
      result = Problem0008_02 (num_digits)
      call Close_FileData
      call SYSTEM_CLOCK_UsingType (System_Clock_End)

  end select

  ! STEP.02
  write (unit=SAVE_UNIT, fmt='(A9,1X,":",1X,I19)',        advance='yes') 'VERSION', version
  write (unit=SAVE_UNIT, fmt='(A9,1X,":",1X,I19)',        advance='yes') 'DIGITS',  num_digits
  write (unit=SAVE_UNIT, fmt='(A9,1X,":",1X,I19)',        advance='yes') 'RESULT',  result
  write (unit=SAVE_UNIT, fmt='(A9,1X,":",1X,ES19.7e3,/)', advance='yes') &!
    'CPU TIME', &!
    SYSTEM_CLOCK_ElapsedTime ( start= System_Clock_Start, stop= System_Clock_End )

  ! STEP.TRUE_END
  return

end subroutine show_result_each

subroutine show_result (num_digits)

  ! arguments for this <subroutine>
  integer(kind=INT32), intent(in) :: num_digits

  ! STEP.01
  ! open the file to save the result
  call Open_FileSave(num_digits)

  ! STEP.02
  ! calculate & save the result
  call show_result_each (version=1, num_digits=num_digits)
  call show_result_each (version=2, num_digits=num_digits)

  ! STEP.03
  ! Close_FileSave
  call Close_FileSave

  ! STEP.END
  return

end subroutine show_result

! -------------------------------------------------------------------------------------------------------------------------------- !
! End of Source Code                                                                                                               !
! -------------------------------------------------------------------------------------------------------------------------------- !
