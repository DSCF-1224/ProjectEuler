! ------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler] 0009                                                                                                            !
! https://projecteuler.net/problem=9                                                                                              !
! http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%209                                                        !
! ------------------------------------------------------------------------------------------------------------------------------- !
module Problem0009

  ! <module>s to import
  use,     intrinsic :: iso_fortran_env
  use, non_intrinsic :: support_projecteuler
  use, non_intrinsic :: support_system_clock

  ! require all variables to be explicitly declared
  implicit none


  ! accessibility of <subroutine>s and <function>s in this <module>
  private :: Problem0009_01     ! function
  private :: Problem0009_02     ! function
  private :: Open_FileSave      ! subroutine
  private :: Close_FileSave     ! subroutine
  private :: show_result_each   ! subroutine
  public  :: show_result        ! subroutine
  private :: PythagoreanTriplet ! type


  ! <type> for this <module>
  type PythagoreanTriplet
    integer(kind=INT64) :: min
    integer(kind=INT64) :: mid
    integer(kind=INT64) :: max
    integer(kind=INT64) :: sum
    integer(kind=INT64) :: prd
    logical             :: isfound
  end type PythagoreanTriplet


  ! constants for this <module>
  character(len=27, kind=1), parameter, private :: path_file_save_local = '\Fortran\Problem0009\result'

  ! variables for this <subroutine>
  character(len=len_buffer_path, kind=1) :: path_folder_parent
  character(len=len_buffer_path, kind=1) :: path_file_save_full

  ! <subroutine>s and <function>s in this <module> is below
  contains

  include "Problem0009_01.f08"
  include "Problem0009_02.f08"
  include "show_result.f08"

end module Problem0009

! -------------------------------------------------------------------------------------------------------------------------------- !
! End of Source Code                                                                                                               !
! -------------------------------------------------------------------------------------------------------------------------------- !
