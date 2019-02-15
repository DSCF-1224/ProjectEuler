! ------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler] 0003                                                                                                            !
! https://projecteuler.net/problem=3                                                                                              !
! http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%203                                                        !
! ------------------------------------------------------------------------------------------------------------------------------- !
program main

  ! <module>s to import
  use,     intrinsic :: iso_fortran_env
  use, non_intrinsic :: Problem0003
  use, non_intrinsic :: support_system_clock

  ! Require all variables to be explicitly declared
  implicit none

  ! variables for this <program>
  integer( kind=INT64 )     :: target, factor
  type( Type_System_Clock ) :: System_Clock_Start, System_Clock_End

  ! STEP.01
  ! set the target integer
  target = 600851475143_INT64

  ! STEP.02
  ! calculate the target maximum prime factor

  ! STEP.02.01
  call SYSTEM_CLOCK_UsingType ( System_Clock_Start )
  factor = Problem0003_01 ( target )
  call SYSTEM_CLOCK_UsingType ( System_Clock_End )
  call show_result ( limit= target, retval= factor, start= System_Clock_Start, stop= System_Clock_End )

  ! STEP.02.02
  call SYSTEM_CLOCK_UsingType ( System_Clock_Start )
  factor = Problem0003_02 ( target )
  call SYSTEM_CLOCK_UsingType ( System_Clock_End )
  call show_result ( limit= target, retval= factor, start= System_Clock_Start, stop= System_Clock_End )

  ! STEP.02.02
  call SYSTEM_CLOCK_UsingType ( System_Clock_Start )
  factor = Problem0003_03 ( target )
  call SYSTEM_CLOCK_UsingType ( System_Clock_End )
  call show_result ( limit= target, retval= factor, start= System_Clock_Start, stop= System_Clock_End )

  ! STEP.TRUW_END
  read *


  ! contained <subroutine>s and <function>s are below
  contains

  subroutine show_result ( limit, retval, start, stop )

    ! arguments for this <subroutine>
    integer( kind= INT64 ),    intent(in) :: limit
    integer( kind= INT64 ),    intent(in) :: retval
    type( Type_System_Clock ), intent(in) :: start
    type( Type_System_Clock ), intent(in) :: stop

    ! STEP.01
    write( unit=output_unit, fmt='(A12,1X,":",1X,I23)',         advance='yes' ) 'LIMIT',        limit
    write( unit=output_unit, fmt='(A12,1X,":",1X,I23)',         advance='yes' ) 'RETURN VALUE', retval
    write( unit=output_unit, fmt='(A12,1X,":",1X,ES23.15e3,/)', advance='yes' ) &!
      'CPU TIME', &!
      SYSTEM_CLOCK_ElapsedTime( start= start, stop= stop )

    ! STEP.TRUE_END
    return

  end subroutine show_result
  
end program main
! -------------------------------------------------------------------------------------------------------------------------------- !
! gfortran ^                                                                                                                       !
! -c ^                                                                                                                             !
! -Wall -pedantic -fbounds-check -O -Wuninitialized -ffpe-trap=invalid,zero,overflow -fbacktrace ^                                 !
! ProjectEuler\Fortran\support\support_projecteuler.f08 ^                                                                          !
! ProjectEuler\Fortran\Problem0001\Problem0001_01.f08 ^                                                                            !
! ProjectEuler\Fortran\Problem0001\main.f08                                                                                        !
!                                                                                                                                  !
! gfortran ^                                                                                                                       !
! -o Problem0001_01.exe ^                                                                                                          !
! -Wall -pedantic -fbounds-check -O -Wuninitialized -ffpe-trap=invalid,zero,overflow -fbacktrace ^                                 !
! gfortran\support_projecteuler.o ^                                                                                                !
! Problem0001_01.o ^                                                                                                               !
! main.o                                                                                                                           !
! -------------------------------------------------------------------------------------------------------------------------------- !
