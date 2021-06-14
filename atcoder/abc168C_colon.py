# uninhm
# https://atcoder.jp/contests/abc168/tasks/abc168_c
# math
 
from math import pi, cos
 
a, b, h, m = map(int, input().split())
x = pi/6
y = pi/30
z = x/60
C = abs(x*h+z*m - y*m)
print(f"{(a**2 + b**2 - 2 * a*b * cos(C))**2**-1:.20f}")
