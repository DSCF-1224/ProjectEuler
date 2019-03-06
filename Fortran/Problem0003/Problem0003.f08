! ------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler] 0003                                                                                                            !
! https://projecteuler.net/problem=3                                                                                              !
! http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%203                                                        !
! ------------------------------------------------------------------------------------------------------------------------------- !
module Problem0003

  ! <module>s to import
  use,     intrinsic :: iso_fortran_env
  use, non_intrinsic :: support_projecteuler
  use, non_intrinsic :: support_system_clock

  ! require all variables to be explicitly declared
  implicit none

  ! accessibility of <subroutine>s and <function>s in this <module>
  public  :: show_result            ! interface
  private :: Problem0003_01         ! interface
  private :: Problem0003_02         ! interface
  private :: Problem0003_03         ! interface
  private :: show_result_core       ! interface
  private :: Problem0003_01_INT32   ! function
  private :: Problem0003_01_INT64   ! function
  private :: Problem0003_02_INT32   ! function
  private :: Problem0003_02_INT64   ! function
  private :: Problem0003_03_INT32   ! function
  private :: Problem0003_03_INT64   ! function
  private :: show_result_core_INT32 ! subroutine
  private :: show_result_core_INT64 ! subroutine
  private :: show_result_INT32      ! subroutine
  private :: show_result_INT64      ! subroutine

  ! <interface>s for this <program>
  interface Problem0003_01
    module procedure Problem0003_01_INT32
    module procedure Problem0003_01_INT64
  end interface

  interface Problem0003_02
    module procedure Problem0003_02_INT32
    module procedure Problem0003_02_INT64
  end interface

  interface Problem0003_03
    module procedure Problem0003_03_INT32
    module procedure Problem0003_03_INT64
  end interface

  interface show_result_core
    module procedure show_result_core_INT32
    module procedure show_result_core_INT64
  end interface

  interface show_result
    module procedure show_result_INT32
    module procedure show_result_INT64
  end interface

  
  ! <subroutine>s and <function>s in this <module> is below
  contains

  ! pure function Problem0003_01_INT32 (target)
  ! pure function Problem0003_01_INT64 (target)
  include "Problem0003_01.f08"

  ! pure function Problem0003_02_INT32 (target)
  ! pure function Problem0003_02_INT64 (target)
  include "Problem0003_02.f08"

  ! pure function Problem0003_03_INT32 (target)
  ! pure function Problem0003_03_INT64 (target)
  include "Problem0003_03.f08"

  ! show the result
  include "show_result.f08"

end module Problem0003

! -------------------------------------------------------------------------------------------------------------------------------- !
! End of Source Code                                                                                                               !
! -------------------------------------------------------------------------------------------------------------------------------- !
