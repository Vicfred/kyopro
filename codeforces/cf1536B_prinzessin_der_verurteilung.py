# uninhm
# https://codeforces.com/contest/1536/problem/B
# brute force, bfs

from collections import deque

t = int(input())

for _ in range(t):
    n = int(input())
    s = input()
    a = set()
    for k in range(1, 4):
        for i in range(n-k+1):
            a.add(s[i:i+k])
    abc = 'abcdefghijklmnopqrstuvwxyz'
    b = deque(abc)
    while len(b) > 0:
        p = b.popleft()
        if p not in a:
            print(p)
            break
        for l in abc:
            b.append(p + l)
