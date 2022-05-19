# uninhm
# https://atcoder.jp/contests/abc243/tasks/abc243_c
# greedy

from collections import defaultdict

n = int(input())

x = [0] * n
y = [0] * n
for i in range(n):
    x[i], y[i] = map(int, input().split())

s = input()

d = defaultdict(lambda: (float('inf'), -float('inf')))

for i in range(n):
    minx, maxx = d[y[i]]
    if x[i] < maxx and s[i] == 'R' or\
       x[i] > minx and s[i] == 'L':
        print("Yes")
        exit()
    if x[i] < minx and s[i] == 'R':
        minx = x[i]
    if x[i] > maxx and s[i] == 'L':
        maxx = x[i]
    d[y[i]] = (minx, maxx)

print("No")
