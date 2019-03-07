! -------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler] 0007                                                                                                             !
! https://projecteuler.net/problem=7                                                                                               !
! http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%207                                                         !
! -------------------------------------------------------------------------------------------------------------------------------- !

subroutine show_result_each_INT32 (version, limit)

  ! arguments for this <subroutine>
  integer,             intent(in) :: version
  integer(kind=INT32), intent(in) :: limit

  ! variables for this <subroutine>
  integer(kind=INT32)      :: result
  type (Type_System_Clock) :: System_Clock_Start, System_Clock_End


  ! STEP.01
  select case (version)

    case (1)
      
      call SYSTEM_CLOCK_UsingType (System_Clock_Start)
      result = Problem0007_01 (limit)
      call SYSTEM_CLOCK_UsingType (System_Clock_End)

    case (2)
      
      call SYSTEM_CLOCK_UsingType (System_Clock_Start)
      result = Problem0007_02 (limit)
      call SYSTEM_CLOCK_UsingType (System_Clock_End)

    case (3)
      
      call SYSTEM_CLOCK_UsingType (System_Clock_Start)
      result = Problem0007_03 (limit)
      call SYSTEM_CLOCK_UsingType (System_Clock_End)

    case (4)
      
      call SYSTEM_CLOCK_UsingType (System_Clock_Start)
      result = Problem0007_04 (limit)
      call SYSTEM_CLOCK_UsingType (System_Clock_End)

  end select

  ! STEP.02
  write (unit=SAVE_UNIT, fmt='(A9,1X,":",1X,I14)',        advance='yes') 'VERSION', version
  write (unit=SAVE_UNIT, fmt='(A9,1X,":",1X,A14)',        advance='yes') 'KIND',    'INT32'
  write (unit=SAVE_UNIT, fmt='(A9,1X,":",1X,I14)',        advance='yes') 'LIMIT',   limit
  write (unit=SAVE_UNIT, fmt='(A9,1X,":",1X,I14)',        advance='yes') 'RESULT',  result
  write (unit=SAVE_UNIT, fmt='(A9,1X,":",1X,ES14.7e3,/)', advance='yes') &!
    'CPU TIME', &!
    SYSTEM_CLOCK_ElapsedTime ( start= System_Clock_Start, stop= System_Clock_End )

  ! STEP.TRUE_END
  return

end subroutine show_result_each_INT32

subroutine show_result_each_INT64 (version, limit)

  ! arguments for this <subroutine>
  integer,              intent(in) :: version
  integer(kind=INT64), intent(in) :: limit
  
  ! variables for this <subroutine>
  integer(kind=INT64)     :: result
  type (Type_System_Clock) :: System_Clock_Start, System_Clock_End
  
  
  ! STEP.01
  select case (version)
  
    case (1)
    
      call SYSTEM_CLOCK_UsingType (System_Clock_Start)
      result = Problem0007_01 (limit)
      call SYSTEM_CLOCK_UsingType (System_Clock_End)
  
    case (2)
    
      call SYSTEM_CLOCK_UsingType (System_Clock_Start)
      result = Problem0007_02 (limit)
      call SYSTEM_CLOCK_UsingType (System_Clock_End)

    case (3)
      
      call SYSTEM_CLOCK_UsingType (System_Clock_Start)
      result = Problem0007_03 (limit)
      call SYSTEM_CLOCK_UsingType (System_Clock_End)

    case (4)
      
      call SYSTEM_CLOCK_UsingType (System_Clock_Start)
      result = Problem0007_04 (limit)
      call SYSTEM_CLOCK_UsingType (System_Clock_End)
  
  end select
  
  ! STEP.02
  write (unit=SAVE_UNIT, fmt='(A9,1X,":",1X,I14)',        advance='yes') 'VERSION', version
  write (unit=SAVE_UNIT, fmt='(A9,1X,":",1X,A14)',        advance='yes') 'KIND',    'INT64'
  write (unit=SAVE_UNIT, fmt='(A9,1X,":",1X,I14)',        advance='yes') 'LIMIT',   limit
  write (unit=SAVE_UNIT, fmt='(A9,1X,":",1X,I14)',        advance='yes') 'RESULT',  result
  write (unit=SAVE_UNIT, fmt='(A9,1X,":",1X,ES14.7e3,/)', advance='yes') &!
    'CPU TIME', &!
    SYSTEM_CLOCK_ElapsedTime ( start= System_Clock_Start, stop= System_Clock_End )
  
  ! STEP.TRUE_END
  return
  
end subroutine show_result_each_INT64


subroutine show_result_INT32 (limit)

  ! arguments for this <subroutine>
  integer(kind=INT32), intent(in) :: limit

  ! variables for this <subroutine>
  character (len=len_buffer_path, kind=1) :: path_folder_save
  character (len=len_buffer_path, kind=1) :: name_file_save


  ! STEP.01
  ! read out the path of the file to save the result
  call read_path_folder_save (path_folder_save)

  ! STEP.02
  ! make the file name to save the result
  write(unit=name_file_save(8:17), fmt='(I10.10)') limit
  name_file_save(01:07) = 'result_'
  name_file_save(18:27) = '_INT32.txt'
  
  ! STEP.03
  ! open the file to save the result
  open (unit=SAVE_UNIT, file=trim(path_folder_save)//trim(name_file_save), action='write', status='replace')

  ! STEP.04
  ! calculate & save the result
  call show_result_each (version=1, limit=limit)
  call show_result_each (version=2, limit=limit)
  call show_result_each (version=3, limit=limit)
  call show_result_each (version=4, limit=limit)

  ! STEP.05
  ! close the file to save the result
  close (unit=SAVE_UNIT, status='keep')

  ! STEP.END
  return

end subroutine show_result_INT32

subroutine show_result_INT64 (limit)

  ! arguments for this <subroutine>
  integer(kind=INT64), intent(in) :: limit

  ! variables for this <subroutine>
  character (len=len_buffer_path, kind=1) :: path_folder_save
  character (len=len_buffer_path, kind=1) :: name_file_save


  ! STEP.01
  ! read out the path of the file to save the result
  call read_path_folder_save (path_folder_save)

  ! STEP.02
  ! make the file name to save the result
  write(unit=name_file_save(8:26), fmt='(I19.19)') limit
  name_file_save(01:07) = 'result_'
  name_file_save(27:36) = '_INT64.txt'
  
  ! STEP.03
  ! open the file to save the result
  open (unit=SAVE_UNIT, file=trim(path_folder_save)//trim(name_file_save), action='write', status='replace')

  ! STEP.04
  ! calculate & save the result
  call show_result_each (version=1, limit=limit)
  call show_result_each (version=2, limit=limit)
  call show_result_each (version=3, limit=limit)
  call show_result_each (version=4, limit=limit)

  ! STEP.05
  ! close the file to save the result
  close (unit=SAVE_UNIT, status='keep')

  ! STEP.END
  return

end subroutine show_result_INT64

! -------------------------------------------------------------------------------------------------------------------------------- !
! End of Source Code                                                                                                               !
! -------------------------------------------------------------------------------------------------------------------------------- !
