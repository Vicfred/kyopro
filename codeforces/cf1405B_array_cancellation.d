// Vicfred
// https://codeforces.com/contest/1405/problem/B
// greedy
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    int t = readln.chomp.to!int;

    while(t--) {
        int n = readln.chomp.to!int;
        long[] a = readln.split.map!(to!long).array;

        long ans = long.max;
        long sum = 0;
        foreach(x; a) {
            sum += x;
            ans = min(ans, sum);
        }

        writefln("%s", -ans);
    }
}

