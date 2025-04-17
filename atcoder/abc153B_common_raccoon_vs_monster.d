// vicfred
// https://atcoder.jp/contests/abc153/tasks/abc153_b
// greedy
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    int n, h;
    readf("%s %s", &h, &n);
    readln;

    int[] a = readln.split.map!(to!int).array;

    int power = sum(a);

    if(power >= h)
        "Yes".writeln;
    else
        "No".writeln;

}

