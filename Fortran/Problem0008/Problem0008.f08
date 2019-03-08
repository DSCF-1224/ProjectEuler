! ------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler] 0008                                                                                                            !
! https://projecteuler.net/problem=8                                                                                              !
! http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%208                                                        !
! ------------------------------------------------------------------------------------------------------------------------------- !
module Problem0008

  ! <module>s to import
  use,     intrinsic :: iso_fortran_env
  use, non_intrinsic :: support_projecteuler
  use, non_intrinsic :: support_system_clock

  ! require all variables to be explicitly declared
  implicit none


  ! accessibility of <subroutine>s and <function>s in this <module>
  private :: Problem0008_01 ! function
  private :: Problem0008_02 ! function
  public  :: Open_FileSave  ! subroutine
  public  :: Close_FileSave ! subroutine
  private :: Open_FileData  ! subroutine
  private :: Close_FileData ! subroutine


  ! constants for this <module>
  character(len=21, kind=1), parameter, private :: path_file_data_local = '\Data\p010_number.txt'
  character(len=27, kind=1), parameter, private :: path_file_save_local = '\Fortran\Problem0008\result'
  integer(kind=INT32),       parameter, private :: NUM_DIGIT_MAX        = 1000

  ! variables for this <subroutine>
  character(len=len_buffer_path, kind=1) :: path_folder_parent
  character(len=len_buffer_path, kind=1) :: path_file_data_full
  character(len=len_buffer_path, kind=1) :: path_file_save_full

  ! <subroutine>s and <function>s in this <module> is below
  contains


  include "OpenClose.f08"
  include "Problem0008_01.f08"
  include "Problem0008_02.f08"
  include "show_result.f08"

end module Problem0008

! -------------------------------------------------------------------------------------------------------------------------------- !
! End of Source Code                                                                                                               !
! -------------------------------------------------------------------------------------------------------------------------------- !
