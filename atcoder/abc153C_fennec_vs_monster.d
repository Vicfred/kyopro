// vicfred
// https://atcoder.jp/contests/abc153/tasks/abc153_c
// greedy
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    long n, k;
    readf("%s %s", &n, &k);
    readln;

    long[] h = readln.split.map!(to!long).array;
    h.sort!("a > b");

    if(k >= n)
        0.writeln;
    else
        sum(h[k..$]).writeln;
}

