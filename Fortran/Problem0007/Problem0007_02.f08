! ------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler] 0007                                                                                                            !
! https://projecteuler.net/problem=7                                                                                              !
! http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%207                                                        !
! ------------------------------------------------------------------------------------------------------------------------------- !

pure function Problem0007_02_INT32 (limit) result(target_PrimeNum)

  ! arguments for this <function>
  integer(kind=INT32), intent(in) :: limit

  ! return value of this <function>
  integer(kind=INT32) :: target_PrimeNum

  ! variables for this <function>
  integer(kind=INT32)              :: itr_ntrl, num_primes, len_list
  integer(kind=INT32), allocatable :: list_main(:), list_buff(:)

  ! STEP.01
  ! initialize the variables and list of prime numbers
  if (allocated(list_main)) deallocate(list_main)
  if (allocated(list_buff)) deallocate(list_buff)

  itr_ntrl   = 2_INT32
  num_primes = 1_INT32

  allocate( list_main(1:1) )

  list_main(num_primes) = itr_ntrl

  ! STEP.02
  ! make the list of prime numbers
  do while (num_primes .lt. limit)

    ! STEP.02.01
    ! update the counter
    len_list = num_primes
    itr_ntrl = itr_ntrl + 1_INT32

    ! STEP.02.02
    ! update the list of the prime numbers
    if (IsPrime_list(target=itr_ntrl, list=list_main(:))) then

      ! update the buffer of the list of the prime numbers
      if (allocated(list_buff)) deallocate(list_buff)
        
      ! resize the buffer of the list of the prime numbers
      allocate(list_buff(1:len_list))

      ! copy the list of prime numbers from main to buffer
      list_buff(:) = list_main(:)
      
      ! resize of the main list of the prime numbers
      deallocate(list_main)
      allocate(list_main(1:len_list+1))

      ! update the elements of the main list of the prime numbers
      list_main(1:len_list) = list_buff(1:len_list)
      list_main(len_list+1) = itr_ntrl
      num_primes            = num_primes + 1_INT32

    end if

  end do

  ! STEP.03
  target_PrimeNum = maxval(list_main(:), dim=1)

  ! STEP.04
  if ( allocated(list_main) ) deallocate(list_main)
  if ( allocated(list_buff) ) deallocate(list_buff)

  ! STEP.END
  return

end function Problem0007_02_INT32

pure function Problem0007_02_INT64 (limit) result(target_PrimeNum)

  ! arguments for this <function>
  integer(kind=INT64), intent(in) :: limit

  ! return value of this <function>
  integer(kind=INT64) :: target_PrimeNum

  ! variables for this <function>
  integer(kind=INT64)              :: itr_ntrl, num_primes, len_list
  integer(kind=INT64), allocatable :: list_main(:), list_buff(:)

  ! STEP.01
  ! initialize the variables and list of prime numbers
  if (allocated(list_main)) deallocate(list_main)
  if (allocated(list_buff)) deallocate(list_buff)

  itr_ntrl   = 2_INT64
  num_primes = 1_INT64

  allocate( list_main(1:1) )

  list_main(num_primes) = itr_ntrl

  ! STEP.02
  ! make the list of prime numbers
  do while (num_primes .lt. limit)

    ! STEP.02.01
    ! update the counter
    len_list = num_primes
    itr_ntrl = itr_ntrl + 1_INT64

    ! STEP.02.02
    ! update the list of the prime numbers
    if (IsPrime_list(target=itr_ntrl, list=list_main(:))) then

      ! update the buffer of the list of the prime numbers
      if (allocated(list_buff)) deallocate(list_buff)
        
      ! resize the buffer of the list of the prime numbers
      allocate(list_buff(1:len_list))

      ! copy the list of prime numbers from main to buffer
      list_buff(:) = list_main(:)
      
      ! resize of the main list of the prime numbers
      deallocate(list_main)
      allocate(list_main(1:len_list+1))

      ! update the elements of the main list of the prime numbers
      list_main(1:len_list) = list_buff(1:len_list)
      list_main(len_list+1) = itr_ntrl
      num_primes            = num_primes + 1_INT64

    end if

  end do

  ! STEP.03
  target_PrimeNum = maxval(list_main(:), dim=1)

  ! STEP.04
  if ( allocated(list_main) ) deallocate(list_main)
  if ( allocated(list_buff) ) deallocate(list_buff)

  ! STEP.END
  return

end function Problem0007_02_INT64

! -------------------------------------------------------------------------------------------------------------------------------- !
! End of Source Code                                                                                                               !
! -------------------------------------------------------------------------------------------------------------------------------- !
