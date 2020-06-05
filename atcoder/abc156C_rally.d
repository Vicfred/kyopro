// Vicfred
// https://atcoder.jp/contests/abc156/tasks/abc156_c
// brute force
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    int n = readln.chomp.to!int;
    int[] x = readln.split.map!(to!int).array;

    long minima = 1<<30;
    foreach(p; 1..101) {
        long dist = 0;
        foreach(person; x) {
            dist += (person-p)^^2;
        }
        minima = min(minima, dist);
    }
    minima.writeln;
}

