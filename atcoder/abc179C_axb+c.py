# uninhm
# https://atcoder.jp/contests/abc179/tasks/abc179_c
# math, combinatorics

n = int(input())

ans = 0
for i in range(1, n):
    ans += (n-1)//i

print(ans)
