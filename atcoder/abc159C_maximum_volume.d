// Vicfred
// https://atcoder.jp/contests/abc159/tasks/abc159_c
// math
import std.stdio;
import std.string;
import std.conv;

void main() {
    real L = readln.chomp.to!real;
    real ans = (L/3.0)^^3;
    writefln("%.9f", ans);
}

