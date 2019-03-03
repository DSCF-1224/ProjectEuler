! for INT16 of <iso_fortran_env>
pure function determine_isEven_INT16 ( target ) result( stat )

  ! arguments for this <function>
  integer( kind=INT16 ), intent(in) :: target

  ! return value of this <function>
  logical :: stat

  ! STEP.TRUE_END
  stat = determine_ismultiple( target= target, base= 2_INT16 )
  return

end function determine_isEven_INT16



! for INT32 of <iso_fortran_env>
pure function determine_isEven_INT32 ( target ) result( stat )

  ! arguments for this <function>
  integer( kind=INT32 ), intent(in) :: target

  ! return value of this <function>
  logical :: stat

  ! STEP.TRUE_END
  stat = determine_ismultiple( target= target, base= 2_INT32 )
  return

end function determine_isEven_INT32



! for INT64 of <iso_fortran_env>
pure function determine_isEven_INT64 ( target ) result( stat )

  ! arguments for this <function>
  integer( kind=INT64 ), intent(in) :: target

  ! return value of this <function>
  logical :: stat

  ! STEP.TRUE_END
  stat = determine_ismultiple( target= target, base= 2_INT64 )
  return

end function determine_isEven_INT64