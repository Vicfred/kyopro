# uninhm
# https://atcoder.jp/contests/abc200/tasks/abc200_c
# greedy, modulo

from collections import Counter

n = int(input())
a = [int(i)%200 for i in input().split()]

b = Counter()
ans = 0
for i in reversed(a):
    ans += b[i]
    b[i] += 1

print(ans)
