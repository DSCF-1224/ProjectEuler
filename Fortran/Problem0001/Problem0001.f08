! -------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler] 0001                                                                                                             !
! https://projecteuler.net/problem=1                                                                                               !
! http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%201                                                         !
! -------------------------------------------------------------------------------------------------------------------------------- !
module Problem0001

  ! <module>s to import
  use,     intrinsic :: iso_fortran_env
  use, non_intrinsic :: support_projecteuler
  use, non_intrinsic :: support_system_clock

  ! accessibility of <subroutine>s and <function>s in this <module>
  public  :: show_result
  private :: determine_istargetmultiple
  private :: Problem0001_01
  private :: Problem0001_02
  private :: Problem0001_03
  private :: Problem0001_03_sub
  private :: show_result_core


  ! <subroutine>s and <function>s in this <module> is below
  contains


  pure function determine_istargetmultiple (target) result (stat)

    ! argument of this <function>
    integer (kind=INT64), intent (in) :: target

    ! return value of this <function>
    logical :: stat

    ! STEP.01/01
    stat = determine_ismultiple (target=target, base=3_INT64)
    stat = determine_ismultiple (target=target, base=5_INT64) .or. stat

    ! STEP.TRUE_END
    return

  end function determine_istargetmultiple


  ! pure function Problem0001_01 (limit) result (sum)
  include "Problem0001_01.f08"


  ! pure function Problem0001_02 (limit) result (sum)
  include "Problem0001_02.f08"


  ! pure function Problem0001_03 (limit) result (sum)
  include "Problem0001_03.f08"


  ! show the result
  include "show_result.f08"

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
