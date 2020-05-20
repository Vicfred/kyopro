# unihernandez22
# https://atcoder.jp/contests/abc166/tasks/abc166_e
# hashing, math, implementation
n = int(input())
a = list(map(int, input().split()))

x = []
y = {}

for i, elem in enumerate(a):
    x.append(i+a[i])
    y[i-a[i]] = y.get(i-a[i], 0) + 1

ans = 0

for i in x:
    ans += y.get(i, 0)

print(ans)

