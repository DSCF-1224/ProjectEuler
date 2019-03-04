! -------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler] 0002                                                                                                             !
! https://projecteuler.net/problem=2                                                                                               !
! http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%202                                                         !
! ------------------------------------------------------------------------------------------------------------------------------- -!
module Problem0002

  ! <module>s to import
  use,     intrinsic :: iso_fortran_env
  use, non_intrinsic :: support_projecteuler

  ! require all variables to be explicitly declared
  implicit none

  ! accessibility of <subroutine>s and <function>s in this <module>
  public  :: Problem0002_01_RCR
  public  :: Problem0002_01_WithMemo
  public  :: Problem0002_02
  private :: Calc_FibonacciNum_RCR
  private :: Calc_FibonacciNum_WithMemo

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

end module Problem0002
! -------------------------------------------------------------------------------------------------------------------------------- !
! gfortran ^                                                                                                                       !
! -c ^                                                                                                                             !
! -Wall -pedantic -fbounds-check -O -Wuninitialized -ffpe-trap=invalid,zero,overflow -fbacktrace ^    
! Fortran\support\support_system_clock.f08 ^                                                                                       !
! ProjectEuler\Fortran\support\support_projecteuler.f08 ^                                                                          !
! ProjectEuler\Fortran\Problem0002\Problem0002_01.f08 ^                                                                            !
! ProjectEuler\Fortran\Problem0002\main.f08                                                                                        !
!                                                                                                                                  !
! gfortran ^                                                                                                                       !
! -o Problem0002_01.exe ^                                                                                                          !
! -Wall -pedantic -fbounds-check -O -Wuninitialized -ffpe-trap=invalid,zero,overflow -fbacktrace ^                                 !
! support_system_clock.o ^                                                                                                         !
! support_projecteuler.o ^                                                                                                         !
! Problem0002_01.o ^                                                                                                               !
! main.o                                                                                                                           !
! -------------------------------------------------------------------------------------------------------------------------------- !
