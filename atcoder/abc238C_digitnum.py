# uninhm
# https://atcoder.jp/contests/abc238/tasks/abc238_c
# math

from math import log10

n = int(input())
fln = int(log10(n))
MOD = 998244353

s = 0
for i in range(1, fln + 1):
    s += 10**(2*(i-1))
s = (s * 9) + (n - 10**fln + 1) * 10**(fln)

ans = (n*(n+1)//2 + n - s) % MOD

print(ans)
