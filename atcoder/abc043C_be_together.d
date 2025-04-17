// vicfred
// https://atcoder.jp/contests/abc043/tasks/arc059_a
// brute force
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    int n = readln.chomp.to!int;
    int[] a = readln.split.map!(to!int).array;

    long minima = long.max;
    for(int i = -100; i <= 100; i++) {
        long cost = 0;
        foreach(item; a)
            cost += (item - i)^^2;
        minima = min(minima, cost);
    }

    minima.writeln;
}

