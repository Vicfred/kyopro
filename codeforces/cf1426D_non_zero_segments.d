// vicfred
// https://codeforces.com/contest/1426/problem/D
// greedy
import std.algorithm;
import std.array;
import std.container;
import std.conv;
import std.stdio;
import std.string;

void main () {
    long n = readln.chomp.to!long;

    long[] a = readln.split.map!(to!long).array;

    auto rbt = new RedBlackTree!long;
    long prefix = 0L;
    long ans = 0L;

    rbt.insert(0L);

    foreach(x; a) {
        prefix += x;
        if(prefix in rbt) {
            ans += 1L;
            rbt = new RedBlackTree!long;
            rbt.insert(0L);
            prefix = x;
        }
        rbt.insert(prefix);
    }

    ans.writeln;

}

