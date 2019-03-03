! ------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler] 0001                                                                                                            !
! https://projecteuler.net/problem=1                                                                                              !
! http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%201                                                        !
! ------------------------------------------------------------------------------------------------------------------------------- !
module Problem0001

  ! <module>s to import
  use,     intrinsic :: iso_fortran_env
  use, non_intrinsic :: support_projecteuler
  use, non_intrinsic :: support_system_clock

  ! accessibility of <subroutine>s and <function>s in this <module>
  public  :: Problem0001_01
  public  :: Problem0001_02
  public  :: Problem0001_03
  public  :: show_result
  private :: show_result_core
  private :: determine_istargetmultiple
  private :: Problem0001_03_sub
  
  ! <subroutine>s and <function>s in this <module> is below
  contains


  pure function determine_istargetmultiple ( target ) result ( stat )

    ! argument of this <function>
    integer( kind=INT64 ), intent(in) :: target

    ! return value of this <function>
    logical :: stat

    ! STEP.01/01
    stat = determine_ismultiple( target= target, base= 3_INT64 )
    stat = determine_ismultiple( target= target, base= 5_INT64 ) .or. stat

    ! STEP.TRUE_END
    return

  end function determine_istargetmultiple


  ! pure function Problem0001_01 ( limit ) result ( sum )
  include "Problem0001_01.f08"


  ! pure function Problem0001_02 ( limit ) result( sum )
  include "Problem0001_02.f08"


  ! pure function Problem0001_03 ( limit ) result( sum )
  include "Problem0001_03.f08"


  subroutine show_result_core ( version, limit, retval, start, stop )

    ! arguments for this <subroutine>
    integer,                    intent (in) :: version
    integer ( kind=INT64 ),     intent (in) :: limit
    integer ( kind=INT64 ),     intent (in) :: retval
    type ( Type_System_Clock ), intent (in) :: start
    type ( Type_System_Clock ), intent (in) :: stop

    ! STEP.01
    write ( unit=output_unit, fmt='(A9,1X,":",1X,I14)',        advance='yes' ) 'VERSION', version
    write ( unit=output_unit, fmt='(A9,1X,":",1X,I14)',        advance='yes' ) 'LIMIT',   limit
    write ( unit=output_unit, fmt='(A9,1X,":",1X,I14)',        advance='yes' ) 'SUM',     retval
    write ( unit=output_unit, fmt='(A9,1X,":",1X,ES14.7e3,/)', advance='yes' ) &!
      'CPU TIME', &!
      SYSTEM_CLOCK_ElapsedTime ( start= start, stop= stop )

    ! STEP.TRUE_END
    return

  end subroutine show_result_core


  subroutine show_result ( version, limit )

    ! arguments for this <subroutine>
    integer,                intent (in) :: version
    integer ( kind=INT64 ), intent (in) :: limit

    ! variables for this <subroutine>
    integer ( kind=INT64 )    :: sum
    type( Type_System_Clock ) :: System_Clock_Start, System_Clock_End

    ! STEP.01
    select case ( version )

      case( 1 )
        
        call SYSTEM_CLOCK_UsingType ( System_Clock_Start )
        sum = Problem0001_01 ( limit )
        call SYSTEM_CLOCK_UsingType ( System_Clock_End )

      case( 2 )
        
        call SYSTEM_CLOCK_UsingType ( System_Clock_Start )
        sum = Problem0001_02 ( limit )
        call SYSTEM_CLOCK_UsingType ( System_Clock_End )

      case( 3 )
        
        call SYSTEM_CLOCK_UsingType ( System_Clock_Start )
        sum = Problem0001_03 ( limit )
        call SYSTEM_CLOCK_UsingType ( System_Clock_End )

    end select

    ! STEP.02
    call show_result_core ( version= version, limit= limit, retval= sum, start= System_Clock_Start, stop= System_Clock_End )

    ! STEP.END
    return

  end subroutine show_result

end module Problem0001
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
