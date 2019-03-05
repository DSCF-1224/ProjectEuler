! ------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler] 0004                                                                                                            !
! https://projecteuler.net/problem=4                                                                                              !
! http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%204                                                        !
! ------------------------------------------------------------------------------------------------------------------------------- !
module Problem0004

  ! <module>s to import
  use,     intrinsic :: iso_fortran_env
  use, non_intrinsic :: support_projecteuler
  use, non_intrinsic :: support_system_clock
  use, non_intrinsic :: number_of_digits

  ! require all variables to be explicitly declared
  implicit none

  ! accessibility of <subroutine>s and <function>s in this <module>
  private :: find_largest_palindrome_v01 ! function
  private :: Check_IsPalindromic_int     ! function
  private :: Pick_ValTargetDigit         ! function
  private :: show_result_core            ! subroutine
  public  :: show_result                 ! subroutine

  
  ! <subroutine>s and <function>s in this <module> is below
  contains


  ! version 01
  include "Problem0004_01.f08"

  ! show the result
  include "show_result.f08"

end module Problem0004
! ------------------------------------------------------------------------------------------------------------------------------- !
! gfortran ^                                                                                                                      !
! -c ^                                                                                                                            !
! -Wall -pedantic -fbounds-check -O -Wuninitialized -ffpe-trap=invalid,zero,overflow -fbacktrace ^                                !
! GitHub\Fortran\ProjectEuler\Problem0004\Problem0004_01.f08 ^                                                                 !
! GitHub\Fortran\ProjectEuler\Problem0004\main.f08                                                                             !
!                                                                                                                                 !
! gfortran ^                                                                                                                      !
! -o Problem0004_01.exe ^                                                                                                         !
! -Wall -pedantic -fbounds-check -O -Wuninitialized -ffpe-trap=invalid,zero,overflow -fbacktrace ^                                !
! D:\gfortran\Problem0004_01.o ^                                                                                                  !
! D:\gfortran\main.o                                                                                                              !
! ------------------------------------------------------------------------------------------------------------------------------- !