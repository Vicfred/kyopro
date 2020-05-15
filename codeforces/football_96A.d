// https://codeforces.com/problemset/problem/96/A
// implementation
import std.algorithm;
import std.range;
import std.stdio;

void main() {
    ((readln.group.any!(x => x[1] >= 7))? "YES" : "NO").writeln;
}

