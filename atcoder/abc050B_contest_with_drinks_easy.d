// Vicfred
// https://atcoder.jp/contests/abc050/tasks/abc050_b
// simulation
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    long n = readln.chomp.to!long;
    long[] t = 0L~readln.split.map!(to!long).array;
    long m = readln.chomp.to!long;

    long[] p = new long[m+1];
    long[] x = new long[m+1];

    foreach(i; 1..m+1) {
        readf("%s %s\n", &p[i], &x[i]);
    }

    long total = sum(t);

    foreach(i; 1..m+1) {
        writefln("%s", total-t[p[i]]+x[i]);
    }
}

