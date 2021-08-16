// Vicfred
// https://codeforces.com/contest/1536/problem/A
// greedy, constructive, math
import std.algorithm;
import std.array;
import std.container;
import std.conv;
import std.stdio;
import std.string;

void main() {
    int t = readln.chomp.to!int;

while(t--) {
    int n = readln.chomp.to!int;
    int[] a = readln.split.map!(to!int).array;

    if(a.count!(x => x < 0) > 0) {
        "NO".writeln;
    } else {
        "YES".writeln;
        "101".writeln;
        for(int i = 0; i < 101; ++i)
            writef("%s ", i);
        "".writeln;
    }
}
}
