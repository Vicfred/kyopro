# uninhm
# https://atcoder.jp/contests/abc185/tasks/abc185_c
# combinatorics

from math import factorial

l = int(input())

semi_factorial = 1
for i in range(l-1, l-12, -1):
    semi_factorial *= i

print(semi_factorial // factorial(11))
