# uninhm
# https://atcoder.jp/contests/abc180/tasks/abc180_c
# math

import math

n = int(input())

divs = set()

for i in range(1, math.ceil(math.sqrt(n))+1):
    if n % i == 0:
        divs.add(i)
        divs.add(n//i)

divs = sorted(list(divs))

for i in divs:
    print(i)
