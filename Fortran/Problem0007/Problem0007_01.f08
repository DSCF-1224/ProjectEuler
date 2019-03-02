! ------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler] 0007                                                                                                            !
! https://projecteuler.net/problem=7                                                                                              !
! http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%207                                                        !
! ------------------------------------------------------------------------------------------------------------------------------- !
module Problem0007

  ! <module>s to import
  use, intrinsic :: iso_fortran_env

  ! require all variables to be explicitly declared
  implicit none

  ! accessibility of <subroutine>s and <function>s in this <module>
  private :: Check_IsPrime        ! interface
  public  :: Problem0007_01       ! interface
  private :: Check_IsPrime_INT32  ! function
  private :: Problem0007_01_INT32 ! function

  ! <interface>s for this <program>
  interface Problem0007_01
    module procedure Problem0007_01_INT32
  end interface

  interface Check_IsPrime
    module procedure Check_IsPrime_INT32
  end interface

  ! <subroutine>s and <function>s in this <module> is below
  contains

  function Check_IsPrime_INT32( target, list ) result( status )

    ! arguments for this <function>
    integer( kind= INT32 ), intent(in) :: target
    integer( kind= INT32 ), intent(in) :: list(:)

    ! return value of this <function>
    logical :: status

    ! variables for this <function>
    integer( kind= INT32 ) :: length

    ! support variables for this <function>
    integer( kind= INT32 ) :: itr

    ! STEP.01 !
    length = size( list, dim=1 )

    ! STEP.02 !
    do itr = 1, length, 1
      if( mod( target, list(itr) ) .eq. 0_INT32 ) then
        status = .false.
        return
      end if
    end do

    ! STEP.03 !
    status = .true.
    return

  end function Check_IsPrime_INT32

  function Problem0007_01_INT32( term ) result( target_prime )

    ! arguments for this <function>
    integer( kind= INT32 ), intent(in) :: term

    ! return value of this <function>
    integer( kind= INT32 ) :: target_prime

    ! variables for this <function>
    integer( kind= INT32 ), allocatable :: list_main(:), list_buff(:)

    ! support variables for this <function>
    integer( kind= INT32 ) :: itr_num
    integer( kind= INT32 ) :: itr_term
    integer( kind= INT32 ) :: length

    ! STEP.01 !
    if( allocated( list_main ) ) deallocate( list_main )
    if( allocated( list_buff ) ) deallocate( list_buff )
    itr_num  = 2_INT32
    itr_term = 1_INT32
    allocate( list_main(1:1) )
    list_main(itr_term) = itr_num

    ! STEP.02 !
    do while( itr_term .lt. term )

      itr_num = itr_num + 1_INT32
      length  = size( list_main(:), dim=1 )

      if( Check_IsPrime( target= itr_num, list= list_main(:) ) ) then

        if( allocated( list_buff ) ) deallocate( list_buff )
        allocate( list_buff(1:length) )
        list_buff(:) = list_main(:)

        deallocate( list_main )
        allocate( list_main(1:length+1) )
        list_main(1:length) = list_buff(1:length)
        list_main(length+1) = itr_num
        itr_term            = itr_term + 1_INT32

      end if

    end do

    ! STEP.03 !
    target_prime = maxval( list_main, dim=1 )

    ! STEP.04 !
    if( allocated( list_main ) ) deallocate( list_main )
    if( allocated( list_buff ) ) deallocate( list_buff )
    return

  end function Problem0007_01_INT32

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