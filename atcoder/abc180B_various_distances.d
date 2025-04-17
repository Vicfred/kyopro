// vicfred
// https://atcoder.jp/contests/abc180/tasks/abc180_b
// math
import std.algorithm;
import std.array;
import std.conv;
import std.math;
import std.stdio;
import std.string;

void main() {
    long n = readln.chomp.to!long;
    long[] X = readln.split.map!(to!long).array;

    long manhattan = 0L;
    long chebyshev = -1;
    real euclidean = 0.0L;

    foreach(x; X) {
        long y = abs(x);
        manhattan += y;
        euclidean += y*y;
        chebyshev = max(chebyshev, y);
    }

    euclidean = sqrt(euclidean);

    manhattan.writeln;
    writefln("%.12s", euclidean);
    chebyshev.writeln;
}

