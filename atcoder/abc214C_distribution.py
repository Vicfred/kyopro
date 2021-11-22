# uninhm
# https://atcoder.jp/contests/abc214/tasks/abc214_c
# dp

n = int(input())
s = list(map(int, input().split()))
t = list(map(int, input().split()))

ans = [float('inf')]*n
ans[0] = t[0]
for _ in range(2):
    for i in range(n):
        ans[i] = min(ans[i-1]+s[i-1], t[i])

for i in ans: print(i)
