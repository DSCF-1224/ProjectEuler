! ------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler] 0006                                                                                                            !
! https://projecteuler.net/problem=6                                                                                              !
! http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%206                                                        !
! ------------------------------------------------------------------------------------------------------------------------------- !
program main

  ! <module>s to import
  use, non_intrinsic :: Problem0006

  ! Require all variables to be explicitly declared
  implicit none


  ! STEP.01
  call show_result( 10_INT32)
  call show_result(100_INT32)
  call show_result( 10_INT64)
  call show_result(100_INT64)

  ! STEP.END
  call show_reach_end
  
end program main

! -------------------------------------------------------------------------------------------------------------------------------- !
! End of Source Code                                                                                                               !
! -------------------------------------------------------------------------------------------------------------------------------- !
