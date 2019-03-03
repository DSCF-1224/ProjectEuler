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