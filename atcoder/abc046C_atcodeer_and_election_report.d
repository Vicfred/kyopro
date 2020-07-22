// Vicfred
// https://atcoder.jp/contests/abc046/tasks/arc062_a
// math
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    long n = readln.chomp.to!long;
    long[] ts;
    long[] as;

    long t = 1;
    long a = 1;
    foreach(_; 0..n) {
        long T, A;
        readf("%s %s\n", &T, &A);
        const long x = max((t + T - 1)/T, (a + A - 1)/A);
        t = x*T;
        a = x*A;
    }

    writefln("%s", t + a);
}

