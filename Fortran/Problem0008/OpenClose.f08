! ------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler] 0008                                                                                                            !
! https://projecteuler.net/problem=8                                                                                              !
! http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%208                                                        !
! ------------------------------------------------------------------------------------------------------------------------------- !

subroutine Open_FileData

  ! STEP.01
  ! make the full path of the data file
  path_file_data_full = trim(path_folder_parent)//trim(path_file_data_local)

  ! STEP.02
  ! open the data file
  open(unit=DATA_UNIT, file=trim(path_file_data_full), action='read', status='old')

  ! STEP.END
  return

end subroutine Open_FileData

subroutine Open_FileSave (num_digits)

  ! arguments for this <subroutine>
  integer(kind=INT32), intent(in) :: num_digits

  ! variables for this <subroutine>
  character(len=4, kind=1) :: num_digits_chr

  ! STEP.01
  ! convert the number of digits to string
  write(unit=num_digits_chr, fmt='(I4.4)') num_digits

  ! STEP.02
  ! make the full path of the folder to save the result
  path_file_save_full = trim(path_folder_parent)//trim(path_file_save_local)//num_digits_chr//'.txt'

  ! STEP.03
  ! open the data file
  open(unit=SAVE_UNIT, file=trim(path_file_save_full), action='write', status='replace')

  ! STEP.END
  return

end subroutine Open_FileSave


subroutine Close_FileData

  ! STEP.01
  ! close the data file
  close(unit=DATA_UNIT, status='keep')

  ! STEP.END
  return

end subroutine Close_FileData

subroutine Close_FileSave

  ! STEP.01
  ! close the data file
  close(unit=SAVE_UNIT, status='keep')

  ! STEP.END
  return

end subroutine Close_FileSave

! -------------------------------------------------------------------------------------------------------------------------------- !
! End of Source Code                                                                                                               !
! -------------------------------------------------------------------------------------------------------------------------------- !
