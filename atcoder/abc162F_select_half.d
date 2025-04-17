// vicfred
// https://atcoder.jp/contests/abc162/tasks/abc162_f
// dynamic programming, cumulative sum
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    long n = readln.chomp.to!long;
    long[] b = readln.split.map!(to!long).array;
    long[] a;
    a ~= 0;
    a ~= b;

    long[] cumulative = new long[n+1];
    long[] dp = new long[n+1];
    cumulative[1] = a[1];

    for(long i = 3; i <= n; i++)
        cumulative[i] = cumulative[i-2]+a[i];

    for(long i = 2; i <= n; i++) {
        if(i%2 == 1)
            dp[i] = max(dp[i-1], dp[i-2]+a[i]);
        else {
            dp[i] = max(cumulative[i-1], dp[i-2]+a[i]);
        }
    }

    dp[n].writeln;
}

