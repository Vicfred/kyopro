! Vicfred
! https://atcoder.jp/contests/abc397/tasks/abc397_a
! implementation
program main
  implicit none
  real :: X
  
  read(*,*) X
  
  if (X >= 38.0) then
    print *, 1
  else if (X >= 37.5) then
    print *, 2
  else
    print *, 3
  end if
  
end program main
