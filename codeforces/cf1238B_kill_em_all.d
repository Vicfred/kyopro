// https://codeforces.com/problemset/problem/1238/B
// greedy, sortings
import std.algorithm;
import std.container.rbtree;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    int q = readln.chomp.to!int;

    foreach(query; 0..q) {
        int n, r;
        readf("%s %s\n", &n, &r);

        int[] x = readln.split.map!(to!int).array;

        auto monsters = redBlackTree!"a > b"(x);

        int damage = 0;

        while(damage*r < monsters.front()) {
            auto monster = monsters.front();
            monsters.removeFront();
            damage += 1;
        }
        damage.writeln;
    }
}

