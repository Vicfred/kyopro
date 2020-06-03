// https://codeforces.com/problemset/problem/459/B
// combinatorics
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    ulong n = readln.chomp.to!ulong;
    ulong[] b = readln.split.map!(to!ulong).array;
    b.sort;
    
    ulong ways = count(b,b[0])*count(b,b[$-1]);
    ulong maxima = b[$-1]-b[0];

    if(maxima != 0) {
        writefln("%d %d", maxima, ways);
    } else {
        writefln("%d %d", maxima, n*(n-1)/2);
    }
}

