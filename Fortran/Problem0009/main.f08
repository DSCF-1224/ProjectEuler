! ------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler] 0009                                                                                                            !
! https://projecteuler.net/problem=9                                                                                              !
! http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%209                                                        !
! ------------------------------------------------------------------------------------------------------------------------------- !
program main

  ! <module>s to import
  use, non_intrinsic :: Problem0009

  ! Require all variables to be explicitly declared
  implicit none

  call Problem0009_01( 1000_INT64 )
  
end program main
! ------------------------------------------------------------------------------------------------------------------------------- !
! gfortran ^                                                                                                                      !
! -c ^                                                                                                                            !
! -Wall -pedantic -fbounds-check -O -Wuninitialized -ffpe-trap=invalid,zero,overflow -fbacktrace ^                                !
! GitHub\Fortran\ProjectEuler\Problem0009\Problem0009_01.f08 ^                                                                 !
! GitHub\Fortran\ProjectEuler\Problem0009\main.f08                                                                             !
!                                                                                                                                 !
! gfortran ^                                                                                                                      !
! -o Problem0009_01.exe ^                                                                                                         !
! -Wall -pedantic -fbounds-check -O -Wuninitialized -ffpe-trap=invalid,zero,overflow -fbacktrace ^                                !
! D:\gfortran\Problem0009_01.o ^                                                                                                  !
! D:\gfortran\main.o                                                                                                              !
! ------------------------------------------------------------------------------------------------------------------------------- !