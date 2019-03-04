! ------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler] 0002                                                                                                            !
! https://projecteuler.net/problem=2                                                                                              !
! http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%202                                                        !
! ------------------------------------------------------------------------------------------------------------------------------- !
program main

  ! <module>s to import
  use, non_intrinsic :: Problem0002

  ! Require all variables to be explicitly declared
  implicit none


  ! STEP.01
  call show_result( 4_INT64 * 10_INT64**6 )

  ! STEP.END
  call show_reach_end

end program main
! -------------------------------------------------------------------------------------------------------------------------------- !
! gfortran ^                                                                                                                       !
! -c ^                                                                                                                             !
! -Wall -pedantic -fbounds-check -O -Wuninitialized -ffpe-trap=invalid,zero,overflow -fbacktrace ^                                 !
! ProjectEuler\Fortran\support\support_projecteuler.f08 ^                                                                          !
! ProjectEuler\Fortran\Problem0002\Problem0002_01.f08 ^                                                                            !
! ProjectEuler\Fortran\Problem0002\main.f08                                                                                        !
!                                                                                                                                  !
! gfortran ^                                                                                                                       !
! -o Problem0002_01.exe ^                                                                                                          !
! -Wall -pedantic -fbounds-check -O -Wuninitialized -ffpe-trap=invalid,zero,overflow -fbacktrace ^                                 !
! gfortran\support_projecteuler.o ^                                                                                                !
! Problem0002_01.o ^                                                                                                               !
! main.o                                                                                                                           !
! -------------------------------------------------------------------------------------------------------------------------------- !
