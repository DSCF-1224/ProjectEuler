! ------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler] 0010                                                                                                            !
! https://projecteuler.net/problem=10                                                                                             !
! http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%2010                                                       !
! ------------------------------------------------------------------------------------------------------------------------------- !

subroutine Open_FileSave (sum_target)

  ! arguments for this <subroutine>
  integer(kind=INT64), intent(in) :: sum_target

  ! variables for this <subroutine>
  character(len=10, kind=1) :: sum_target_chr

  ! STEP.01
  ! convert the number of digits to string
  write(unit=sum_target_chr, fmt='(I19.19)') sum_target

  ! STEP.02
  ! make the full path of the folder to save the result
  path_file_save_full = trim(path_folder_parent)//trim(path_file_save_local)//sum_target_chr//'.txt'

  ! STEP.03
  ! open the data file
  open(unit=SAVE_UNIT, file=trim(path_file_save_full), action='write', status='replace')

  ! STEP.END
  return

end subroutine Open_FileSave

subroutine Close_FileSave

  ! STEP.01
  ! close the data file
  close(unit=SAVE_UNIT, status='keep')

  ! STEP.END
  return

end subroutine Close_FileSave

subroutine show_result_each (version, limit)

  ! arguments for this <subroutine>
  integer,             intent(in) :: version
  integer(kind=INT64), intent(in) :: limit

  ! variables for this <subroutine>
  type(PythagoreanTriplet) :: result
  type (Type_System_Clock) :: System_Clock_Start, System_Clock_End


  ! STEP.01
  ! choice the version of the <function> and activate it
  select case (version)

    case (1)
      
      call SYSTEM_CLOCK_UsingType (System_Clock_Start)
      result = Problem0010_01 (sum_target)
      call SYSTEM_CLOCK_UsingType (System_Clock_End)

    case (2)
      
      call SYSTEM_CLOCK_UsingType (System_Clock_Start)
      result = Problem0010_02 (sum_target)
      call SYSTEM_CLOCK_UsingType (System_Clock_End)

  end select

  ! STEP.02
  ! output the result
  write (unit=SAVE_UNIT, fmt='(A9,1X,":",1X,I20)', advance='yes') 'VERSION',  version
  write (unit=SAVE_UNIT, fmt='(A9,1X,":",1X,I20)', advance='yes') 'a',        limit
  write (unit=SAVE_UNIT, fmt='(A9,1X,":",1X,I20)', advance='yes') 'b',        result

  write (unit=SAVE_UNIT, fmt='(A9,1X,":",1X,ES20.7e3,/)', advance='yes') &!
    'CPU TIME', &!
    SYSTEM_CLOCK_ElapsedTime ( start= System_Clock_Start, stop= System_Clock_End )

  ! STEP.TRUE_END
  return

end subroutine show_result_each

subroutine show_result (sum_target)

  ! arguments for this <subroutine>
  integer(kind=INT64), intent(in) :: sum_target

  ! STEP.01
  ! open the file to save the result
  call Open_FileSave(sum_target)

  ! STEP.02
  ! calculate & save the result
  call show_result_each (version=1, sum_target=sum_target)
  call show_result_each (version=2, sum_target=sum_target)

  ! STEP.03
  ! Close_FileSave
  call Close_FileSave

  ! STEP.END
  return

end subroutine show_result

! -------------------------------------------------------------------------------------------------------------------------------- !
! End of Source Code                                                                                                               !
! -------------------------------------------------------------------------------------------------------------------------------- !
