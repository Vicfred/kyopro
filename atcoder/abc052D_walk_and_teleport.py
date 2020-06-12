# unihernandez22
# https://atcoder.jp/contests/abc052/tasks/arc067_b
# greedy

n, a, b = map(int, input().split())
x = list(map(int, input().split()))

ans = 0
for i in range(1, len(x)):
  ans += min(b, (x[i]-x[i-1])*a)

print(ans)
