! -------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler] 0001                                                                                                             !
! https://projecteuler.net/problem=1                                                                                               !
! http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%201                                                         !
! -------------------------------------------------------------------------------------------------------------------------------- !

subroutine show_result_each(version, limit)

  ! arguments for this <subroutine>
  integer,             intent(in) :: version
  integer(kind=INT64), intent(in) :: limit

  ! variables for this <subroutine>
  integer(kind=INT64)     :: sum
  type (Type_System_Clock) :: System_Clock_Start, System_Clock_End


  ! STEP.01
  select case (version)

    case (1)
      
      call SYSTEM_CLOCK_UsingType (System_Clock_Start)
      sum = Problem0001_01 (limit)
      call SYSTEM_CLOCK_UsingType (System_Clock_End)

    case (2)
      
      call SYSTEM_CLOCK_UsingType (System_Clock_Start)
      sum = Problem0001_02 (limit)
      call SYSTEM_CLOCK_UsingType (System_Clock_End)

    case (3)
      
      call SYSTEM_CLOCK_UsingType (System_Clock_Start)
      sum = Problem0001_03 (limit)
      call SYSTEM_CLOCK_UsingType (System_Clock_End)

  end select

  ! STEP.02
  write (unit=SAVE_UNIT, fmt='(A8,1X,":",1X,I14)',        advance='yes') 'VERSION', version
  write (unit=SAVE_UNIT, fmt='(A8,1X,":",1X,I14)',        advance='yes') 'LIMIT',   limit
  write (unit=SAVE_UNIT, fmt='(A8,1X,":",1X,I14)',        advance='yes') 'SUM',     sum
  write (unit=SAVE_UNIT, fmt='(A8,1X,":",1X,ES14.7e3,/)', advance='yes') &!
    'CPU TIME', &!
    SYSTEM_CLOCK_ElapsedTime ( start= System_Clock_Start, stop= System_Clock_End )

  ! STEP.TRUE_END
  return

end subroutine show_result_each


subroutine show_result

  ! variables for this <subroutine>
  character(len=len_buffer_path, kind=1) :: path_folder_save
  integer(kind=INT64)                    :: limit


  ! STEP.01
  ! read out the path of the file to save the result
  call read_path_folder_save(path_folder_save)

  ! STEP.02
  ! when the `limit` is 10

    ! STEP.02.01
    ! set the value of `limit`
    limit = 10_INT64

    ! STEP.02.02
    ! open the file to save the result
    open(unit=SAVE_UNIT, file=trim(path_folder_save)//name_file_0010, action='write', status='replace')

    ! STEP.02.03
    ! calculate & save the result
    call show_result_each (version=1, limit=limit)
    call show_result_each (version=2, limit=limit)
    call show_result_each (version=3, limit=limit)

    ! STEP.02.04
    ! close the file to save the result
    close (unit=SAVE_UNIT, status='keep')

  ! STEP.03
  ! when the `limit` is 1000

    ! STEP.03.01
    ! set the value of `limit`
    limit = 1000_INT64

    ! STEP.03.02
    ! open the file to save the result
    open(unit=SAVE_UNIT, file=trim(path_folder_save)//name_file_1000, action='write', status='replace')

    ! STEP.03.03
    ! calculate & save the result
    call show_result_each (version=1, limit=limit)
    call show_result_each (version=2, limit=limit)
    call show_result_each (version=3, limit=limit)

    ! STEP.03.04
    ! close the file to save the result
    close (unit=SAVE_UNIT, status='keep')

  ! STEP.END
  return

end subroutine show_result

! -------------------------------------------------------------------------------------------------------------------------------- !
! End of Source Code                                                                                                               !
! -------------------------------------------------------------------------------------------------------------------------------- !
