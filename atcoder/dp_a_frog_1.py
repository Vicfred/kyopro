# vicfred
# https://atcoder.jp/contests/dp/tasks/dp_a
# dynamic programming
n = int(input())
h = [0]+list(map(int, input().split()))

dp = [0]*(n + 1)
dp[1] = 0
dp[2] = abs(h[2] - h[1])

dp = [0]*(n+1)
for i in range(3, n + 1):
    dp[i] = min(dp[i - 1] + abs(h[i] - h[i - 1]),
                dp[i - 2] + abs(h[i] - h[i - 2])
            )
print(dp[n])

