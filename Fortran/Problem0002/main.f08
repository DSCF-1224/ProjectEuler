! ------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler] 0002                                                                                                            !
! https://projecteuler.net/problem=2                                                                                              !
! http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%202                                                        !
! ------------------------------------------------------------------------------------------------------------------------------- !
program main

  ! <module>s to import
  use,     intrinsic :: iso_fortran_env
  use, non_intrinsic :: Problem0002
  use, non_intrinsic :: support_system_clock

  ! Require all variables to be explicitly declared
  implicit none

  ! variables for this <program>
  integer( kind=INT64 )     :: limit, sum
  type( Type_System_Clock ) :: System_Clock_Start, System_Clock_End


  ! STEP.01
  ! set the target for this problem
  limit = 4_INT64 * 10_INT64 ** 6_INT64


  ! STEP.02.01
  call SYSTEM_CLOCK_UsingType ( System_Clock_Start )
  sum = Problem0002_01_RCR ( limit )
  call SYSTEM_CLOCK_UsingType ( System_Clock_End )
  call show_result ( limit= limit, sum= sum, start= System_Clock_Start, stop= System_Clock_End )

  ! STEP.02.02
  call SYSTEM_CLOCK_UsingType ( System_Clock_Start )
  sum = Problem0002_01_WithMemo ( limit )
  call SYSTEM_CLOCK_UsingType ( System_Clock_End )
  call show_result ( limit= limit, sum= sum, start= System_Clock_Start, stop= System_Clock_End )

  ! STEP.02.02
  call SYSTEM_CLOCK_UsingType ( System_Clock_Start )
  sum = Problem0002_02 ( limit )
  call SYSTEM_CLOCK_UsingType ( System_Clock_End )
  call show_result ( limit= limit, sum= sum, start= System_Clock_Start, stop= System_Clock_End )

  read *


  ! contained <subroutine>s and <function>s are below
  contains

  subroutine show_result ( limit, sum, start, stop )

    ! arguments for this <subroutine>
    integer( kind= INT64 ),    intent(in) :: limit
    integer( kind= INT64 ),    intent(in) :: sum
    type( Type_System_Clock ), intent(in) :: start
    type( Type_System_Clock ), intent(in) :: stop

    ! STEP.01
    write( unit=output_unit, fmt='(A12,1X,":",1X,2(I23))',      advance='yes' ) 'LIMIT',        limit
    write( unit=output_unit, fmt='(A12,1X,":",1X,2(I23))',      advance='yes' ) 'RETURN VALUE', sum
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
