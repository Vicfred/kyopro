# uninhm
# https://atcoder.jp/contests/abc255/tasks/abc255_c
# math, modulus

x, a, d, n = gets.split.map &:to_i

a, b = [a, a + d*(n-1)].sort
d = d.abs

if x <= a or b <= x
  puts [a-x, x-b].max
else
  m = (x-a)%d
  puts [m, d-m].min
end
