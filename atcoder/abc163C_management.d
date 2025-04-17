// vicfred
// https://atcoder.jp/contests/abc163/tasks/abc163_c
// map
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    int n = readln.chomp.to!int;
    int[] a = readln.split.map!(to!int).array;

    int[] boss = new int[n+1];

    foreach(person; a)
        boss[person] += 1;

    for(int i = 1; i <= n; i++)
        boss[i].writeln;
}

