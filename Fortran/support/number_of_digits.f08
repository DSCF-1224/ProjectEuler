pure function number_of_digits_INT16_to_INT16 (target) result (ndigits)

  ! arguments for this ⟨function⟩
  integer (kind=INT16), intent (in) :: target

  ! return value of this <function>
  integer (kind=INT16) :: ndigits

  ndigits = int (log10 ( real( target, kind=REAL32)), kind=INT16) + 1_INT16
  return

end function number_of_digits_INT16_to_INT16

pure function number_of_digits_INT32_to_INT16 (target) result (ndigits)

  ! arguments for this ⟨function⟩
  integer (kind=INT32), intent (in) :: target

  ! return value of this <function>
  integer (kind=INT16) :: ndigits

  ndigits = int (log10 ( real( target, kind=REAL32)), kind=INT16) + 1_INT16
  return

end function number_of_digits_INT32_to_INT16

pure function number_of_digits_INT64_to_INT16 (target) result (ndigits)

  ! arguments for this ⟨function⟩
  integer (kind=INT64), intent (in) :: target

  ! return value of this <function>
  integer (kind=INT16) :: ndigits

  ndigits = int (log10 ( real( target, kind=REAL32)), kind=INT16) + 1_INT16
  return

end function number_of_digits_INT64_to_INT16

pure function number_of_digits_INT16_to_INT32 (target) result (ndigits)

  ! arguments for this ⟨function⟩
  integer (kind=INT16), intent (in) :: target

  ! return value of this <function>
  integer (kind=INT32) :: ndigits

  ndigits = int (log10 ( real( target, kind=REAL32)), kind=INT16) + 1_INT16
  return

end function number_of_digits_INT16_to_INT32

pure function number_of_digits_INT32_to_INT32 (target) result (ndigits)

  ! arguments for this ⟨function⟩
  integer (kind=INT32), intent (in) :: target

  ! return value of this <function>
  integer (kind=INT32) :: ndigits

  ndigits = int (log10 ( real( target, kind=REAL32)), kind=INT16) + 1_INT16
  return

end function number_of_digits_INT32_to_INT32

pure function number_of_digits_INT64_to_INT32 (target) result (ndigits)

  ! arguments for this ⟨function⟩
  integer (kind=INT64), intent (in) :: target

  ! return value of this <function>
  integer (kind=INT32) :: ndigits

  ndigits = int (log10 ( real( target, kind=REAL32)), kind=INT16) + 1_INT16
  return

end function number_of_digits_INT64_to_INT32

pure function number_of_digits_INT16_to_INT64 (target) result (ndigits)

  ! arguments for this ⟨function⟩
  integer (kind=INT16), intent (in) :: target

  ! return value of this <function>
  integer (kind=INT64) :: ndigits

  ndigits = int (log10 ( real( target, kind=REAL32)), kind=INT16) + 1_INT16
  return

end function number_of_digits_INT16_to_INT64

pure function number_of_digits_INT32_to_INT64 (target) result (ndigits)

  ! arguments for this ⟨function⟩
  integer (kind=INT32), intent (in) :: target

  ! return value of this <function>
  integer (kind=INT64) :: ndigits

  ndigits = int (log10 ( real( target, kind=REAL32)), kind=INT16) + 1_INT16
  return

end function number_of_digits_INT32_to_INT64

pure function number_of_digits_INT64_to_INT64 (target) result (ndigits)

  ! arguments for this ⟨function⟩
  integer (kind=INT64), intent (in) :: target

  ! return value of this <function>
  integer (kind=INT64) :: ndigits

  ndigits = int (log10 ( real( target, kind=REAL32)), kind=INT16) + 1_INT16
  return

end function number_of_digits_INT64_to_INT64
