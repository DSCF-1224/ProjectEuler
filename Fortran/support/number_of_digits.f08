pure function number_of_digits_INT16 (target, kind)

  ! arguments for this ⟨function⟩
  integer (kind=INT16), intent (in) :: target
  integer,              intent (in) :: kind

  number_of_digits_INT16 = int (log10 ( real( target, kind=REAL32)), kind=kind) + 1_INT16
  return

end function number_of_digits_INT16


pure function number_of_digits_INT32 (target, kind)

  ! arguments for this ⟨function⟩
  integer (kind=INT32), intent (in) :: target
  integer,              intent (in) :: kind

  number_of_digits_INT32 = int (log10 ( real( target, kind=REAL32)), kind=kind) + 1_INT32
  return

end function number_of_digits_INT32


pure function number_of_digits_INT64 (target, kind)

  ! arguments for this ⟨function⟩
  integer (kind=INT64), intent (in) :: target
  integer,              intent (in) :: kind

  number_of_digits_INT64 = int (log10 ( real( target, kind=REAL32)), kind=kind) + 1_INT64
  return

end function number_of_digits_INT64

