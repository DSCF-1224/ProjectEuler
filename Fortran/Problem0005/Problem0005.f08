! ------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler] 0005                                                                                                            !
! https://projecteuler.net/problem=5                                                                                              !
! http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%205                                                        !
! ------------------------------------------------------------------------------------------------------------------------------- !
module Problem0005

  ! <module>s to import
  use,     intrinsic :: iso_fortran_env
  use, non_intrinsic :: support_projecteuler
  use, non_intrinsic :: support_system_clock
  use, non_intrinsic :: GCD_LCM
  
  ! require all variables to be explicitly declared
  implicit none
  
  ! accessibility of <subroutine>s and <function>s in this <module>
  private :: Problem0005_RCR  ! function
  private :: Problem0005_IND  ! function
  private :: show_result_core ! subroutine
  public  :: show_result      ! subroutine
  
  
  ! <subroutine>s and <function>s in this <module> is below
  contains
  
  pure function Problem0005_RCR (target) result (lcm)
  
    ! argument of this <function>
    integer (kind=INT64), intent (in) :: target
  
    ! return value of this <function>
    integer (kind=INT64) :: lcm
  
    ! support variables for this <function>
    integer (kind=INT64) :: itr
  
  
    ! STEP.01 !
    lcm = 1_INT64
  
    ! STEP.02 !
    do itr = 2, target, 1
      lcm = LCM_RCR (n1=lcm, n2=itr)
    end do
  
    ! STEP.END !
    return
  
  end function Problem0005_RCR
  
  pure function Problem0005_IND (target) result (lcm)
  
    ! argument of this <function>
    integer (kind=INT64), intent (in) :: target
  
    ! return value of this <function>
    integer (kind=INT64) :: lcm
  
    ! support variables for this <function>
    integer (kind=INT64) :: itr
  
  
    ! STEP.01 !
    lcm = 1_INT64
  
    ! STEP.02 !
    do itr = 2, target, 1
      lcm = LCM_IND (n1=lcm, n2=itr)
    end do
  
    ! STEP.END !
    return
  
  end function Problem0005_IND

  ! show the result
  include "show_result.f08"
  
  end module Problem0005
  ! ------------------------------------------------------------------------------------------------------------------------------- !
  ! gfortran ^                                                                                                                      !
  ! -c ^                                                                                                                            !
  ! -Wall -pedantic -fbounds-check -O -Wuninitialized -ffpe-trap=invalid,zero,overflow -fbacktrace ^                                !
  ! GitHub\Fortran\miniparts\GCD_LCM.f08 ^                                                                                          !
  ! GitHub\Fortran\ProjectEuler\Problem0005\Problem0005_01.f08 ^                                                                    !
  ! GitHub\Fortran\ProjectEuler\Problem0005\main.f08                                                                                !
  !                                                                                                                                 !
  ! gfortran ^                                                                                                                      !
  ! -o Problem0005_01.exe ^                                                                                                         !
  ! -Wall -pedantic -fbounds-check -O -Wuninitialized -ffpe-trap=invalid,zero,overflow -fbacktrace ^                                !
  ! GCD_LCM.o ^                                                                                                                     !
  ! D:\gfortran\Problem0005_01.o ^                                                                                                  !
  ! D:\gfortran\main.o                                                                                                              !
  ! ------------------------------------------------------------------------------------------------------------------------------- !