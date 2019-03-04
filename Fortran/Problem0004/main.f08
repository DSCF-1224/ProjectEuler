! ------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler] 0004                                                                                                            !
! https://projecteuler.net/problem=4                                                                                              !
! http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%204                                                        !
! ------------------------------------------------------------------------------------------------------------------------------- !
program main

  ! <module>s to import
  use, non_intrinsic :: Problem0004


  ! STEP.01
  call show_result( 2_INT64 )
  call show_result( 3_INT64 )

  ! STEP.END
  call show_reach_end
  
end program main
! ------------------------------------------------------------------------------------------------------------------------------- !
! gfortran ^                                                                                                                      !
! -c ^                                                                                                                            !
! -Wall -pedantic -fbounds-check -O -Wuninitialized -ffpe-trap=invalid,zero,overflow -fbacktrace ^                                !
! GitHub\Fortran\ProjectEuler\Problem0004\Problem0004_01.f08 ^                                                                    !
! GitHub\Fortran\ProjectEuler\Problem0004\main.f08                                                                                !
!                                                                                                                                 !
! gfortran ^                                                                                                                      !
! -o Problem0004_01.exe ^                                                                                                         !
! -Wall -pedantic -fbounds-check -O -Wuninitialized -ffpe-trap=invalid,zero,overflow -fbacktrace ^                                !
! D:\gfortran\Problem0004_01.o ^                                                                                                  !
! D:\gfortran\main.o                                                                                                              !
! ------------------------------------------------------------------------------------------------------------------------------- !