! -------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler] 0002                                                                                                             !
! https://projecteuler.net/problem=2                                                                                               !
! http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%202                                                         !
! ------------------------------------------------------------------------------------------------------------------------------- -!
module Problem0002

  ! <module>s to import
  use,     intrinsic :: iso_fortran_env
  use, non_intrinsic :: support_projecteuler
  use, non_intrinsic :: support_system_clock

  ! require all variables to be explicitly declared
  implicit none

  ! accessibility of <subroutine>s and <function>s in this <module>
  public  :: show_result
  private :: Problem0002_01_RCR
  private :: Problem0002_01_WithMemo
  private :: Problem0002_02
  private :: Calc_FibonacciNum_RCR
  private :: Calc_FibonacciNum_WithMemo
  private :: show_result_core

  ! constants for this <module>
  integer (kind=INT64), private, parameter :: Fibonacci_1st = 1_INT64
  integer (kind=INT64), private, parameter :: Fibonacci_2nd = 2_INT64

  ! <subroutine>s and <function>s in this <module> is below
  contains

  ! recursive pure function Calc_FibonacciNum_RCR      (term)
  !           pure function Calc_FibonacciNum_WithMemo (term)
  include "Calc_FibonacciNum.f08"

  ! pure function Problem0002_01_RCR      (limit)
  ! pure function Problem0002_01_WithMemo (limit)
  include "Problem0002_01.f08"

  ! pure function Problem0002_02 (limit) result (sum)
  include "Problem0002_02.f08"

  ! show the result
  include "show_result.f08"

end module Problem0002

! -------------------------------------------------------------------------------------------------------------------------------- !
! End of Source Code                                                                                                               !
! -------------------------------------------------------------------------------------------------------------------------------- !
