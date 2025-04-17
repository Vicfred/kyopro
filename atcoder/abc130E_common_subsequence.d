// vicfred
// https://atcoder.jp/contests/abc130/tasks/abc130_e
// math, combinatorics, counting
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    const long MOD = 10^^9+7;
    long n, m;
    readf("%s %s", &n, &m);
    readln;

    long[] ss = readln.split.map!(to!long).array;
    long[] ts = readln.split.map!(to!long).array;

    long[][] dp = new long[][](n+1, m+1);
    for(int i = 0; i <= n; i++)
        dp[i][0] = 1;
    for(int j = 0; j <= m; j++)
        dp[0][j] = 1;

    for(int i = 1; i <= n; i++) {
        for(int j = 1; j <= m; j++) {
            dp[i][j] = (dp[i - 1][j] + dp[i][j - 1])%MOD;
            if(ss[i-1] != ts[j-1])
                dp[i][j] -= dp[i - 1][j - 1];
            dp[i][j] += MOD;
            dp[i][j] %= MOD;
        }
    }

    dp[n][m].writeln;
}

