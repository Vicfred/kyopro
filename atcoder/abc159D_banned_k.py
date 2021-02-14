# Vicfred & uninhm
# https://atcoder.jp/contests/abc159/tasks/abc159_d
# math
n = int(input())
a = list(map(int, input().split()))

c = {}

for i in a:
    c[i] = c.get(i, 0) + 1

ways = 0
for i in c:
    ways += c[i]*(c[i]-1)//2

for k in a:
    ans = ways-c[k]+1
    print(ans)

