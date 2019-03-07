! ------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler] 0007                                                                                                            !
! https://projecteuler.net/problem=7                                                                                              !
! http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%207                                                        !
! ------------------------------------------------------------------------------------------------------------------------------- !

pure function Problem0007_01_INT32 (limit) result(target_PrimeNum)

  ! arguments for this <function>
  integer(kind=INT32), intent(in) :: limit

  ! return value of this <function>
  integer(kind=INT32) :: target_PrimeNum

  ! variables for this <function>
  integer(kind=INT32) :: itr_ntrl, count_prime

  ! STEP.01
  ! initialize the variables
  itr_ntrl    = 2_INT32
  count_prime = 1_INT32

  ! STEP.02
  ! search the `limit`-th prime number
  do while (count_prime .lt. limit)

    ! STEP.02.01
    ! update the iterator of natural number
    itr_ntrl = itr_ntrl + 1_INT32

    ! STEP.02.02
    ! update the counter of number of the prime number
    if (IsPrime(itr_ntrl)) count_prime = count_prime + 1_INT32

  end do

  ! STEP.03
  ! determine the return value of this <function>
  target_PrimeNum = itr_ntrl

  ! STEP.END
  return

end function Problem0007_01_INT32

pure function Problem0007_01_INT64 (limit) result(target_PrimeNum)

  ! arguments for this <function>
  integer(kind=INT64), intent(in) :: limit

  ! return value of this <function>
  integer(kind=INT64) :: target_PrimeNum

  ! variables for this <function>
  integer(kind=INT64) :: itr_ntrl, count_prime

  ! STEP.01
  ! initialize the variables
  itr_ntrl    = 2_INT64
  count_prime = 1_INT64

  ! STEP.02
  ! search the `limit`-th prime number
  do while (count_prime .lt. limit)

    ! STEP.02.01
    ! update the iterator of natural number
    itr_ntrl = itr_ntrl + 1_INT64

    ! STEP.02.02
    ! update the counter of number of the prime number
    if (IsPrime(itr_ntrl)) count_prime = count_prime + 1_INT64

  end do

  ! STEP.03
  ! determine the return value of this <function>
  target_PrimeNum = itr_ntrl

  ! STEP.END
  return

end function Problem0007_01_INT64

! -------------------------------------------------------------------------------------------------------------------------------- !
! End of Source Code                                                                                                               !
! -------------------------------------------------------------------------------------------------------------------------------- !
