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
    const long n = readln.chomp.to!long;
    const long[] h = 0~readln.split.map!(to!long).array;

    long[] dp = new long[n+1];
    dp[1] = 0;
    dp[2] = abs(h[2] - h[1]);
    for(int i = 3; i <= n; ++i)
        dp[i] = min(dp[i-1] + abs(h[i] - h[i - 1]),
                    dp[i-2] + abs(h[i] - h[i - 2]));
    dp[n].writeln;
}

