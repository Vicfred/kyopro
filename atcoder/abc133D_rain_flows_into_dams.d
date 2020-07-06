// Vicfred
// https://atcoder.jp/contests/abc133/tasks/abc133_d
// math, implementation
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    const long n = readln.chomp.to!long;
    const long[] as = 0~readln.split.map!(to!long).array;

    long[] ms = new long[n+1];

    const long water = sum(as);
    long dams = 0;

    for(int i = 2; i <= n-1; i += 2)
        dams += as[i];

    ms[1] = water - 2 * dams;
    for(int i = 1; i < n; i++)
        ms[i+1] = 2 * as[i] - ms[i];

    for(int i = 1; i <= n; i++)
        writef("%d ", ms[i]);
    writeln;
}

