# Vicfred
# https://atcoder.jp/contests/abc309/tasks/abc309_a
# implementation
from math import ceil
A, B = map(int, input().split())
row_A = ceil(A/3)
row_B = ceil(B/3)
if B - A == 1 and row_A == row_B:
    print("Yes")
else:
    print("No")
