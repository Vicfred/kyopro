// vicfred
// https://atcoder.jp/contests/arc105/tasks/arc105_a
// greedy
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    int[] a = readln.split.map!(to!int).array;
    a.sort;

    if(a[3] == a[0] + a[1] + a[2] ||
       a[0] + a[3] == a[1] + a[2])
        "Yes".writeln;
    else
        "No".writeln;
}

