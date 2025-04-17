// vicfred
// https://atcoder.jp/contests/dp/tasks/dp_a
// dynamic programming
import std.algorithm;
import std.array;
import std.conv;
import std.math;
import std.stdio;
import std.string;

void main() {
    long n, k;
    readf("%d %d\n", &n, &k);
    const long[] h = 0~readln.split.map!(to!long).array;

    long[] dp = new long[n+1];
    dp.fill(int.max);

    dp[1] = 0;
    for(int i = 2; i <= n; ++i) {
        for(int j = 1; j <= k; ++j) {
            if(i - j >= 0) {
                dp[i] = min(dp[i],
                            dp[i-j] + abs(h[i] - h[i - j]));
            }
        }
    }
    dp[n].writeln;
}

