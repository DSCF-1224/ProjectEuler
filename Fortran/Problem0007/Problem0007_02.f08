! ------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler] 0007                                                                                                            !
! https://projecteuler.net/problem=7                                                                                              !
! http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%207                                                        !
! ------------------------------------------------------------------------------------------------------------------------------- !
module Problem0007

  ! <module>s to import
  use,     intrinsic :: iso_fortran_env
  use, non_intrinsic :: support_projecteuler

  ! require all variables to be explicitly declared
  implicit none

  ! accessibility of <subroutine>s and <function>s in this <module>
  public  :: Problem0007_02       ! interface
  private :: Problem0007_02_INT16 ! function
  private :: Problem0007_02_INT32 ! function
  private :: Problem0007_02_INT64 ! function

  ! <interface>s for this <program>
  interface Problem0007_02
    module procedure Problem0007_02_INT16
    module procedure Problem0007_02_INT32
    module procedure Problem0007_02_INT64
  end interface

  ! <subroutine>s and <function>s in this <module> is below
  contains

  function Problem0007_02_INT16 ( limit ) result ( target )

    ! arguments for this <function>
    integer( kind=INT16 ), intent(in) :: limit

    ! return value of this <function>
    integer( kind=INT16 ) :: target

    ! support variables for this <function>
    integer( kind=INT16 ) :: itr, count


    ! STEP.01
    ! initialize the variable
    itr   = 1_INT16
    count = 0_INT16

    ! STEP.02
    ! search the `limit`-th prime number
    do while ( count .lt. limit )

      ! update the iterator
      itr = itr + 1_INT16

      ! judge the `itr` whetger it is a prime number
      if ( determine_isprime ( itr ) ) count = count + 1_INT16

    end do

    ! STEP.03
    ! determine the return value
    target = itr

    ! STEP.END
    return

  end function Problem0007_02_INT16

  function Problem0007_02_INT32 ( limit ) result ( target )

    ! arguments for this <function>
    integer( kind=INT32 ), intent(in) :: limit

    ! return value of this <function>
    integer( kind=INT32 ) :: target

    ! support variables for this <function>
    integer( kind=INT32 ) :: itr, count


    ! STEP.01
    ! initialize the variable
    itr   = 1_INT32
    count = 0_INT32

    ! STEP.02
    ! search the `limit`-th prime number
    do while ( count .lt. limit )

      ! update the iterator
      itr = itr + 1_INT32

      ! judge the `itr` whetger it is a prime number
      if ( determine_isprime ( itr ) ) count = count + 1_INT32

    end do

    ! STEP.03
    ! determine the return value
    target = itr

    ! STEP.END
    return

  end function Problem0007_02_INT32

  function Problem0007_02_INT64 ( limit ) result ( target )

    ! arguments for this <function>
    integer( kind=INT64 ), intent(in) :: limit

    ! return value of this <function>
    integer( kind=INT64 ) :: target

    ! support variables for this <function>
    integer( kind=INT64 ) :: itr, count


    ! STEP.01
    ! initialize the variable
    itr   = 1_INT64
    count = 0_INT64

    ! STEP.02
    ! search the `limit`-th prime number
    do while ( count .lt. limit )

      ! update the iterator
      itr = itr + 1_INT64

      ! judge the `itr` whetger it is a prime number
      if ( determine_isprime ( itr ) ) count = count + 1_INT64

    end do

    ! STEP.03
    ! determine the return value
    target = itr

    ! STEP.END
    return

  end function Problem0007_02_INT64

end module Problem0007
! ------------------------------------------------------------------------------------------------------------------------------- !
! gfortran ^                                                                                                                      !
! -c ^                                                                                                                            !
! -Wall -pedantic -fbounds-check -O -Wuninitialized -ffpe-trap=invalid,zero,overflow -fbacktrace ^                                !
! GitHub\Fortran\ProjectEuler\Problem0007\Problem0007_01.f08 ^                                                                 !
! GitHub\Fortran\ProjectEuler\Problem0007\main.f08                                                                             !
!                                                                                                                                 !
! gfortran ^                                                                                                                      !
! -o Problem0007_01.exe ^                                                                                                         !
! -Wall -pedantic -fbounds-check -O -Wuninitialized -ffpe-trap=invalid,zero,overflow -fbacktrace ^                                !
! D:\gfortran\Problem0007_01.o ^                                                                                                  !
! D:\gfortran\main.o                                                                                                              !
! ------------------------------------------------------------------------------------------------------------------------------- !