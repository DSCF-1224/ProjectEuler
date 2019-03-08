! ------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler] 0008                                                                                                            !
! https://projecteuler.net/problem=8                                                                                              !
! http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%208                                                        !
! ------------------------------------------------------------------------------------------------------------------------------- !
program main

  ! <module>s to import
  use, non_intrinsic :: Problem0008
  use, non_intrinsic :: support_projecteuler

  ! Require all variables to be explicitly declared
  implicit none


  ! STEP.01
  ! read out the path of the parent folder
  call read_path_folder_parent (path_folder_parent)

  ! STEP.02
  ! calculate the target value
  call show_result(  4 )
  call show_result(  7 )
  call show_result( 10 )
  call show_result( 13 )
  call show_result( 16 )
  call show_result( 19 )

  ! STEP.END
  call show_reach_end

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