# uninhm
# https://atcoder.jp/contests/abc194/tasks/abc194_b
# brute force

n = int(input())
employees = [tuple(map(int, input().split())) for _ in range(n)]

ans = float('inf')
for e in employees:
    for f in employees:
        if e is f:
            t = e[0] + e[1]
        else:
            t = max(e[0], f[1])
        ans = min(ans, t)
print(ans)
