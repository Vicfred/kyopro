// Vicfred
// https://atcoder.jp/contests/abc129/tasks/abc129_c
// dynamic programming
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    const long mod = 10^^9 + 7;
    long n, m;
    readf("%s %s\n", &n, &m);

    long[] as = new long[m+1];
    long[] a = new long[n+1];

    foreach(i; 1..m+1) {
        readf("%s\n", &as[i]);
        a[as[i]] = 1;
    }


    long[] dp = new long[n+1];
    dp[0] = 1;
    if(a[1] == 0)
        dp[1] = 1;

    for(int i = 2; i <= n; i++) {
        if(a[i - 1] == 0)
            dp[i] += dp[i - 1];
        dp[i] %= mod;
        if(a[i - 2] == 0)
            dp[i] += dp[i - 2];
        dp[i] %= mod;
    }

    dp[n].writeln;
}

