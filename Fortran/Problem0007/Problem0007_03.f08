! ------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler] 0007                                                                                                            !
! https://projecteuler.net/problem=7                                                                                              !
! http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%207                                                        !
! ------------------------------------------------------------------------------------------------------------------------------- !

pure function Problem0007_03_INT32 (limit) result(target_PrimeNum)

  ! arguments for this <function>
  integer(kind=INT32), intent(in) :: limit

  ! return value of this <function>
  integer(kind=INT32) :: target_PrimeNum

  ! variables for this <function>
  integer(kind=INT32)              :: itr_ntrl, num_PrimeNums
  integer(kind=INT32), allocatable :: list_PrimeNums(:)

  ! STEP.01
  ! allocate the array to store the prime numbers
  allocate( list_PrimeNums(1:limit) )

  ! STEP.02
  ! initialize the list of the prime numbers
  itr_ntrl          = 1_INT32
  list_PrimeNums(1) = 2_INT32
  num_PrimeNums     = 1_INT32

  ! STEP.03
  ! calculate the `limit`-th prime number
  do while (num_PrimeNums .lt. limit)

    itr_ntrl = itr_ntrl + 2_INT32

    if( IsPrime_list(target=itr_ntrl, list=list_PrimeNums(1:num_PrimeNums)) ) then
      num_PrimeNums                 = num_PrimeNums + 1_INT32
      list_PrimeNums(num_PrimeNums) = itr_ntrl
    else
      continue
    end if

  end do

  ! STEP.04
  ! determine the return value of this <function>
  target_PrimeNum = list_PrimeNums(limit)

  ! STEP.05
  ! allocate the array to store the prime numbers
  deallocate( list_PrimeNums )
  
  ! STEP.END
  return

end function Problem0007_03_INT32

pure function Problem0007_03_INT64 (limit) result(target_PrimeNum)

  ! arguments for this <function>
  integer(kind=INT64), intent(in) :: limit

  ! return value of this <function>
  integer(kind=INT64) :: target_PrimeNum

  ! variables for this <function>
  integer(kind=INT64)              :: itr_ntrl, num_PrimeNums
  integer(kind=INT64), allocatable :: list_PrimeNums(:)

  ! STEP.01
  ! allocate the array to store the prime numbers
  allocate( list_PrimeNums(1:limit) )

  ! STEP.02
  ! initialize the list of the prime numbers
  itr_ntrl          = 1_INT64
  list_PrimeNums(1) = 2_INT64
  num_PrimeNums     = 1_INT64

  ! STEP.03
  ! calculate the `limit`-th prime number
  do while (num_PrimeNums .lt. limit)

    itr_ntrl = itr_ntrl + 2_INT64

    if( IsPrime_list(target=itr_ntrl, list=list_PrimeNums(1:num_PrimeNums)) ) then
      num_PrimeNums                 = num_PrimeNums + 1_INT64
      list_PrimeNums(num_PrimeNums) = itr_ntrl
    else
      continue
    end if

  end do

  ! STEP.04
  ! determine the return value of this <function>
  target_PrimeNum = list_PrimeNums(limit)

  ! STEP.05
  ! allocate the array to store the prime numbers
  deallocate( list_PrimeNums )
  
  ! STEP.END
  return

end function Problem0007_03_INT64

! -------------------------------------------------------------------------------------------------------------------------------- !
! End of Source Code                                                                                                               !
! -------------------------------------------------------------------------------------------------------------------------------- !
