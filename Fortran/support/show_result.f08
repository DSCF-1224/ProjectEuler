! ------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler]                                                                                                                 !
! support subrutines and functions                                                                                                !
! ------------------------------------------------------------------------------------------------------------------------------- !
subroutine read_path_file_save ( path_file_save )

  ! arguments for this <subroutine>
  character (len=len_buffer_path, kind=1), intent (inout) :: path_file_save

  ! STEP.01
  ! show the current status of this program
  write (unit=OUTPUT_UNIT, fmt='(A)',    advance='yes') 'Input the file path to save the result'
  write (unit=OUTPUT_UNIT, fmt='(A,1X)', advance='no')  '[PATH]'

  ! STEP.02
  ! read out the path of the file to save the result
  read (unit=INPUT_UNIT, fmt='(A)') path_file_save

  ! STEP.END
  return

end subroutine read_path_file_save

subroutine show_reach_end

  ! STEP.01
  ! show the current status of this program
  write (unit=OUTPUT_UNIT, fmt='(2(/,A))', advance='yes') &!
    'Reached the end of this program.', &!
    'Please push an any key to exit this program.'

  ! STEP.02
  ! stop the process temporary
  read *

  ! STEP.END
  return

end subroutine show_reach_end
