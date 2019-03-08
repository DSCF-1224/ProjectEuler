! ------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler]                                                                                                                 !
! support subrutines and functions                                                                                                !
! ------------------------------------------------------------------------------------------------------------------------------- !
module support_projecteuler

  ! <module>s to import
  use, intrinsic :: iso_fortran_env

  ! require all variables to be explicitly declared
  implicit none

  ! accessibility of <subroutine>s and <function>s in this <module>
  public :: read_path_file_save     ! subroutine
  public :: read_path_folder_save   ! subroutine
  public :: read_path_folder_parent ! subroutine


  ! constants for this <module>
  integer, parameter, public :: DATA_UNIT       =  21
  integer, parameter, public :: SAVE_UNIT       =  31
  integer, parameter, public :: len_buffer_path = 512


  ! <subroutine>s and <function>s in this <module> is below
  contains

  include "show_result.f08"

end module support_projecteuler
