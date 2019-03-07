! ------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler] 0007                                                                                                            !
! https://projecteuler.net/problem=7                                                                                              !
! http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%207                                                        !
! ------------------------------------------------------------------------------------------------------------------------------- !
program main

  ! <module>s to import
  use, non_intrinsic :: Problem0007

  ! Require all variables to be explicitly declared
  implicit none

  call show_result(     6_INT32)
  call show_result( 10001_INT32)
  call show_result(100001_INT32)
  call show_result(     6_INT64)
  call show_result( 10001_INT64)
  call show_result(100001_INT64)

  ! STEP.END
  call show_reach_end
  
end program main

! -------------------------------------------------------------------------------------------------------------------------------- !
! End of Source Code                                                                                                               !
! -------------------------------------------------------------------------------------------------------------------------------- !
