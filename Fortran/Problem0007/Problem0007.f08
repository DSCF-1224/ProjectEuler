! ------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler] 0007                                                                                                            !
! https://projecteuler.net/problem=7                                                                                              !
! http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%207                                                        !
! ------------------------------------------------------------------------------------------------------------------------------- !
module Problem0007

  ! <module>s to import
  use,     intrinsic :: iso_fortran_env
  use, non_intrinsic :: support_projecteuler
  use, non_intrinsic :: support_system_clock
  use, non_intrinsic :: mod_IsPrime

  ! require all variables to be explicitly declared
  implicit none

  ! accessibility of <subroutine>s and <function>s in this <module>
  public  :: Problem0007_01       ! interface
  public  :: Problem0007_02       ! interface
  public  :: Problem0007_03       ! interface
  private :: Problem0007_01_INT32 ! function
  private :: Problem0007_01_INT64 ! function
  private :: Problem0007_02_INT32 ! function
  private :: Problem0007_02_INT64 ! function
  private :: Problem0007_03_INT32 ! function
  private :: Problem0007_03_INT64 ! function

  ! <interface>s for this <program>
  interface Problem0007_01
    module procedure Problem0007_01_INT32
    module procedure Problem0007_01_INT64
  end interface Problem0007_01

  interface Problem0007_02
    module procedure Problem0007_02_INT32
    module procedure Problem0007_02_INT64
  end interface Problem0007_02

  interface Problem0007_03
    module procedure Problem0007_03_INT32
    module procedure Problem0007_03_INT64
  end interface Problem0007_03

  interface show_result_each
    module procedure show_result_each_INT32
    module procedure show_result_each_INT64
  end interface show_result_each

  interface show_result
    module procedure show_result_INT32
    module procedure show_result_INT64
  end interface show_result

  ! <subroutine>s and <function>s in this <module> is below
  contains

  include "Problem0007_01.f08"
  include "Problem0007_02.f08"
  include "Problem0007_03.f08"
  include "show_result.f08"

end module Problem0007

! -------------------------------------------------------------------------------------------------------------------------------- !
! End of Source Code                                                                                                               !
! -------------------------------------------------------------------------------------------------------------------------------- !
