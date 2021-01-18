# uninhm
# https://atcoder.jp/contests/abc164/tasks/abc164_c
# dictionary
a = {}
ans = 0

n = int(input())
for _ in range(n):
    i = input()
    ans += a.get(i, 1)
    a[i] = 0

print(ans)

