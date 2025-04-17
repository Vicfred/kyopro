// vicfred
// https://atcoder.jp/contests/abc138/tasks/abc138_c
// sorting, greedy
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    long n = readln.chomp.to!long;
    long[] v = readln.split.map!(to!long).array;

    v.sort;

    double answer = v[0];
    for(int i = 1; i < n; i++) {
        answer += double(v[i]);
        answer /= 2.0;
    }

    writefln("%.9f", answer);
}

