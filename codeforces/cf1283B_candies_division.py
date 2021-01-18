# uninhm
# https://codeforces.com/contest/1283/problem/B
# math

t = int(input())
for _ in range(t):
    n, k = map(int, input().split())
    print(min(n//k*k+k//2, n))
