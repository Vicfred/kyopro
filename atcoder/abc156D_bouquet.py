# Vicfred
# https://atcoder.jp/contests/abc156/tasks/abc156_d
# math
def binpow(a, b, m):
    a %= m
    res = 1
    while b > 0:
        if b & 1:
            res = res * a % m
        a = a * a % m
        b >>= 1
    return res

def binomial(n, k, m):
    x = 1
    y = 1
    for i in range(k):
        x *= n-i
        x %= m
        y *= i+1
        y %= m
    y = binpow(y, m-2, m)
    return (x*y)%m

mod = 10**9+7

n, a, b = list(map(int, input().split()))

print((binpow(2, n, mod) - binomial(n,a, mod) - binomial(n,b, mod) - 1 + mod)%mod)
