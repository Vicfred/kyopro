# uninhm
# https://atcoder.jp/contests/abc145/tasks/abc145_c
# implementation

from math import sqrt
from itertools import permutations

n = int(input())
cities = []
for _ in range(n):
    x, y = map(int, input().split())
    cities.append((x, y))

l = 0
s = 0
for p in permutations(cities):
    l += 1
    distance = 0
    for a, b in zip(p[:-1], p[1:]):
        distance += sqrt((a[0]-b[0])**2 + (a[1]-b[1])**2)
    s += distance

print(s/l)
