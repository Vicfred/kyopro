import itertools as it
import math

n, m, x = map(int, input().split())
C = [list(map(int, input().split())) for _ in range(n)]

cost = math.inf
for comb in it.chain(*(it.combinations(C, r) for r in range(1, n+1))):
  c, *a = map(sum, zip(*comb))
  if c < cost and min(a) >= x:
    cost = c

print(-1 if cost is math.inf else cost)

