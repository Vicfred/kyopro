// vicfred
// https://atcoder.jp/contests/abc153/tasks/abc153_e
// dynamic programming
import std.algorithm;
import std.stdio;

void main() {
    long h, n;
    readf("%s %s\n", &h, &n);

    long[] a = new long[n];
    long[] b = new long[n];

    foreach(i; 0..n) {
        readf("%s %s\n", &a[i], &b[i]);
    }

    const long MAXN = 10^^5;
    const long INF = 1<<30;

    long[] dp = new long[MAXN];
    for(long i = 0; i < MAXN; ++i)
        dp[i] = INF;

    dp[0] = 0;

    for(long i = 0; i < n; ++i) {
        for(long hp = 0; hp < h; ++hp) {
            if(dp[hp] < INF)
                dp[hp+a[i]] = min(dp[hp]+b[i], dp[hp+a[i]]);
        }
    }

    long minima = INF;
    for(long i = h; i < MAXN; ++i)
        minima = min(minima, dp[i]);

    minima.writeln;
}

