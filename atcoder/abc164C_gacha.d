// vicfred
// https://atcoder.jp/contests/abc164/tasks/abc164_c
// set
import std.conv;
import std.stdio;
import std.container.rbtree;
import std.string;

void main() {
    int n = readln.chomp.to!int;

    auto rbt = redBlackTree!string;

    while(n--) {
        string s = readln.chomp;
        rbt.insert(s);
    }

    rbt.length.writeln;
}

