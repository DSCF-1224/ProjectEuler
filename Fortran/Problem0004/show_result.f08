! -------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler] 0004                                                                                                             !
! https://projecteuler.net/problem=4                                                                                               !
! http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%204                                                         !
! -------------------------------------------------------------------------------------------------------------------------------- !

subroutine show_result_each (version, digit)

  ! arguments for this <subroutine>
  integer,             intent(in) :: version
  integer(kind=INT64), intent(in) :: digit

  ! variables for this <subroutine>
  integer(kind=INT64)      :: largest_palindrome
  type (Type_System_Clock) :: System_Clock_Start, System_Clock_End


  ! STEP.01
  select case (version)

    case (1)
      
      call SYSTEM_CLOCK_UsingType (System_Clock_Start)
      largest_palindrome = find_largest_palindrome_v01 (digit)
      call SYSTEM_CLOCK_UsingType (System_Clock_End)

  end select

  ! STEP.02
  write (unit=SAVE_UNIT, fmt='(A9,1X,":",1X,I14)',        advance='yes') 'VERSION', version
  write (unit=SAVE_UNIT, fmt='(A9,1X,":",1X,I14)',        advance='yes') 'DIGIT',   digit
  write (unit=SAVE_UNIT, fmt='(A9,1X,":",1X,I14)',        advance='yes') 'TAEGET',  largest_palindrome
  write (unit=SAVE_UNIT, fmt='(A9,1X,":",1X,ES14.7e3,/)', advance='yes') &!
    'CPU TIME', &!
    SYSTEM_CLOCK_ElapsedTime ( start= System_Clock_Start, stop= System_Clock_End )

  ! STEP.TRUE_END
  return

end subroutine show_result_each


subroutine show_result(digit)

  ! arguments for this <subroutine>
  integer(kind=INT64), intent(in) :: digit

  ! variables for this <subroutine>
  character (len=len_buffer_path, kind=1) :: path_folder_save
  character (len=len_buffer_path, kind=1) :: name_file_save


  ! STEP.01
  ! read out the path of the file to save the result
  call read_path_folder_save (path_folder_save)

  ! STEP.02
  ! make the file name to save the result
  write(unit=name_file_save(13:14), fmt='(I2.2)') digit
  name_file_save(01:12) = 'result_DIGIT'
  name_file_save(15:18) = '.txt'

  ! STEP.03
  ! open the file to save the result
  open (unit=SAVE_UNIT, file=trim(path_folder_save)//trim(name_file_save), action='write', status='replace')

  ! STEP.03
  ! calculate & save the result
  call show_result_each (version=1, digit=digit)

  ! STEP.04
  ! close the file to save the result
  close (unit=SAVE_UNIT, status='keep')

  ! STEP.END
  return

end subroutine show_result

! -------------------------------------------------------------------------------------------------------------------------------- !
! End of Source Code                                                                                                               !
! -------------------------------------------------------------------------------------------------------------------------------- !
