# uninhm
# https://atcoder.jp/contests/abc451/tasks/abc451_d
# sorting, dp

from collections import defaultdict
from copy import deepcopy
from math import log10

pows_of_two = defaultdict(set)

a = 1
digits = int(log10(a))+1
while digits < 10:
    pows_of_two[digits].add(a)
    a *= 2
    digits = int(log10(a))+1


good_ints = deepcopy(pows_of_two)

for d in range(1, 10):
    for i in range(1, d):
        for p in good_ints[i]:
            for q in good_ints[d-i]:
                good_ints[d].add(p*10**(d-i) + q)
    good_ints[d] = list(sorted(good_ints[d]))

n = int(input()) - 1
d = 1
while n >= len(good_ints[d]):
    n -= len(good_ints[d])
    d += 1

print(good_ints[d][n])
