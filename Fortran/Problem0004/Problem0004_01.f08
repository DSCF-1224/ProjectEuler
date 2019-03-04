! ------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler] 0004                                                                                                            !
! https://projecteuler.net/problem=4                                                                                              !
! http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%204                                                        !
! ------------------------------------------------------------------------------------------------------------------------------- !

pure function Check_IsPalindromic_int (target) result (IsPalindromic)

  ! argument of this <function>
  integer (kind=INT64), intent(in) :: target

  ! return value of this <function>
  logical :: IsPalindromic

  ! support variables for this <function>
  integer (kind=INT64) :: num_digit
  integer (kind=INT64) :: buf1, buf2
  integer (kind=INT64) :: itr_digit, itr_Max


  ! STEP.01
  ! get the number of the digit of `target`
  num_digit = number_of_digits (target, kind=INT64)

  ! STEP.02 !
  if (determine_isEven (num_digit)) then
    itr_Max =  num_digit / 2_INT64
  else
    itr_Max = (num_digit - 1_INT64) / 2_INT64
  end if

  ! STEP.03
  do itr_digit = 1_INT64, itr_Max, 1_INT64

    buf1 = Pick_ValTargetDigit (target=target, digit=itr_digit                      )
    buf2 = Pick_ValTargetDigit (target=target, digit=num_digit - itr_digit + 1_INT64)

    if (buf1 .eq. buf2) then
      IsPalindromic = .true.
    else
      IsPalindromic = .false.; return ! STEP.BAD_END
    end if

  end do

  ! STEP.TRUE_END
  return

end function Check_IsPalindromic_int


pure function find_largest_palindrome_v01 (digit) result (buf_Palindromic)

  ! argument of this <function>
  integer (kind=INT64), intent (in) :: digit

  ! return value of this ⟨function⟩
  integer (kind=INT64) :: buf_Palindromic

  ! support variables for this <function>
  integer (kind=INT64) :: product
  integer (kind=INT64) :: itr_Max, itr_Min
  integer (kind=INT64) :: itrLv1, itrLv2
  logical              :: IsPalindromic, IsUpdatable


  ! STEP.01
  ! initialize the variables
  itr_Max         = 10_INT64 **   digit - 1_INT64
  itr_Min         = 10_INT64 ** ( digit - 1_INT64 )
  product         =  0_INT64
  buf_Palindromic =  0_INT64

  ! STEP.02
  ! iterate the factors of candidate of palindrome
  do itrLv1 = itr_Max, itr_Min, -1_INT64
  do itrLv2 = itrLv1,  itr_Min, -1_INT64
    
    product = itrLv1 * itrLv2

    if (product .lt. buf_Palindromic) then
      IsUpdatable = .false.
      exit
    else
      IsPalindromic = Check_IsPalindromic (product)
      if (IsPalindromic) then
        buf_Palindromic = product
        IsUpdatable     = .true.
      end if
    end if

  end do
  end do

  ! STEP.END
  return

end function find_largest_palindrome_v01


pure function Pick_ValTargetDigit (target, digit) result (num)

  ! argument of this <function>
  integer (kind=INT64), intent (in) :: target
  integer (kind=INT64), intent (in) :: digit

  ! return value of this <function>
  integer (kind=INT64) :: num

  num = mod (target, 10_INT64 ** digit) / ( 10_INT64 ** ( digit-1_INT64 ) )
  return

end function Pick_ValTargetDigit

! -------------------------------------------------------------------------------------------------------------------------------- !
! End of Source Code                                                                                                               !
! -------------------------------------------------------------------------------------------------------------------------------- !
