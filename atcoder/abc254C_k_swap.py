# uninhm
# https://atcoder.jp/contests/abc254/tasks/abc254_c
# greedy

from collections import Counter

n, k = map(int, input().split())
a = list(map(int, input().split()))

c = Counter()
for i, e in enumerate(a):
    c[(e, i%k)] += 1

a.sort()
for i, e in enumerate(a):
    if c[(e, i%k)] == 0:
        print("No")
        break
    c[(e, i%k)] -= 1
else:
    print("Yes")
