! -------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler] 0003                                                                                                             !
! https://projecteuler.net/problem=3                                                                                               !
! http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%203                                                         !
! -------------------------------------------------------------------------------------------------------------------------------- !

subroutine show_result_each_INT32(version, target)

  ! arguments for this <subroutine>
  integer,              intent(in) :: version
  integer(kind=INT32), intent(in) :: target

  ! variables for this <subroutine>
  integer(kind=INT32)     :: sum
  type (Type_System_Clock) :: System_Clock_Start, System_Clock_End


  ! STEP.01
  select case (version)

    case (1)
      
      call SYSTEM_CLOCK_UsingType (System_Clock_Start)
      sum = Problem0003_01 (target)
      call SYSTEM_CLOCK_UsingType (System_Clock_End)

    case (2)
      
      call SYSTEM_CLOCK_UsingType (System_Clock_Start)
      sum = Problem0003_02 (target)
      call SYSTEM_CLOCK_UsingType (System_Clock_End)

    case (3)
      
      call SYSTEM_CLOCK_UsingType (System_Clock_Start)
      sum = Problem0003_03 (target)
      call SYSTEM_CLOCK_UsingType (System_Clock_End)

  end select

  ! STEP.02
  write (unit=SAVE_UNIT, fmt='(A8,1X,":",1X,I14)',        advance='yes') 'VERSION', version
  write (unit=SAVE_UNIT, fmt='(A8,1X,":",1X,A14)',        advance='yes') 'KIND',    'INT32'
  write (unit=SAVE_UNIT, fmt='(A8,1X,":",1X,I14)',        advance='yes') 'TARGET',  target
  write (unit=SAVE_UNIT, fmt='(A8,1X,":",1X,I14)',        advance='yes') 'RESULT',  sum
  write (unit=SAVE_UNIT, fmt='(A8,1X,":",1X,ES14.7e3,/)', advance='yes') &!
    'CPU TIME', &!
    SYSTEM_CLOCK_ElapsedTime ( start= System_Clock_Start, stop= System_Clock_End )

  ! STEP.TRUE_END
  return

end subroutine show_result_each_INT32

subroutine show_result_each_INT64(version, target)

  ! arguments for this <subroutine>
  integer,              intent(in) :: version
  integer(kind=INT64), intent(in) :: target

  ! variables for this <subroutine>
  integer(kind=INT64)     :: sum
  type (Type_System_Clock) :: System_Clock_Start, System_Clock_End


  ! STEP.01
  select case (version)

    case (1)
      
      call SYSTEM_CLOCK_UsingType (System_Clock_Start)
      sum = Problem0003_01 (target)
      call SYSTEM_CLOCK_UsingType (System_Clock_End)

    case (2)
      
      call SYSTEM_CLOCK_UsingType (System_Clock_Start)
      sum = Problem0003_02 (target)
      call SYSTEM_CLOCK_UsingType (System_Clock_End)

    case (3)
      
      call SYSTEM_CLOCK_UsingType (System_Clock_Start)
      sum = Problem0003_03 (target)
      call SYSTEM_CLOCK_UsingType (System_Clock_End)

  end select

  ! STEP.02
  write (unit=SAVE_UNIT, fmt='(A8,1X,":",1X,I14)',        advance='yes') 'VERSION', version
  write (unit=SAVE_UNIT, fmt='(A8,1X,":",1X,A14)',        advance='yes') 'KIND',    'INT64'
  write (unit=SAVE_UNIT, fmt='(A8,1X,":",1X,I14)',        advance='yes') 'TARGET',  target
  write (unit=SAVE_UNIT, fmt='(A8,1X,":",1X,I14)',        advance='yes') 'RESULT',  sum
  write (unit=SAVE_UNIT, fmt='(A8,1X,":",1X,ES14.7e3,/)', advance='yes') &!
    'CPU TIME', &!
    SYSTEM_CLOCK_ElapsedTime ( start= System_Clock_Start, stop= System_Clock_End )

  ! STEP.TRUE_END
  return

end subroutine show_result_each_INT64


subroutine show_result_INT32 (target)

  ! arguments for this <subroutine>
  integer(kind=INT32), intent(in) :: target

  ! variables for this <subroutine>
  character(len=len_buffer_path, kind=1) :: path_folder_save
  character(len=len_buffer_path, kind=1) :: name_file_save


  ! STEP.01
  ! read out the path of the file to save the result
  call read_path_folder_save(path_folder_save)

  ! STEP.02
  ! make the file name to save the result
  write(unit=name_file_save, fmt='(I19.19)') target
  name_file_save(20:29) = '_INT32.txt'

  ! STEP.03
  ! open the file to save the result
  open (unit=SAVE_UNIT, file=trim(path_folder_save)//trim(name_file_save), action='write', status='replace')

  ! STEP.04
  ! calculate & save the result
  call show_result_each (version=1, target=target)
  call show_result_each (version=2, target=target)
  call show_result_each (version=3, target=target)

  ! STEP.05
  ! close the file to save the result
  close (unit=SAVE_UNIT, status='keep')

  ! STEP.END
  return

end subroutine show_result_INT32

subroutine show_result_INT64 (target)

  ! arguments for this <subroutine>
  integer(kind=INT64), intent(in) :: target

  ! variables for this <subroutine>
  character(len=len_buffer_path, kind=1) :: path_folder_save
  character(len=len_buffer_path, kind=1) :: name_file_save


  ! STEP.01
  ! read out the path of the file to save the result
  call read_path_folder_save(path_folder_save)

  ! STEP.02
  ! make the file name to save the result
  write(unit=name_file_save, fmt='(I19.19)') target
  name_file_save(20:29) = '_INT64.txt'

  ! STEP.03
  ! open the file to save the result
  open (unit=SAVE_UNIT, file=trim(path_folder_save)//trim(name_file_save), action='write', status='replace')

  ! STEP.04
  ! calculate & save the result
  call show_result_each(version=1, target=target)
  call show_result_each(version=2, target=target)
  call show_result_each(version=3, target=target)

  ! STEP.05
  ! close the file to save the result
  close (unit=SAVE_UNIT, status='keep')

  ! STEP.END
  return

end subroutine show_result_INT64

! -------------------------------------------------------------------------------------------------------------------------------- !
! End of Source Code                                                                                                               !
! -------------------------------------------------------------------------------------------------------------------------------- !
