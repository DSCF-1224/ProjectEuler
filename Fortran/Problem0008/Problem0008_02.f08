! ------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler] 0008                                                                                                            !
! https://projecteuler.net/problem=8                                                                                              !
! http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%208                                                        !
! ------------------------------------------------------------------------------------------------------------------------------- !

function Problem0008_02( num_digit ) result(product_max)

  ! arguments for this <function>
  integer( kind=INT32 ), intent(in) :: num_digit

  ! return value of this <function>
  integer(kind=INT64) :: product_max

  ! variables for this <function>
  character( len=NUM_DIGIT_MAX, kind=1 ) :: buf_num_chr
  
  integer(kind=INT8)  :: buf_num_int(1:NUM_DIGIT_MAX)
  integer(kind=INT64) :: product_buf
  integer(kind=INT32) :: itr_elem
  integer(kind=INT32) :: itr_start

  ! STEP.01
  ! read out the data
  read( unit=DATA_UNIT, fmt=* ) buf_num_chr(:)

  ! STEP.02
  ! convert the data to the integer
  do itr_elem = 1,NUM_DIGIT_MAX,1
    read( unit=buf_num_chr(itr_elem:itr_elem), fmt='(I1)' ) buf_num_int(itr_elem)
  end do

  ! STEP.03
  ! calcualte the `num_digit` adjacent digits that have the greatest product

    ! STEP.03.01
    ! initialize the variable to store the maximum prodct
    product_max = 0_INT64

    ! STEP.03.02
    ! search the maximum prodct
    do itr_start = 1,NUM_DIGIT_MAX-num_digit+1,1

      ! STEP.03.02.01
      ! initialize the buffer of the prodct
      product_buf = buf_num_int(itr_start)

      ! STEP.03.02.02
      ! calculate the current product
      do itr_elem = 1,num_digit-1,1
        product_buf = product_buf * buf_num_int(itr_start+itr_elem)
      end do

      ! STEP.03.02.03
      ! update the return vaiue
      if ( product_max .lt. product_buf ) product_max = product_buf

    end do

  ! STEP.END
  return

end function Problem0008_02

! -------------------------------------------------------------------------------------------------------------------------------- !
! End of Source Code                                                                                                               !
! -------------------------------------------------------------------------------------------------------------------------------- !
