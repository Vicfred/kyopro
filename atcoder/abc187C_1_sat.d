// vicfred
// https://atcoder.jp/contests/abc187/tasks/abc187_c
// data structures, red black tree, basic string manipulation, strings
import std.algorithm;
import std.array;
import std.container;
import std.conv;
import std.stdio;
import std.string;

void main() {
    int N = readln.chomp.to!int;

    auto rbt = new RedBlackTree!string;

    string S;
    for(int i = 0; i < N; ++i) {
        readf("%s\n", &S);
        rbt.insert(S);
    }

    foreach(item; rbt) {
        if(item[0] == '!')
            continue;
        if(('!'~item) in rbt) {
            item.writeln;
            return;
        }
    }

    "satisfiable".writeln;
}

