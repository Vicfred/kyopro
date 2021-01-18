# uninhm
# https://atcoder.jp/contests/abc166/tasks/abc166_c
# implementation, graphs
n, m = map(int, input().split())
h = list(map(int, input().split()))

obs = [0]*n

for _ in range(m):
    a, b = map(lambda x: int(x)-1, input().split())
    if h[a] > h[b]:
        obs[b] = 1;
    elif h[b] > h[a]:
        obs[a] = 1;
    else:
        obs[a] = 1;
        obs[b] = 1;

print(obs.count(0))

