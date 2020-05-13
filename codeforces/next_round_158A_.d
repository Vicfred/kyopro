// https://codeforces.com/problemset/problem/158/A
// implementation, simulation
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    int n, k;
    readf("%d %d", &n, &k);
    readln;

    string input = readln;
    int[] a = input.split.map!(x => x.to!int).array;

    a.filter!(x => (x >= a[k-1]) && (x > 0)).count.writeln;
}

