# uninhm
# https://atcoder.jp/contests/abc209/tasks/abc209_c
# greedy

mod = 10**9+7

n = input()
c = list(map(int, input().split()))
c.sort()

ans = 1
for i, e in enumerate(c):
    ans = ans * (e-i) % mod
print(ans)
