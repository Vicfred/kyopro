# uninhm
# https://atcoder.jp/contests/abc089/tasks/abc089_d
# dp

def diff(a, b):
    return abs(a[0] - b[0]) + abs(a[1] - b[1])

h, w, d = map(int, input().split())

coords = dict()

for i in range(h):
    for j, x in enumerate(map(int, input().split())):
        coords[x] = (i, j)

dp = [0] * (w * h + d + 1)

for l in range(h*w, 0, -1):
    if l+d in coords:
        dp[l] = dp[l+d] + diff(coords[l+d], coords[l])

q = int(input())

for _ in range(q):
    l, r = map(int, input().split())

    print(dp[l] - dp[r])
