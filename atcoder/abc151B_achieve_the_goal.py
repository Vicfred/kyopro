# unihernandez22
# https://atcoder.jp/contests/abc151/tasks/abc151_b
# implementation

n, k, m = map(int, input().split())
a = list(map(int, input().split()))

if m*n - sum(a) <= k:
    print(max(m*n-sum(a), 0))
else:
    print(-1)
