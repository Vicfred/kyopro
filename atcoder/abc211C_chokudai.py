# uninhm
# https://atcoder.jp/contests/abc211/tasks/abc211_c
# dp

word = "chokudai"
s = input()

dp = [0] + [1]*len(s)
mod = 10**9+7
for l in word:
    for i, e in enumerate(s, start=1):
        if e == l:
            dp[i] = (dp[i-1] + dp[i]) % mod
        else:
            dp[i] = dp[i-1]

print(dp[-1])

