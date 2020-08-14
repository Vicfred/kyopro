# unihernandez22
# https://atcoder.jp/contests/abc144/tasks/abc144_d
# binary search, math

import math, strutils, sequtils

proc input: string = stdin.readLine
proc radians(x: float): float = TAU / 360 * x
const print = echo

var
  a, b, x, left, right, areatotal, current: float

(a, b, x) = map(input().split(), parseFloat)

areatotal = a*a*b

if areatotal / 2 == x: print(45.0)
elif x > areatotal/2:
  left = 0.0
  right = 90.0
  while right-left > 0.00000001:
    current = (right+left)/2
    if a^2 * tan(radians(current)) / 2 * a < (areatotal - x):
      left = current
    else:
      right = current
  print(left)
else:
  left = 0.0
  right = 90.0
  while right-left > 0.00000001:
    current = (right+left)/2
    if b^2 * tan(radians(90-current))/2*a > x:
      left = current
    else:
      right = current
  print(left)


