# uninhm
# https://atcoder.jp/contests/abc455/tasks/abc455_d
# simulation, linked list

n, q = map(int, input().split())

child = [0]*(n+1)
parent = [0]*(n+1)
for _ in range(q):
    c, p = map(int, input().split())
    child[parent[c]] = 0
    parent[c] = p
    child[p] = c

for i in range(1, n+1):
    if parent[i] == 0:
        size = 1
        cur = i
        while child[cur] != 0:
            size += 1
            cur = child[cur]
        print(size, end=' ')
    else:
        print(0, end=' ')
print()
