! ------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler]                                                                                                                 !
! support subrutines and functions                                                                                                !
! ------------------------------------------------------------------------------------------------------------------------------- !
module support_projecteuler

  ! <module>s to import
  use, intrinsic :: iso_fortran_env

  ! require all variables to be explicitly declared
  implicit none

  ! accessibility of <subroutine>s and <function>s in this <module>
  public  :: determine_ismultiple       ! interface
  public  :: determine_isEven           ! interface
  public  :: determine_isOdd            ! interface
  public  :: determine_isprime          ! interface
  private :: determine_ismultiple_INT16 ! function
  private :: determine_ismultiple_INT32 ! function
  private :: determine_ismultiple_INT64 ! function
  private :: determine_isEven_INT16     ! function
  private :: determine_isEven_INT32     ! function
  private :: determine_isEven_INT64     ! function
  private :: determine_isOdd_INT16      ! function
  private :: determine_isOdd_INT32      ! function
  private :: determine_isOdd_INT64      ! function
  private :: determine_isprime_INT16    ! function
  private :: determine_isprime_INT32    ! function
  private :: determine_isprime_INT64    ! function

  ! <interface>s for this <program>
  interface determine_ismultiple
    module procedure determine_ismultiple_INT16
    module procedure determine_ismultiple_INT32
    module procedure determine_ismultiple_INT64
  end interface

  interface determine_isEven
    module procedure determine_isEven_INT16
    module procedure determine_isEven_INT32
    module procedure determine_isEven_INT64
  end interface

  interface determine_isOdd
    module procedure determine_isOdd_INT16
    module procedure determine_isOdd_INT32
    module procedure determine_isOdd_INT64
  end interface

  interface determine_isprime
    module procedure determine_isprime_INT16
    module procedure determine_isprime_INT32
    module procedure determine_isprime_INT64
  end interface
  
  ! <subroutine>s and <function>s in this <module> is below
  contains

  include "determine_isOdd.f08"
  include "determine_isEven.f08"
  include "determine_ismultiple.f08"
  include "determine_isprime.f08"

end module support_projecteuler
