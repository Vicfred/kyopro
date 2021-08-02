# uninhm
# https://atcoder.jp/contests/abc206/tasks/abc206_c
# implementation

from collections import Counter

n = int(input())
a = list(map(int, input().split()))

c = Counter(a)
ans = 0
for i in a:
    ans += (n - c[i])
print(ans//2)
