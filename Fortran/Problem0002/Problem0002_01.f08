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
  public  :: Problem0002_01_RCR
  public  :: Problem0002_01_WithMemo
  public  :: Problem0002_02
  private :: Calc_FibonacciNum_RCR
  private :: Calc_FibonacciNum_WithMemo

  ! constants for this <module>
  integer( kind=INT64 ), private, parameter :: Fibonacci_1st = 1_INT64
  integer( kind=INT64 ), private, parameter :: Fibonacci_2nd = 2_INT64

  ! <subroutine>s and <function>s in this <module> is below
  contains


  recursive pure function Calc_FibonacciNum_RCR ( term ) result( retval )

    ! argument of this <function>
    integer( kind=INT32 ), intent(in) :: term

    ! return value of this <function>
    integer( kind=INT64 ) :: retval

    select case (term)
      case( 1_INT32 ); retval = Fibonacci_1st
      case( 2_INT32 ); retval = Fibonacci_2nd
      case default;    retval = Calc_FibonacciNum_RCR( term-1_INT32 ) + Calc_FibonacciNum_RCR( term-2_INT32 )
    end select

    return

  end function Calc_FibonacciNum_RCR


  pure function Calc_FibonacciNum_WithMemo ( term ) result( retval )

    ! arguments for this <function>
    integer( kind= INT32 ), intent(in) :: term

    ! return value of this <function>
    integer( kind=INT64 ) :: retval

    ! local variables for this <function>
    integer( kind= INT32 )              :: itr
    integer( kind= INT64 ), allocatable :: buf(:)

    select case( term )
      case( 1_INT32 ); retval = Fibonacci_1st; return
      case( 2_INT32 ); retval = Fibonacci_2nd; return
      case default

        ! STEP.01
        ! allocate the array to store the Fibonacci sequence
        allocate( buf(1:term) )

        ! STEP.02
        ! set the initial values of the Fibonacci sequence
        buf(1) = Fibonacci_1st
        buf(2) = Fibonacci_2nd

        ! STEP.03
        ! calculate the `term`-th value of the Fibonacci sequence
        do itr = 3,term,1
          buf(itr) = buf(itr-1) + buf(itr-2)
        end do

        ! STEP.04
        ! set the return value of this function
        retval = buf(term)

        ! STEP.05
        ! deallocate the array to store the Fibonacci sequence
        deallocate( buf )

        ! STEP.TRUE_END
        return

    end select
 
  end function Calc_FibonacciNum_WithMemo

 
  pure function Problem0002_01_RCR ( limit ) result( sum )

    ! argument of this <function>
    integer( kind=INT64 ), intent(in) :: limit

    ! return value of this <function>
    integer( kind=INT64 ) :: sum

    ! support variables for this <function>
    integer( kind=INT32 ) :: itr
    integer( kind=INT64 ) :: buf_Fibonacci


    ! STEP.01
    ! initialize the local variables
    itr           = 1_INT32
    buf_Fibonacci = Calc_FibonacciNum_RCR ( itr )
    sum           = 0_INT64

    ! STEP.02 !
    do while ( buf_Fibonacci .lt. limit )
      if ( determine_isEven( buf_Fibonacci ) ) sum = sum + buf_Fibonacci
      itr           = itr + 1_INT32
      buf_Fibonacci = Calc_FibonacciNum_RCR ( itr )
    end do

    ! STEP.END !
    return

  end function Problem0002_01_RCR

 
  pure function Problem0002_01_WithMemo ( limit ) result( sum )

    ! argument of this <function>
    integer( kind=INT64 ), intent(in) :: limit

    ! return value of this <function>
    integer( kind=INT64 ) :: sum

    ! support variables for this <function>
    integer( kind=INT32 ) :: itr
    integer( kind=INT64 ) :: buf_Fibonacci


    ! STEP.01
    ! initialize the local variables
    itr           = 1_INT32
    buf_Fibonacci = Calc_FibonacciNum_WithMemo ( itr )
    sum           = 0_INT64

    ! STEP.02 !
    do while( buf_Fibonacci .lt. limit )
      if( determine_isEven( buf_Fibonacci ) ) sum = sum + buf_Fibonacci
      itr           = itr + 1_INT32
      buf_Fibonacci = Calc_FibonacciNum_WithMemo ( itr )
    end do

    ! STEP.END !
    return

  end function Problem0002_01_WithMemo


  pure function Problem0002_02 ( limit ) result( sum )

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
