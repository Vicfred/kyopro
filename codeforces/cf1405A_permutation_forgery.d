// vicfred
// https://codeforces.com/contest/1405/problem/A
// math
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    int t = readln.chomp.to!int;

    while(t--) {
        int n = readln.chomp.to!int;
        int[] p = readln.split.map!(to!int).array;
        p.reverse;
        foreach(x; p)
            writef("%s ", x);
        "".writeln;
    }
}

