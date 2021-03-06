! ------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler] 0009                                                                                                            !
! https://projecteuler.net/problem=9                                                                                              !
! http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%209                                                        !
! ------------------------------------------------------------------------------------------------------------------------------- !
program main

  ! <module>s to import
  use, non_intrinsic :: Problem0009
  use, non_intrinsic :: support_projecteuler

  ! Require all variables to be explicitly declared
  implicit none


  ! STEP.01
  ! read out the path of the parent folder
  call read_path_folder_parent (path_folder_parent)

  ! STEP.02
  call show_result(  100_INT64 )
  call show_result(  300_INT64 )
  call show_result( 1000_INT64 )
  call show_result( 3000_INT64 )
  
end program main

! -------------------------------------------------------------------------------------------------------------------------------- !
! End of Source Code                                                                                                               !
! -------------------------------------------------------------------------------------------------------------------------------- !
