// Vicfred
// https://atcoder.jp/contests/abc047/tasks/abc047_a
// greedy
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;

void main() {
    int[] candies = readln.split.map!(to!int).array;
    candies.sort;

    if(candies[0]+candies[1] == candies[2])
        "Yes".writeln;
    else
        "No".writeln;
}

