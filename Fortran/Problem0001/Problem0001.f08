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
  use, non_intrinsic :: mod_IsMultiple

  ! accessibility of <subroutine>s and <function>s in this <module>
  public  :: show_result
  private :: IsTargetMultiple
  private :: Problem0001_01
  private :: Problem0001_02
  private :: Problem0001_03
  private :: Problem0001_03_sub
  private :: show_result_each


  ! constants for this <module>
  character(len=15, kind=1), parameter, private ::  name_file_0010 = "result_0010.txt"
  character(len=15, kind=1), parameter, private ::  name_file_1000 = "result_1000.txt"


  ! <subroutine>s and <function>s in this <module> is below
  contains


  pure function IsTargetMultiple(target) result(stat)

    ! argument of this <function>
    integer(kind=INT64), intent(in) :: target

    ! return value of this <function>
    logical :: stat

    ! STEP.01
    stat = IsMultiple(target=target, ref=5_INT64) .or. IsMultiple(target=target, ref=3_INT64)

    ! STEP.END
    return

  end function IsTargetMultiple


  ! pure function Problem0001_01 (limit) result(sum)
  include "Problem0001_01.f08"


  ! pure function Problem0001_02 (limit) result(sum)
  include "Problem0001_02.f08"


  ! pure function Problem0001_03 (limit) result(sum)
  include "Problem0001_03.f08"


  ! show the result
  include "show_result.f08"

end module Problem0001

! -------------------------------------------------------------------------------------------------------------------------------- !
! End of Source Code                                                                                                               !
! -------------------------------------------------------------------------------------------------------------------------------- !
