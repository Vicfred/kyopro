// Vicfred
// https://codeforces.com/contest/1543/problem/B
// math, greedy
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
    long A = a.sum % n;
    writefln("%s", A * (n - A));
}
}
