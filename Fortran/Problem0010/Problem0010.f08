! ------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler] 0010                                                                                                            !
! https://projecteuler.net/problem=10                                                                                             !
! http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%2010                                                       !
! ------------------------------------------------------------------------------------------------------------------------------- !

module Problem0010

  ! <module>s to import
  use,     intrinsic :: iso_fortran_env
  use, non_intrinsic :: support_projecteuler
  use, non_intrinsic :: support_system_clock
  use, non_intrinsic :: mod_IsPrime

  ! require all variables to be explicitly declared
  implicit none


  ! accessibility of <subroutine>s and <function>s in this <module>
  private :: Problem0010_01     ! function
  private :: Problem0010_02     ! function
  private :: Open_FileSave      ! subroutine
  private :: Close_FileSave     ! subroutine
  private :: show_result_each   ! subroutine
  public  :: show_result        ! subroutine
  private :: PythagoreanTriplet ! type


  ! constants for this <module>
  character(len=27, kind=1), parameter, private :: path_file_save_local = '\Fortran\Problem0010\result'

  ! variables for this <subroutine>
  character(len=len_buffer_path, kind=1) :: path_folder_parent
  character(len=len_buffer_path, kind=1) :: path_file_save_full

  ! <subroutine>s and <function>s in this <module> is below
  contains

  include "Problem0010_01.f08"
  include "Problem0010_02.f08"
  include "show_result.f08"

end module Problem0010

! -------------------------------------------------------------------------------------------------------------------------------- !
! End of Source Code                                                                                                               !
! -------------------------------------------------------------------------------------------------------------------------------- !
