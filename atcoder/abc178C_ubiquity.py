# Vicfred & unihernandez22
# https://atcoder.jp/contests/abc178/tasks/abc178_c
# combinatory

n = int(input())
mod = 10**9+7

print((pow(10, n, mod) - 2*pow(9, n, mod) + pow(8, n, mod)) % mod)

