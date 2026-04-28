# uninhm
# https://atcoder.jp/contests/abc405/tasks/abc405_d
# bfs

import queue as qu

def adjacents(i, j, h, w):
    if 0 <= i+1 < h:
        yield (i+1, j, '^')
    if 0 <= i-1 < h:
        yield (i-1, j, 'v')
    if 0 <= j+1 < w:
        yield (i, j+1, '<')
    if 0 <= j-1 < w:
        yield (i, j-1, '>')

h, w = map(int, input().split())
s = [list(input()) for _ in range(h)]

d = [[float('inf')]*w for _ in range(h)]

q = qu.Queue()

for i in range(h):
    for j in range(w):
        if s[i][j] == 'E':
            q.put((i, j))
            d[i][j] = 0

while not q.empty():
    (i, j) = q.get()
    for (k, l, direc) in adjacents(i, j, h, w):
        if s[k][l] == '#': continue
        if d[i][j]+1 < d[k][l]:
            d[k][l] = d[i][j]+1
            s[k][l] = direc
            q.put((k, l))

for line in s:
    print(''.join(line))
