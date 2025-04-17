// vicfred
// https://codeforces.com/contest/1526/problem/A
// greedy, sorting
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
    a.sort;
    for(int i = 0; i < n; ++i) {
        writef("%s %s ", a[i], a[i + n]);
    } "".writeln;
}
}

