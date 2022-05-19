# uninhm
# https://atcoder.jp/contests/abc237/tasks/abc237_d
# deque

from collections import deque

n = int(input())
s = input()

q = deque([n])
for i in range(n-1, -1, -1):
    if s[i] == 'L':
        q.append(i)
    elif s[i] == 'R':
        q.appendleft(i)

print(*q)
