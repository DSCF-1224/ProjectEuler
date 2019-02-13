! ------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler]                                                                                                                 !
! support subrutines and functions                                                                                                !
! ------------------------------------------------------------------------------------------------------------------------------- !
module support_projecteuler

  ! <module>s to import
  use, intrinsic :: iso_fortran_env

  ! require all variables to be explicitly declared
  implicit none

  ! accessibility of <subroutine>s and <function>s in this <module>
  public  :: determine_ismultiple       ! interface
  public  :: determine_isEven           ! interface
  public  :: determine_isOdd            ! interface
  private :: determine_ismultiple_INT16 ! function
  private :: determine_ismultiple_INT32 ! function
  private :: determine_ismultiple_INT64 ! function
  private :: determine_isEven_INT16     ! function
  private :: determine_isEven_INT32     ! function
  private :: determine_isEven_INT64     ! function
  private :: determine_isOdd_INT16      ! function
  private :: determine_isOdd_INT32      ! function
  private :: determine_isOdd_INT64      ! function

  ! <interface>s for this <program>
  interface determine_ismultiple
    module procedure determine_ismultiple_INT16
    module procedure determine_ismultiple_INT32
    module procedure determine_ismultiple_INT64
  end interface

  interface determine_isEven
    module procedure determine_isEven_INT16
    module procedure determine_isEven_INT32
    module procedure determine_isEven_INT64
  end interface

  interface determine_isOdd
    module procedure determine_isOdd_INT16
    module procedure determine_isOdd_INT32
    module procedure determine_isOdd_INT64
  end interface
  
  ! <subroutine>s and <function>s in this <module> is below
  contains

! -------------------------------------------------------------------------------------------------------------------------------- !

  pure function determine_ismultiple_INT16 ( target, base ) result( stat )

    ! arguments for this <function>
    integer( kind= INT16 ), intent(in) :: target
    integer( kind= INT16 ), intent(in) :: base

    ! return value of this <function>
    logical :: stat

    ! STEP.TRUE_END
    stat = mod( target, base ) .eq. 0_INT16
    return

  end function determine_ismultiple_INT16


  pure function determine_ismultiple_INT32 ( target, base ) result( stat )

    ! arguments for this <function>
    integer( kind= INT32 ), intent(in) :: target
    integer( kind= INT32 ), intent(in) :: base

    ! return value of this <function>
    logical :: stat

    ! STEP.TRUE_END
    stat = mod( target, base ) .eq. 0_INT32
    return

  end function determine_ismultiple_INT32


  pure function determine_ismultiple_INT64 ( target, base ) result( stat )

    ! arguments for this <function>
    integer( kind= INT64 ), intent(in) :: target
    integer( kind= INT64 ), intent(in) :: base

    ! return value of this <function>
    logical :: stat

    ! STEP.TRUE_END
    stat = mod( target, base ) .eq. 0_INT64
    return

  end function determine_ismultiple_INT64

! -------------------------------------------------------------------------------------------------------------------------------- !

  pure function determine_isEven_INT16 ( target ) result( stat )

    ! arguments for this <function>
    integer( kind= INT16 ), intent(in) :: target

    ! return value of this <function>
    logical :: stat

    ! STEP.TRUE_END
    stat = determine_ismultiple( target= target, base= 2_INT16 )
    return

  end function determine_isEven_INT16


  pure function determine_isEven_INT32 ( target ) result( stat )

    ! arguments for this <function>
    integer( kind= INT32 ), intent(in) :: target

    ! return value of this <function>
    logical :: stat

    ! STEP.TRUE_END
    stat = determine_ismultiple( target= target, base= 2_INT32 )
    return

  end function determine_isEven_INT32


  pure function determine_isEven_INT64 ( target ) result( stat )

    ! arguments for this <function>
    integer( kind= INT64 ), intent(in) :: target

    ! return value of this <function>
    logical :: stat

    ! STEP.TRUE_END
    stat = determine_ismultiple( target= target, base= 2_INT64 )
    return

  end function determine_isEven_INT64

! -------------------------------------------------------------------------------------------------------------------------------- !

  pure function determine_isOdd_INT16 ( target ) result( stat )

    ! arguments for this <function>
    integer( kind= INT16 ), intent(in) :: target

    ! return value of this <function>
    logical :: stat

    ! STEP.TRUE_END
    stat = .not. determine_isEven( target )
    return

  end function determine_isOdd_INT16


  pure function determine_isOdd_INT32 ( target ) result( stat )

    ! arguments for this <function>
    integer( kind= INT32 ), intent(in) :: target

    ! return value of this <function>
    logical :: stat

    ! STEP.TRUE_END
    stat = .not. determine_isEven( target )
    return

  end function determine_isOdd_INT32


  pure function determine_isOdd_INT64 ( target ) result( stat )

    ! arguments for this <function>
    integer( kind= INT64 ), intent(in) :: target

    ! return value of this <function>
    logical :: stat

    ! STEP.TRUE_END
    stat = .not. determine_isEven( target )
    return

  end function determine_isOdd_INT64

end module support_projecteuler
