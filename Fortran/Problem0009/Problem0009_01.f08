! ------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler] 0009                                                                                                            !
! https://projecteuler.net/problem=9                                                                                              !
! http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%209                                                        !
! ------------------------------------------------------------------------------------------------------------------------------- !

function Problem0009_01 (sum_target) result(triplet_target)

  ! arguments for this <function>
  integer( kind=INT64 ), intent(in) :: sum_target
  
  ! return value of this <function>
  type(PythagoreanTriplet) :: triplet_target

  ! variables for this <subroutine>
  integer(kind=INT64) :: itr_a, itr_b, itr_c

  ! STEP.01
  ! initialize the flag
  triplet_target % isfound = .false.

  ! STEP.02
  ! search the target Pythagorean triplet
  do itr_a = 1_INT64, sum_target, 1_INT64 ! loop for integer `a`
  do itr_b = 1_INT64, sum_target, 1_INT64 ! loop for integer `b`
  do itr_c = 1_INT64, sum_target, 1_INT64 ! loop for integer `c`

    ! STEP.03
    ! judge whether the set of integers `a`, `b` and `c` is the Pythagorean triplet
    ! judge whether the set of integers `a`, `b` and `c` is equal to `sum_target`
    if ( itr_a*itr_a + itr_b*itr_b .eq. itr_c*itr_c .and. itr_a + itr_b + itr_c .eq. sum_target ) then

      ! STEP.04
      ! determine the return value
      include "TRUE_END.f08"

      ! STEP.TRUE_END
      return

    end if

  end do
  end do
  end do

  ! STEP.BAD_END
  include "BAD_END.f08"
  return

end function Problem0009_01

! -------------------------------------------------------------------------------------------------------------------------------- !
! End of Source Code                                                                                                               !
! -------------------------------------------------------------------------------------------------------------------------------- !
