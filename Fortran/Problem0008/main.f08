! ------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler] 0008                                                                                                            !
! https://projecteuler.net/problem=8                                                                                              !
! http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%208                                                        !
! ------------------------------------------------------------------------------------------------------------------------------- !
program main

  ! <module>s to import
  use, non_intrinsic :: Problem0008

  ! Require all variables to be explicitly declared
  implicit none

  call Problem0008_01(  4 )
  call Problem0008_01( 13 )
  
end program main
! ------------------------------------------------------------------------------------------------------------------------------- !
! gfortran ^                                                                                                                      !
! -c ^                                                                                                                            !
! -Wall -pedantic -fbounds-check -O -Wuninitialized -ffpe-trap=invalid,zero,overflow -fbacktrace ^                                !
! GitHub\Fortran\ProjectEuler\Problem0008\Problem0008_01.f08 ^                                                                 !
! GitHub\Fortran\ProjectEuler\Problem0008\main.f08                                                                             !
!                                                                                                                                 !
! gfortran ^                                                                                                                      !
! -o Problem0008_01.exe ^                                                                                                         !
! -Wall -pedantic -fbounds-check -O -Wuninitialized -ffpe-trap=invalid,zero,overflow -fbacktrace ^                                !
! D:\gfortran\Problem0008_01.o ^                                                                                                  !
! D:\gfortran\main.o                                                                                                              !
! ------------------------------------------------------------------------------------------------------------------------------- !