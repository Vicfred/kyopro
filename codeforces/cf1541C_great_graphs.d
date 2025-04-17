// vicfred
// https://codeforces.com/contest/1541/problem/C
//
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    int t = readln.chomp.to!int;

while(t--) {
    int n = readln.chomp.to!int;
    long[] d = readln.split.map!(to!long).array;
    d.sort;
    long ans = d[n - 1];
    long node = 0L;
    for(int i = 0; i < n; ++i) {
        ans -= d[i] * i - node;
        node += d[i];
    }
    ans.writeln;
}
}
