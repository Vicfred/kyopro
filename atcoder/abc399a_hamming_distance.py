# Vicfred
# https://atcoder.jp/contests/abc399/tasks/abc399_a
# implementation
n = int(input())
s = input()
t = input()

ans = 0
for i in range(n):
    if s[i] != t[i]:
        ans += 1
print(ans)
