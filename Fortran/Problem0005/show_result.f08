! -------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler] 0005                                                                                                             !
! https://projecteuler.net/problem=5                                                                                               !
! http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%205                                                         !
! -------------------------------------------------------------------------------------------------------------------------------- !

subroutine show_result_core (version, target)

  ! arguments for this <subroutine>
  integer,              intent (in) :: version
  integer (kind=INT64), intent (in) :: target

  ! variables for this <subroutine>
  integer (kind=INT64)     :: result
  type (Type_System_Clock) :: System_Clock_Start, System_Clock_End


  ! STEP.01
  select case (version)

    case (1)
      
      call SYSTEM_CLOCK_UsingType (System_Clock_Start)
      result = Problem0005_RCR (target)
      call SYSTEM_CLOCK_UsingType (System_Clock_End)

    case (2)
      
      call SYSTEM_CLOCK_UsingType (System_Clock_Start)
      result = Problem0005_IND (target)
      call SYSTEM_CLOCK_UsingType (System_Clock_End)

  end select

  ! STEP.02
  write (unit=SAVE_UNIT, fmt='(A9,1X,":",1X,I14)',        advance='yes') 'VERSION', version
  write (unit=SAVE_UNIT, fmt='(A9,1X,":",1X,I14)',        advance='yes') 'TARGET',  target
  write (unit=SAVE_UNIT, fmt='(A9,1X,":",1X,I14)',        advance='yes') 'RESULT',  result
  write (unit=SAVE_UNIT, fmt='(A9,1X,":",1X,ES14.7e3,/)', advance='yes') &!
    'CPU TIME', &!
    SYSTEM_CLOCK_ElapsedTime ( start= System_Clock_Start, stop= System_Clock_End )

  ! STEP.TRUE_END
  return

end subroutine show_result_core


subroutine show_result (target)

  ! arguments for this <subroutine>
  integer (kind=INT64), intent (in) :: target

  ! variables for this <subroutine>
  character (len=len_buffer_path, kind=1) :: path_file_save


  ! STEP.01
  ! read out the path of the file to save the result
  call read_path_file_save (path_file_save)

  ! STEP.02
  ! open the file to save the result
  open (unit=SAVE_UNIT, file=trim (path_file_save), action='write', status='replace')

  ! STEP.03
  ! calculate & save the result
  call show_result_core (version=1, target=target)
  call show_result_core (version=2, target=target)

  ! STEP.04
  ! close the file to save the result
  close (unit=SAVE_UNIT, status='keep')

  ! STEP.END
  return

end subroutine show_result

! -------------------------------------------------------------------------------------------------------------------------------- !
! End of Source Code                                                                                                               !
! -------------------------------------------------------------------------------------------------------------------------------- !
