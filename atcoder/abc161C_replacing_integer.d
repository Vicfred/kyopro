// Vicfred
// https://atcoder.jp/contests/abc161/tasks/abc161_c
// math
import std.algorithm;
import std.math;
import std.stdio;

void main() {
    long n, k;
    readf("%s %s\n", &n, &k);

    long res = n%k;

    long minima = min(res, k-res);

    minima.writeln;
}

