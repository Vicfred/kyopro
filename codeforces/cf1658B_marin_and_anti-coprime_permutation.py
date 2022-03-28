# uninhm
# https://codeforces.com/contest/1658/problem/B
# greedy, combinatorics

from math import factorial

MOD = 998244353

t = int(input())

for _ in range(t):
    n = int(input())
    if n % 2 == 1:
        print(0)
    else:
        print(factorial(n//2)**2 % MOD)
