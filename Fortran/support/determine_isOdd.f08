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