# uninhm
# https://atcoder.jp/contests/abc244/tasks/abc244_d
# greedy

s = list(input().split())
t = list(input().split())

x = 0
for i in range(len(s)):
    if s[i] == t[i]:
        x += 1

if x == 1:
    print('No')
else:
    print('Yes')
