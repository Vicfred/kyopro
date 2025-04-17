// vicfred
// https://atcoder.jp/contests/abc178/tasks/abc178_d
// math
import std.stdio;

void main() {
    const int mod = 10^^9+7;
    int n;
    readf("%s", &n);

    int[] dp = new int[n+1];

    dp[0] = 1;

    for(int i = 3; i <= n; i++)
        dp[i] = 1;

    for(int i = 3; i <= n; i++) {
        for(int j = 3; j <= i-3; j++) {
            dp[i] += dp[j];
            dp[i] %= mod;
        }
        dp[i] %= mod;
    }

    dp[n].writeln;
}

