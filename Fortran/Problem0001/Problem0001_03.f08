! ------------------------------------------------------------------------------------------------------------------------------- !
! [Project Euler] 0001                                                                                                            !
! https://projecteuler.net/problem=1                                                                                              !
! http://odz.sakura.ne.jp/projecteuler/index.php?cmd=read&page=Problem%201                                                        !
! ------------------------------------------------------------------------------------------------------------------------------- !
  
pure function Problem0001_03_sub ( divisor, limit ) result ( sum )

  ! argument of this <function>
  integer ( kind=INT64 ), intent (in) :: divisor
  integer ( kind=INT64 ), intent (in) :: limit

  ! return value of this <function>
  integer ( kind=INT64 ) :: sum

  ! support variables for this <function>
  integer ( kind=INT64 ) :: num_terms


  ! STEP.01 !
  num_terms = ( limit - 1_INT64 ) / divisor

  ! STEP.02 !
  sum = divisor * num_terms * ( num_terms + 1_INT64 ) / 2_INT64

  ! STEP.END !
  return

end function Problem0001_03_sub

pure function Problem0001_03 ( limit ) result ( sum )

  ! argument of this <function>
  integer ( kind=INT64 ), intent (in) :: limit

  ! return value of this <function>
  integer ( kind=INT64 ) :: sum


  ! STEP.01 !
  sum =       Problem0001_03_sub ( divisor= 3_INT64, limit=limit )
  sum = sum + Problem0001_03_sub ( divisor= 5_INT64, limit=limit )
  sum = sum - Problem0001_03_sub ( divisor=15_INT64, limit=limit )

  ! STEP.END !
  return

end function Problem0001_03

! -------------------------------------------------------------------------------------------------------------------------------- !
! End of Source Code                                                                                                               !
! -------------------------------------------------------------------------------------------------------------------------------- !
