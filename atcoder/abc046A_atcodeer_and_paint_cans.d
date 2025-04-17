// vicfred
// https://atcoder.jp/contests/abc046/tasks/abc046_a
// simulation, data structures
import std.algorithm;
import std.array;
import std.container;
import std.conv;
import std.stdio;

void main() {
    int[] cans = readln.split.map!(to!int).array;
    auto rbt = redBlackTree(cans);
    rbt.length.writeln;
}

