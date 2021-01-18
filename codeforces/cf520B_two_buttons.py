# uninhm
# https://codeforces.com/problemset/problem/520/B
# BFS

n, m = map(int, input().split())

distance = [-1]*10000001
distance[n] = 0
q = [n]

while len(q) > 0:
    u = q.pop(0)
    v = u*2
    x = u-1

    if distance[v] == -1 and v < m*2:
            distance[v] = distance[u] + 1
            q.append(v)

    if distance[x] == -1 and x > 0:
            distance[x] = distance[u] + 1
            q.append(x)

print(distance[m])
