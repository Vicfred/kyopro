// Vicfred
// https://atcoder.jp/contests/abc139/tasks/abc139_c
// implementation
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;

void main() {
    long n;
    readf("%d", &n);
    readln;

    long[] h = 0~readln.split.map!(to!long).array;
    long[] ans = new long[n+1];

    foreach(i; 1..n)
        ans[n-i] = h[n-i] >= h[n-i+1] ? ans[n-i+1] + 1 : 0;
    const long maxima = maxElement(ans);

    maxima.writeln;
}

