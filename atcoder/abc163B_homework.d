// vicfred
// https://atcoder.jp/contests/abc163/tasks/abc163_b
// simulation
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;

void main() {
    long n, m;
    readf("%s %s\n", &n, &m);

    long[] a = readln.split.map!(to!long).array;

    if(n >= sum(a))
        writefln("%s", n-sum(a));
    else
        "-1".writefln;
}

