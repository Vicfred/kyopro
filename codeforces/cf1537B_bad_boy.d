// Vicfred
// https://codeforces.com/contest/1537/problem/B
// basic math, greedy
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    long t = readln.chomp.to!long;

while(t--) {
    long n, m, i, j;
    readf("%s %s %s %s\n", &n, &m, &i, &j);
    if(m - j > j - 1) {
        writefln("%s %s %s %s", n, 1, 1, m);
    } else {
        writefln("%s %s %s %s", n, m, 1, 1);
    }
}
}
