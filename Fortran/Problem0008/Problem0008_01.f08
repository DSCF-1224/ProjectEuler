! ------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler] 0008                                                                                                            !
! https://projecteuler.net/problem=8                                                                                              !
! http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%208                                                        !
! ------------------------------------------------------------------------------------------------------------------------------- !
module Problem0008

  ! <module>s to import
  use, intrinsic :: iso_fortran_env

  ! require all variables to be explicitly declared
  implicit none


  ! accessibility of <subroutine>s and <function>s in this <module>
  public :: Problem0008_01 ! subroutine


  ! constants for this <module>
  character( len=???, kind=1 ), parameter, private :: PATH_DATA = '???\p010_number.txt'

  integer( kind=INT32 ), parameter, private :: DATA_UNIT     =   21
  integer( kind=INT32 ), parameter, private :: NUM_DIGIT_MAX = 1000

  ! <subroutine>s and <function>s in this <module> is below
  contains


  subroutine Problem0008_01( num_digit )

    ! arguments for this <subroutine>
    integer( kind=INT32 ), intent(in) :: num_digit

    ! variables for this <subroutine>
    character( len=NUM_DIGIT_MAX, kind=1 ) :: buf_num_chr
    
    integer( kind=INT64 ) :: buf_num_int(1:NUM_DIGIT_MAX)
    integer( kind=INT64 ) :: product_max, product_buf
    integer( kind=INT32 ) :: itr_elem
    integer( kind=INT32 ) :: itr_start

    ! STEP.01
    ! open the target data file
    open( unit=DATA_UNIT, file=PATH_DATA )

    ! STEP.02
    ! read out the data
    read( unit=DATA_UNIT, fmt=* ) buf_num_chr(:)

    ! STEP.03
    ! close the target data file
    close( unit=DATA_UNIT )

    ! STEP.04
    ! convert the data to the integer
    do itr_elem = 1,NUM_DIGIT_MAX,1
      read( unit=buf_num_chr(itr_elem:itr_elem), fmt='(I1)' ) buf_num_int(itr_elem)
    end do

    ! STEP.05
    ! calcualte the `num_digit` adjacent digits that have the greatest product

      ! STEP.05.01
      ! initialize the variable to store the maximum prodct
      product_max = 0_INT64

      ! STEP.05.02
      ! search the maximum prodct
      do itr_start = 1,NUM_DIGIT_MAX-num_digit+1,1

        ! STEP.05.02.01
        ! initialize the buffer of the prodct
        product_buf = buf_num_int(itr_start)

        ! STEP.05.02.02
        ! calculate the current product
        do itr_elem = 1,num_digit-1,1
          product_buf = product_buf * buf_num_int(itr_start+itr_elem)
        end do

        ! STEP.05.02.03
        ! update the return vaiue
        if ( product_max .lt. product_buf ) product_max = product_buf

      end do

    ! STEP.06
    ! output the result
    write( unit=OUTPUT_UNIT, fmt='(I0)', advance='yes' ) product_max

    ! STEP.END
    return

  end subroutine Problem0008_01

end module Problem0008
! ------------------------------------------------------------------------------------------------------------------------------- !
! gfortran ^                                                                                                                      !
! -c ^                                                                                                                            !
! -Wall -pedantic -fbounds-check -O -Wuninitialized -ffpe-trap=invalid,zero,overflow -fbacktrace ^                                !
! GitHub\Fortran\ProjectEuler\Problem0008\Problem0008_01.f08 ^                                                                 !
! GitHub\Fortran\ProjectEuler\Problem0008\main.f08                                                                             !
!                                                                                                                                 !
! gfortran ^                                                                                                                      !
! -o Problem0008_01.exe ^                                                                                                         !
! -Wall -pedantic -fbounds-check -O -Wuninitialized -ffpe-trap=invalid,zero,overflow -fbacktrace ^                                !
! D:\gfortran\Problem0008_01.o ^                                                                                                  !
! D:\gfortran\main.o                                                                                                              !
! ------------------------------------------------------------------------------------------------------------------------------- !