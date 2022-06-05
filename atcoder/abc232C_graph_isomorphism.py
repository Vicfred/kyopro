from collections import Counter

def read_graph(m):
    c = Counter()
    for _ in range(m):
        a, b = map(int, input().split())
        c[a] += 1
        c[b] += 1
    return set(c.values())

n, m = map(int, input().split())
a = read_graph(m)
b = read_graph(m)
if a == b:
    print('Yes')
else:
    print('No')
