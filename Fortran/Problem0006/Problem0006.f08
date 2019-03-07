! ------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler] 0006                                                                                                            !
! https://projecteuler.net/problem=6                                                                                              !
! http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%206                                                        !
! ------------------------------------------------------------------------------------------------------------------------------- !
module Problem0006

  ! <module>s to import
  use,     intrinsic :: iso_fortran_env
  use, non_intrinsic :: support_projecteuler
  use, non_intrinsic :: support_system_clock

  ! require all variables to be explicitly declared
  implicit none

  ! accessibility of <subroutine>s and <function>s in this <module>
  public  :: show_result            ! interface
  private :: Problem0006_01         ! interface
  private :: Problem0006_02         ! interface
  private :: show_result_each       ! interface
  private :: Problem0006_01_INT32   ! function
  private :: Problem0006_01_INT64   ! function
  private :: Problem0006_02_INT32   ! function
  private :: Problem0006_02_INT64   ! function
  private :: show_result_each_INT32 ! subroutine
  private :: show_result_each_INT64 ! subroutine
  private :: show_result_INT32      ! subroutine
  private :: show_result_INT64      ! subroutine

  ! <interface>s for this <program>
  interface Problem0006_01
    module procedure Problem0006_01_INT32
    module procedure Problem0006_01_INT64
  end interface
  
  interface Problem0006_02
    module procedure Problem0006_02_INT32
    module procedure Problem0006_02_INT64
  end interface
  
  interface show_result_each
    module procedure show_result_each_INT32
    module procedure show_result_each_INT64
  end interface
  
  interface show_result
    module procedure show_result_INT32
    module procedure show_result_INT64
  end interface

  ! <subroutine>s and <function>s in this <module> is below
  contains

  ! pure function Problem0006_01_INT32 (target)
  ! pure function Problem0006_01_INT64 (target)
  include "Problem0006_01.f08"

  ! pure function Problem0006_02_INT32 (target)
  ! pure function Problem0006_02_INT64 (target)
  include "Problem0006_02.f08"

  ! show the result
  include "show_result.f08"

end module Problem0006

! -------------------------------------------------------------------------------------------------------------------------------- !
! End of Source Code                                                                                                               !
! -------------------------------------------------------------------------------------------------------------------------------- !
