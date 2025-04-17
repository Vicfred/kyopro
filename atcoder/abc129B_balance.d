// vicfred
// https://atcoder.jp/contests/abc129/tasks/abc129_b
// brute force
import std.algorithm;
import std.array;
import std.conv;
import std.math;
import std.stdio;
import std.string;

void main() {
    const long n = readln.chomp.to!long;
    const long[] ws = readln.split.map!(to!long).array;

    long[] sum = new long[n];
    sum[0] = ws[0];
    foreach(i; 1..n)
        sum[i] += sum[i - 1] + ws[i];

    long minima = long.max;
    for(int i = 1; i < n; i++) {
        const long left = sum[i - 1];
        const long right = sum[n-1] - sum[i - 1];
        minima = min(minima, abs(left - right));
    }

    minima.writeln;
}

