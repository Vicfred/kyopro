# uninhm
# https://codeforces.com/problemset/problem/545/C
# dp

n = int(input())
trees = []
for i in range(n):
    x, h = map(int, input().split())
    trees.append((x, h))
trees.sort()
dp = [[0] * 3 for _ in range(n)]
# dp[i][op] = maximum possible cutted trees
# considering the trees from 0 to i (inclusive)
# op = 0: to the left, op = 1: not cut, op = 2: to the right
dp[0][0] = 1
dp[0][1] = 0
dp[0][2] = 1
for i in range(1, n):
    lx, lh = trees[i-1]
    x, h = trees[i]
    dp[i][1] = max(dp[i-1][0], dp[i-1][1])
    dp[i][2] = max(dp[i-1][0], dp[i-1][1]) + 1
    if lx+lh < x-h:
        dp[i][0] = max(dp[i][0], dp[i-1][2] + 1)
    if lx+lh < x:
        dp[i][1] = max(dp[i][1], dp[i-1][2])
        dp[i][2] = max(dp[i][2], dp[i-1][2] + 1)
    if lx < x-h:
        dp[i][0] = max(dp[i][0], dp[i-1][0] + 1)
        dp[i][0] = max(dp[i][0], dp[i-1][1] + 1)

print(dp[-1][2])
