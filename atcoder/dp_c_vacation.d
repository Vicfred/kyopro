// vicfred
// https://atcoder.jp/contests/dp/tasks/dp_c
// dynamic programming
import std.algorithm;
import std.array;
import std.conv;
import std.math;
import std.stdio;
import std.string;

void main() {
    const long n = readln.chomp.to!long;
    long[] a = new long[n+1];
    long[] b = new long[n+1];
    long[] c = new long[n+1];

    foreach(i; 1..n+1)
        readf("%s %s %s\n", &a[i], &b[i], &c[i]);

    long[][] dp = new long[][](n+1, 4);

    dp[1][1] = max(a[1], b[1], c[1]);
    dp[1][2] = max(a[1], b[1], c[1]);
    dp[1][3] = max(a[1], b[1], c[1]);

    for(int i = 2; i <= n; ++i) {
        dp[i][1] = max(
                dp[i-1][2] + b[i],
                dp[i-1][3] + c[i]);
        dp[i][2] = max(
                dp[i-1][1] + a[i],
                dp[i-1][3] + c[i]);
        dp[i][3] = max(
                dp[i-1][1] + a[i],
                dp[i-1][2] + b[i]);
    }

    const long ans = max(dp[n][1], dp[n][2], dp[n][3]);
    ans.writeln;
}
