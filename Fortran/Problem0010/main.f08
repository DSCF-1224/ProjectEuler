! ------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler] 0010                                                                                                            !
! https://projecteuler.net/problem=10                                                                                             !
! http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%2010                                                       !
! ------------------------------------------------------------------------------------------------------------------------------- !
program main

  ! <module>s to import
  use, non_intrinsic :: Problem0010
  use, non_intrinsic :: support_projecteuler

  ! Require all variables to be explicitly declared
  implicit none


  ! STEP.01
  ! read out the path of the parent folder
  call read_path_folder_parent (path_folder_parent)

  ! STEP.02
  call show_result( 2_INT64 * 10_INT64 ** 6_INT64 )

  ! STEP.END
  call show_reach_end
  
end program main

! -------------------------------------------------------------------------------------------------------------------------------- !
! End of Source Code                                                                                                               !
! -------------------------------------------------------------------------------------------------------------------------------- !
