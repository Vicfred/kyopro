# unihernandez22
# https://atcoder.jp/contests/abc183/tasks/abc183_c
# dfs

n, K = map(int, input().split())

t = list(map(lambda x: list(map(int, input().split())), ['']*n))

q = [(set(), 0, 0)]
ans = 0

while len(q) > 0:
    s, c, k = q.pop()
    s = s.copy()
    s.add(c)

    if len(s) == n:
        ans += k + t[c][0] == K
        continue

    for i in range(n):
        if i not in s:
            q.append((s, i, k + t[c][i]))

print(ans)
