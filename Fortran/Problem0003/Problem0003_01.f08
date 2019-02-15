! ------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler] 0003                                                                                                            !
! https://projecteuler.net/problem=3                                                                                              !
! http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%203                                                        !
! ------------------------------------------------------------------------------------------------------------------------------- !
module Problem0003

  ! <module>s to import
  use,     intrinsic :: iso_fortran_env
  use, non_intrinsic :: support_projecteuler

  ! require all variables to be explicitly declared
  implicit none

  ! accessibility of <subroutine>s and <function>s in this <module>
  public  :: Problem0003_01       ! interface
  public  :: Problem0003_02       ! interface
  public  :: Problem0003_03       ! interface
  private :: Problem0003_01_INT32 ! function
  private :: Problem0003_01_INT64 ! function
  private :: Problem0003_02_INT32 ! function
  private :: Problem0003_02_INT64 ! function
  private :: Problem0003_03_INT32 ! function
  private :: Problem0003_03_INT64 ! function

  ! <interface>s for this <program>
  interface Problem0003_01
    module procedure Problem0003_01_INT32
    module procedure Problem0003_01_INT64
  end interface

  interface Problem0003_02
    module procedure Problem0003_02_INT32
    module procedure Problem0003_02_INT64
  end interface

  interface Problem0003_03
    module procedure Problem0003_03_INT32
    module procedure Problem0003_03_INT64
  end interface

  
  ! <subroutine>s and <function>s in this <module> is below
  contains


  pure function Problem0003_01_INT32( target ) result( factor_last )

    ! argument of this <function>
    integer( kind=INT32 ), intent(in) :: target

    ! return value of this <function>
    integer( kind=INT32 ) :: factor_last

    ! support variables for this <function>
    integer( kind=INT32 ) :: buffer_trgt
    integer( kind=INT32 ) :: factor_crnt


    ! STEP.01 !
    buffer_trgt = target
    factor_crnt = 2_INT32
    factor_last = 1_INT32

    ! STEP.02 !
    do while( buffer_trgt .gt. 1_INT32 )

      if( determine_ismultiple( target= buffer_trgt, base= factor_crnt ) ) then
        factor_last = factor_crnt
        do while( determine_ismultiple( target= buffer_trgt, base= factor_crnt ) )
          buffer_trgt = buffer_trgt / factor_crnt
        end do
      end if

      factor_crnt = factor_crnt + 1_INT32

    end do

    ! STEP.END !
    return

  end function Problem0003_01_INT32

  pure function Problem0003_01_INT64( target ) result( factor_last )

    ! argument of this <function>
    integer( kind=INT64 ), intent(in) :: target

    ! return value of this <function>
    integer( kind=INT64 ) :: factor_last

    ! support variables for this <function>
    integer( kind=INT64 ) :: buffer_trgt
    integer( kind=INT64 ) :: factor_crnt


    ! STEP.01 !
    buffer_trgt = target
    factor_crnt = 2_INT64
    factor_last = 1_INT64

    ! STEP.02 !
    do while( buffer_trgt .gt. 1_INT64 )

      if( determine_ismultiple( target= buffer_trgt, base= factor_crnt ) ) then
        factor_last = factor_crnt
        do while( determine_ismultiple( target= buffer_trgt, base= factor_crnt ) )
          buffer_trgt = buffer_trgt / factor_crnt
        end do
      end if

      factor_crnt = factor_crnt + 1_INT64

    end do

    ! STEP.END !
    return

  end function Problem0003_01_INT64



  pure function Problem0003_02_INT32( target ) result( factor_last )

    ! argument of this <function>
    integer( kind=INT32 ), intent(in) :: target

    ! return value of this <function>
    integer( kind=INT32 ) :: factor_last

    ! support variables for this <function>
    integer( kind=INT32 ) :: buffer_trgt
    integer( kind=INT32 ) :: factor_crnt


    ! STEP.01 !
    buffer_trgt = target
    factor_crnt = 2_INT32

    ! STEP.02 !
    if( determine_ismultiple( target= buffer_trgt, base= factor_crnt ) ) then
      factor_last = factor_crnt
      do while( determine_ismultiple( target= buffer_trgt, base= factor_crnt ) )
        buffer_trgt = buffer_trgt / factor_crnt
      end do
    else
      factor_last = 1_INT32
    end if

    ! STEP.03 !
    factor_crnt = 3_INT32

    ! STEP.04 !
    do while( buffer_trgt .gt. 1_INT32 )

      if( determine_ismultiple( target= buffer_trgt, base= factor_crnt ) ) then
        factor_last = factor_crnt
        do while( determine_ismultiple( target= buffer_trgt, base= factor_crnt ) )
          buffer_trgt = buffer_trgt / factor_crnt
        end do
      end if

      factor_crnt = factor_crnt + 2_INT32

    end do

    ! STEP.END !
    return

  end function Problem0003_02_INT32

  pure function Problem0003_02_INT64( target ) result( factor_last )

    ! argument of this <function>
    integer( kind=INT64 ), intent(in) :: target

    ! return value of this <function>
    integer( kind=INT64 ) :: factor_last

    ! support variables for this <function>
    integer( kind=INT64 ) :: buffer_trgt
    integer( kind=INT64 ) :: factor_crnt


    ! STEP.01 !
    buffer_trgt = target
    factor_crnt = 2_INT64

    ! STEP.02 !
    if( determine_ismultiple( target= buffer_trgt, base= factor_crnt ) ) then
      factor_last = factor_crnt
      do while( determine_ismultiple( target= buffer_trgt, base= factor_crnt ) )
        buffer_trgt = buffer_trgt / factor_crnt
      end do
    else
      factor_last = 1_INT64
    end if

    ! STEP.03 !
    factor_crnt = 3_INT64

    ! STEP.04 !
    do while( buffer_trgt .gt. 1_INT64 )

      if( determine_ismultiple( target= buffer_trgt, base= factor_crnt ) ) then
        factor_last = factor_crnt
        do while( determine_ismultiple( target= buffer_trgt, base= factor_crnt ) )
          buffer_trgt = buffer_trgt / factor_crnt
        end do
      end if

      factor_crnt = factor_crnt + 2_INT64

    end do

    ! STEP.END !
    return

  end function Problem0003_02_INT64



  pure function Problem0003_03_INT32( target ) result( factor_last )

    ! argument of this <function>
    integer( kind=INT32 ), intent(in) :: target

    ! return value of this <function>
    integer( kind=INT32 ) :: factor_last
    integer( kind=INT32 ) :: factor_max

    ! support variables for this <function>
    integer( kind=INT32 ) :: buffer_trgt
    integer( kind=INT32 ) :: factor_crnt


    ! STEP.01 !
    buffer_trgt = target

    ! STEP.02 !
    if( determine_ismultiple( target= buffer_trgt, base= 2_INT32 ) ) then
      factor_last = 2_INT32
      do while( determine_ismultiple( target= buffer_trgt, base= 2_INT32 ) )
        buffer_trgt = buffer_trgt / 2_INT32
      end do
    else
      factor_last = 1_INT32
    end if

    ! STEP.03 !
    factor_crnt = 3_INT32
    factor_max  = nint( sqrt( real( buffer_trgt, kind=REAL64 ) ), kind=INT32 )

    ! STEP.04 !
    do while( buffer_trgt .gt. 1_INT32 .and. factor_crnt .le. factor_max )

      if( determine_ismultiple( target= buffer_trgt, base= factor_crnt ) ) then
        factor_last = factor_crnt
        do while( determine_ismultiple( target=buffer_trgt, base=factor_crnt ) )
          buffer_trgt = buffer_trgt / factor_crnt
        end do
        factor_max = nint( sqrt( real( buffer_trgt, kind=REAL64 ) ), kind=INT32 )
      end if

      factor_crnt = factor_crnt + 2_INT32

    end do

    ! STEP.05 !
    if( buffer_trgt .ne. 1_INT32 ) then
      factor_last = buffer_trgt
    end if

    ! STEP.END !
    return

  end function Problem0003_03_INT32

  pure function Problem0003_03_INT64( target ) result( factor_last )

    ! argument of this <function>
    integer( kind=INT64 ), intent(in) :: target

    ! return value of this <function>
    integer( kind=INT64 ) :: factor_last
    integer( kind=INT64 ) :: factor_max

    ! support variables for this <function>
    integer( kind=INT64 ) :: buffer_trgt
    integer( kind=INT64 ) :: factor_crnt


    ! STEP.01 !
    buffer_trgt = target

    ! STEP.02 !
    if( determine_ismultiple( target= buffer_trgt, base= 2_INT64 ) ) then
      factor_last = 2_INT64
      do while( determine_ismultiple( target= buffer_trgt, base= 2_INT64 ) )
        buffer_trgt = buffer_trgt / 2_INT64
      end do
    else
      factor_last = 1_INT64
    end if

    ! STEP.03 !
    factor_crnt = 3_INT64
    factor_max  = nint( sqrt( real( buffer_trgt, kind=REAL64 ) ), kind=INT64 )

    ! STEP.04 !
    do while( buffer_trgt .gt. 1_INT64 .and. factor_crnt .le. factor_max )

      if( determine_ismultiple( target= buffer_trgt, base= factor_crnt ) ) then
        factor_last = factor_crnt
        do while( determine_ismultiple( target=buffer_trgt, base=factor_crnt ) )
          buffer_trgt = buffer_trgt / factor_crnt
        end do
        factor_max = nint( sqrt( real( buffer_trgt, kind=REAL64 ) ), kind=INT64 )
      end if

      factor_crnt = factor_crnt + 2_INT64

    end do

    ! STEP.05 !
    if( buffer_trgt .ne. 1_INT64 ) then
      factor_last = buffer_trgt
    end if

    ! STEP.END !
    return

  end function Problem0003_03_INT64

end module Problem0003
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
