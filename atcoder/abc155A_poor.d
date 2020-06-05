// Vicfred
// https://atcoder.jp/contests/abc155/tasks/abc155_a
// implementation
import std.algorithm;
import std.conv;
import std.stdio;
import std.container.rbtree;
import std.string;

void main() {
    auto rbt = readln.split.map!(to!int).redBlackTree;
    if(rbt.length == 2)
        "Yes".writeln;
    else
        "No".writeln;
}

