// vicfred
// https://atcoder.jp/contests/hhkb2020/tasks/hhkb2020_c
// data structures
import std.algorithm;
import std.array;
import std.conv;
import std.container;
import std.range;
import std.stdio;
import std.string;

void main() {
    int maxn = 200001;
    auto rbt = redBlackTree(iota(0, maxn));

    int n = readln.chomp.to!int;
    int[] p = readln.split.map!(to!int).array;

    foreach(item; p) {
        rbt.removeKey(item);
        rbt.front().writeln;
    }
}

