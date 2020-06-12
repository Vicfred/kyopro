// Vicfred
// https://atcoder.jp/contests/abc052/tasks/arc067_b
// greedy
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    long n, a, b;
    readf("%s %s %s", &n, &a, &b);
    readln;

    long[] x = readln.split.map!(to!long).array;

    long answer = 0;
    for(int i = 1; i < n; ++i)
        answer += min(b, (x[i]-x[i-1])*a);

    answer.writeln;
}

