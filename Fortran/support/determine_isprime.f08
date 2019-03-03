pure function determine_isprime_INT16 ( target ) result ( stat )

  ! arguments for this <function>
  integer( kind=INT16 ), intent(in) :: target

  ! return value of this <function>
  logical :: stat

  ! variables for this <function>
  integer( kind=INT16 ) :: itr, itr_max

  ! STEP.01
  ! if the `target ` was `1`
  ! => return `false`
  if ( target .eq. 1_INT16 ) then

    stat = .false.; return

  ! STEP.02
  ! if the `target` was less than `4` <=> if the `target` was equal to `2` or `3`
  ! => return `true`
  else if ( target .lt. 4_INT16 ) then

    stat = .true.; return

  ! STEP.03
  ! if the `target` was even number
  ! => return `false`
  else if ( determine_isEven ( target ) ) then

    stat = .false.; return

  ! STEP.04
  ! if the `target` was less than `9` <=> if the `target` was equal to `4` or `6` or `8`
  ! => return `true`
  else if ( target .lt. 4_INT16 ) then

    stat = .true.; return

  ! STEP.05
  ! if the `target` was the multipe of `3`
  ! => return `false`
  else if ( determine_ismultiple ( target= target, base= 3_INT16 ) ) then

    stat = .false.; return

  ! STEP.06
  else

    ! STEP.06.01
    ! calculate the upper limit of iteration
    itr_max = int ( sqrt ( real ( target ) ), kind=INT16 )

    ! STEP.06.02
    ! judge whether `target` is the prime number repeatedly
    do itr = 5, itr_max, 6

      if ( &!
        determine_ismultiple ( target=target, base=itr         ) .or. &!
        determine_ismultiple ( target=target, base=itr+2_INT16 )      &!
      ) then
        stat = .false.; return
      end if

    end do

    ! STEP.06.03
    stat = .true.
    return

  end if


end function determine_isprime_INT16

pure function determine_isprime_INT32 ( target ) result ( stat )

! arguments for this <function>
integer( kind=INT32 ), intent(in) :: target

! return value of this <function>
logical :: stat

! variables for this <function>
integer( kind=INT32 ) :: itr, itr_max

! STEP.01
! if the `target ` was `1`
! => return `false`
if ( target .eq. 1_INT32 ) then

    stat = .false.; return

! STEP.02
! if the `target` was less than `4` <=> if the `target` was equal to `2` or `3`
! => return `true`
else if ( target .lt. 4_INT32 ) then

    stat = .true.; return

! STEP.03
! if the `target` was even number
! => return `false`
else if ( determine_isEven ( target ) ) then

    stat = .false.; return

! STEP.04
! if the `target` was less than `9` <=> if the `target` was equal to `4` or `6` or `8`
! => return `true`
else if ( target .lt. 4_INT32 ) then

    stat = .true.; return

! STEP.05
! if the `target` was the multipe of `3`
! => return `false`
else if ( determine_ismultiple ( target= target, base= 3_INT32 ) ) then

    stat = .false.; return

! STEP.06
else

    ! STEP.06.01
    ! calculate the upper limit of iteration
    itr_max = int ( sqrt ( real ( target ) ), kind=INT32 )

    ! STEP.06.02
    ! judge whether `target` is the prime number repeatedly
    do itr = 5, itr_max, 6

    if ( &!
        determine_ismultiple ( target=target, base=itr         ) .or. &!
        determine_ismultiple ( target=target, base=itr+2_INT32 )      &!
    ) then
        stat = .false.; return
    end if

    end do

    ! STEP.06.03
    stat = .true.
    return

end if


end function determine_isprime_INT32

pure function determine_isprime_INT64 ( target ) result ( stat )

! arguments for this <function>
integer( kind=INT64 ), intent(in) :: target

! return value of this <function>
logical :: stat

! variables for this <function>
integer( kind=INT64 ) :: itr, itr_max

! STEP.01
! if the `target ` was `1`
! => return `false`
if ( target .eq. 1_INT64 ) then

    stat = .false.; return

! STEP.02
! if the `target` was less than `4` <=> if the `target` was equal to `2` or `3`
! => return `true`
else if ( target .lt. 4_INT64 ) then

    stat = .true.; return

! STEP.03
! if the `target` was even number
! => return `false`
else if ( determine_isEven ( target ) ) then

    stat = .false.; return

! STEP.04
! if the `target` was less than `9` <=> if the `target` was equal to `4` or `6` or `8`
! => return `true`
else if ( target .lt. 4_INT64 ) then

    stat = .true.; return

! STEP.05
! if the `target` was the multipe of `3`
! => return `false`
else if ( determine_ismultiple ( target= target, base= 3_INT64 ) ) then

    stat = .false.; return

! STEP.06
else

    ! STEP.06.01
    ! calculate the upper limit of iteration
    itr_max = int ( sqrt ( real ( target ) ), kind=INT64 )

    ! STEP.06.02
    ! judge whether `target` is the prime number repeatedly
    do itr = 5, itr_max, 6

    if ( &!
        determine_ismultiple ( target=target, base=itr         ) .or. &!
        determine_ismultiple ( target=target, base=itr+2_INT64 )      &!
    ) then
        stat = .false.; return
    end if

    end do

    ! STEP.06.03
    stat = .true.
    return

end if


end function determine_isprime_INT64