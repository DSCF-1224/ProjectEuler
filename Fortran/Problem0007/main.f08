! ------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler] 0007                                                                                                            !
! https://projecteuler.net/problem=7                                                                                              !
! http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%207                                                        !
! ------------------------------------------------------------------------------------------------------------------------------- !
program main

  ! <module>s to import
  use,     intrinsic :: iso_fortran_env
  use, non_intrinsic :: Problem0007

  ! Require all variables to be explicitly declared
  implicit none

  ! variables for this <program>
  integer( kind= INT32 ) :: itr, target

  do target = 1, 10, 1
    write( unit=output_unit, fmt='(I8,I20)', advance='yes' ) target, Problem0007_01( target )
  end do

  do itr = 1, 5, 1
    target = 10_INT32 ** itr + 1_INT32
    write( unit=output_unit, fmt='(I8,I20)', advance='yes' ) target, Problem0007_01( target )
  end do
  
end program main
! ------------------------------------------------------------------------------------------------------------------------------- !
! gfortran ^                                                                                                                      !
! -c ^                                                                                                                            !
! -Wall -pedantic -fbounds-check -O -Wuninitialized -ffpe-trap=invalid,zero,overflow -fbacktrace ^                                !
! D:\GitHub\Fortran\ProjectEuler\Problem0007\Problem0007_01.f08 ^                                                                 !
! D:\GitHub\Fortran\ProjectEuler\Problem0007\main.f08                                                                             !
!                                                                                                                                 !
! gfortran ^                                                                                                                      !
! -o Problem0007_01.exe ^                                                                                                         !
! -Wall -pedantic -fbounds-check -O -Wuninitialized -ffpe-trap=invalid,zero,overflow -fbacktrace ^                                !
! D:\gfortran\Problem0007_01.o ^                                                                                                  !
! D:\gfortran\main.o                                                                                                              !
! ------------------------------------------------------------------------------------------------------------------------------- !