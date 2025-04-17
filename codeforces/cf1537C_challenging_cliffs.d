// vicfred
// https://codeforces.com/contest/1537/problem/C
// greedy
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    long t = readln.chomp.to!long;

while(t--) {
    int n = readln.chomp.to!int;
    long[] h = readln.split.map!(to!long).array;

    h.sort;

    if(n == 2) {
        writefln("%s %s", h[0], h[1]);
        continue;
    }

    int idx = 0;
    long minima = long.max;

    for(int i = 0; i < n - 1; ++i) {
        if(h[i + 1] - h[i] < minima) {
            minima = h[i + 1] - h[i];
            idx = i + 1;
        }
    }
    for(int i = idx; i < n; ++i) {
        writef("%s ", h[i]);
    }
    for(int i = 0; i < idx; ++i) {
        writef("%s ", h[i]);
    }
    "".writeln;
}
}
