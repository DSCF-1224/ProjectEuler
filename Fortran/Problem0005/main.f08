! ------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler] 0005                                                                                                            !
! https://projecteuler.net/problem=5                                                                                              !
! http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%205                                                        !
! ------------------------------------------------------------------------------------------------------------------------------- !
program main

  ! <module>s to import
  use, non_intrinsic :: Problem0005

  ! Require all variables to be explicitly declared
  implicit none

  ! STEP.01
  call show_result ( 10_INT64 )
  call show_result ( 20_INT64 )

end program main
! ------------------------------------------------------------------------------------------------------------------------------- !
! gfortran ^                                                                                                                      !
! -c ^                                                                                                                            !
! -Wall -pedantic -fbounds-check -O -Wuninitialized -ffpe-trap=invalid,zero,overflow -fbacktrace ^                                !
! GitHub\Fortran\miniparts\GCD_LCM.f08 ^                                                                                       !
! GitHub\Fortran\ProjectEuler\Problem0005\Problem0005_01.f08 ^                                                                 !
! GitHub\Fortran\ProjectEuler\Problem0005\main.f08                                                                             !
!                                                                                                                                 !
! gfortran ^                                                                                                                      !
! -o Problem0005_01.exe ^                                                                                                         !
! -Wall -pedantic -fbounds-check -O -Wuninitialized -ffpe-trap=invalid,zero,overflow -fbacktrace ^                                !
! GCD_LCM.o ^                                                                                                                     !
! D:\gfortran\Problem0005_01.o ^                                                                                                  !
! D:\gfortran\main.o                                                                                                              !
! ------------------------------------------------------------------------------------------------------------------------------- !