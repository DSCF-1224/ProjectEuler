! ------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler] 0002                                                                                                            !
! https://projecteuler.net/problem=2                                                                                              !
! http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%202                                                        !
! ------------------------------------------------------------------------------------------------------------------------------- !
module Problem0002

  ! <module>s to import
  use,     intrinsic :: iso_fortran_env
  use, non_intrinsic :: support_projecteuler

  ! require all variables to be explicitly declared
  implicit none

  ! accessibility of <subroutine>s and <function>s in this <module>
  public  :: Problem0002_01
  public  :: Problem0002_02
  private :: Calc_FibonacciNum

  ! constants for this <module>
  integer( kind=INT64 ), private, parameter :: Fibonacci_1st = 1_INT64
  integer( kind=INT64 ), private, parameter :: Fibonacci_2nd = 2_INT64
  
  ! <subroutine>s and <function>s in this <module> is below
  contains


  recursive pure function Calc_FibonacciNum( term ) result( retval )

    ! argument of this <function>
    integer( kind=INT32 ), intent(in) :: term

    ! return value of this <function>
    integer( kind=INT64 ) :: retval

    select case (term)
      case( 1_INT32 ); retval = Fibonacci_1st
      case( 2_INT32 ); retval = Fibonacci_2nd
      case default;    retval = Calc_FibonacciNum( term-1_INT32 ) + Calc_FibonacciNum( term-2_INT32 )
    end select

    return

  end function Calc_FibonacciNum


  pure function Problem0002_01( limit ) result( sum )

    ! argument of this <function>
    integer( kind=INT64 ), intent(in) :: limit

    ! return value of this <function>
    integer( kind=INT64 ) :: sum

    ! support variables for this <function>
    integer( kind=INT32 ) :: itr
    integer( kind=INT64 ) :: buf_Fibonacci


    ! STEP.01 !
    itr           = 1_INT32
    buf_Fibonacci = Calc_FibonacciNum( itr )
    sum           = 0_INT64

    ! STEP.02 !
    do while( buf_Fibonacci .lt. limit )
      if( determine_isEven( buf_Fibonacci ) ) sum = sum + buf_Fibonacci
      itr           = itr + 1_INT32
      buf_Fibonacci = Calc_FibonacciNum( itr )
    end do

    ! STEP.END !
    return

  end function Problem0002_01


  pure function Problem0002_02( limit ) result( sum )

    ! argument of this <function>
    integer( kind=INT64 ), intent(in) :: limit

    ! return value of this <function>
    integer( kind=INT64 ) :: sum

    ! support variables for this <function>
    integer( kind=INT64 ) :: buf_Fibonacci(1:3)


    ! STEP.01 !
    buf_Fibonacci(1) = Fibonacci_1st
    buf_Fibonacci(2) = Fibonacci_1st
    buf_Fibonacci(3) = buf_Fibonacci(1) + buf_Fibonacci(2)
    sum              = 0_INT64

    ! STEP.02 !
    do while( buf_Fibonacci(3) .lt. limit )
      sum              = buf_Fibonacci(3) + sum
      buf_Fibonacci(1) = buf_Fibonacci(2) + buf_Fibonacci(3)
      buf_Fibonacci(2) = buf_Fibonacci(3) + buf_Fibonacci(1)
      buf_Fibonacci(3) = buf_Fibonacci(1) + buf_Fibonacci(2)
    end do

    ! STEP.END !
    return

  end function Problem0002_02

end module Problem0002
! -------------------------------------------------------------------------------------------------------------------------------- !
! gfortran ^                                                                                                                       !
! -c ^                                                                                                                             !
! -Wall -pedantic -fbounds-check -O -Wuninitialized -ffpe-trap=invalid,zero,overflow -fbacktrace ^    
! Fortran\support\support_system_clock.f08 ^                                                                                       !
! ProjectEuler\Fortran\support\support_projecteuler.f08 ^                                                                          !
! ProjectEuler\Fortran\Problem0002\Problem0002_01.f08 ^                                                                            !
! ProjectEuler\Fortran\Problem0002\main.f08                                                                                        !
!                                                                                                                                  !
! gfortran ^                                                                                                                       !
! -o Problem0002_01.exe ^                                                                                                          !
! -Wall -pedantic -fbounds-check -O -Wuninitialized -ffpe-trap=invalid,zero,overflow -fbacktrace ^                                 !
! support_system_clock.o ^                                                                                                         !
! support_projecteuler.o ^                                                                                                         !
! Problem0002_01.o ^                                                                                                               !
! main.o                                                                                                                           !
! -------------------------------------------------------------------------------------------------------------------------------- !
