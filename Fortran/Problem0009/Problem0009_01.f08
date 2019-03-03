! ------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler] 0009                                                                                                            !
! https://projecteuler.net/problem=9                                                                                              !
! http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%209                                                        !
! ------------------------------------------------------------------------------------------------------------------------------- !
module Problem0009

  ! <module>s to import
  use, intrinsic :: iso_fortran_env

  ! require all variables to be explicitly declared
  implicit none


  ! accessibility of <subroutine>s and <function>s in this <module>
  public :: Problem0009_01 ! subroutine


  ! <subroutine>s and <function>s in this <module> is below
  contains


  subroutine Problem0009_01( target )

    ! arguments for this <subroutine>
    integer( kind=INT64 ), intent(in) :: target

    ! variables for this <subroutine>
    integer( kind=INT64 ) :: itr_a, itr_b, itr_c, product
    logical               :: isfound

    ! STEP.01
    ! initialize the flaf
    isfound = .false.

    ! STEP.02
    ! search the Pythagorean triplet `a`, `b` and `c` which a+b+c=`target`
    do itr_a = 1, target, 1 ! loop for integer `a`
    
      do itr_b = itr_a+1, target, 1 ! loop for integer `b`

        ! STEP.02.01
        ! determine the integer `c`
        ! if( itr_a + itr_b .ge. target ) exit
        itr_c = target - itr_a - itr_b

        ! STEP.02.02
        ! judge whether the integer `c` satisfies the inequality `a < b < c`
        ! if the condition was NOT satisfied -> exit the iteration loop for integer `b`
        if ( itr_b .ge. itr_c ) exit

        ! STEP.02.03
        ! judge whether the set of integers `a`, `b` and `c` was the Pythagorean triplet
        ! if the set was the Pythagorean triplet -> exit the iteration loop for integer `b`
        if ( itr_a*itr_a + itr_b*itr_b .eq. itr_c*itr_c ) then

          ! STEP.03
          ! calculate the return value of this function
          ! update the flag
          product = itr_a*itr_b*itr_c
          isfound = .true.

          ! STEP.04
          ! exit the loop for integer `c`
          exit

        end if

      end do

      ! STEP.05
      ! judge whether it is possible to exit the loop for integer `a`
      if ( isfound ) exit

    end do

    ! STEP.03
    ! output the result
    if ( isfound ) then
      write( unit=OUTPUT_UNIT, fmt='(I0,2(1X,I0))', advance='yes' ) itr_a, itr_b, itr_c
      write( unit=OUTPUT_UNIT, fmt='(I0)',          advance='yes' ) product
    else
      write( unit=OUTPUT_UNIT, fmt='(A)', advance='yes' ) 'It is failed to find the pythagorean triplet.'
    end if

  end subroutine Problem0009_01

end module Problem0009
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