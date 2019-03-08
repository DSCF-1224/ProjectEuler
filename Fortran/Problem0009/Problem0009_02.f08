! ------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler] 0009                                                                                                            !
! https://projecteuler.net/problem=9                                                                                              !
! http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%209                                                        !
! ------------------------------------------------------------------------------------------------------------------------------- !

function Problem0009_02 (sum_target) result(triplet_target)

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
  ! search the Pythagorean triplet `a`, `b` and `c` which a+b+c=`target`
  do itr_a = 1_INT64, sum_target, 1_INT64 ! loop for integer `a`
  
    do itr_b = itr_a+1_INT64, sum_target, 1_INT64 ! loop for integer `b`

      ! STEP.02.01
      ! determine the integer `c`
      itr_c = sum_target - itr_a - itr_b

      ! STEP.02.02
      ! judge whether the integer `c` satisfies the inequality `a < b < c`
      ! if the condition was NOT satisfied -> exit the iteration loop for integer `b`
      if ( itr_b .ge. itr_c ) exit

      ! STEP.02.03
      ! judge whether the set of integers `a`, `b` and `c` was the Pythagorean triplet
      ! if the set was the Pythagorean triplet -> exit the iteration loop for integer `b`
      if ( itr_a*itr_a + itr_b*itr_b .eq. itr_c*itr_c ) then

        ! STEP.03
        ! determine the return value of this function
      	include "TRUE_END.f08"

        ! STEP.TRUE_END
        return

      end if

    end do

    ! STEP.05
    ! judge whether it is possible to exit the loop for integer `a`
    if ( triplet_target % isfound ) exit

  end do

  ! STEP.BAD_END
  include "BAD_END.f08"
  return

end function Problem0009_02

! -------------------------------------------------------------------------------------------------------------------------------- !
! End of Source Code                                                                                                               !
! -------------------------------------------------------------------------------------------------------------------------------- !
