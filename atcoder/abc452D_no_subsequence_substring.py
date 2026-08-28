# uninhm
# https://atcoder.jp/contests/abc452/tasks/abc452_d
# dp

s = input()
t = input()

n = len(s)
m = len(t)

dp = [[0]*(m+1) for _ in range(n+1)]

dp[0][0] = 1

for i in range(1, len(s)+1):
    dp[i][0] = i+1
    for j in range(1, len(t)+1):
        if s[i-1] == t[j-1]:
            dp[i][j] = dp[i-1][j-1]
        else:
            dp[i][j] = dp[i-1][j]

print(n*(n+1)//2 - sum(dp[i][m] for i in range(1, n+1)))
