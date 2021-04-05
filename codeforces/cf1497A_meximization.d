// Vicfred
// https://codeforces.com/contest/1497/problem/A
// greedy
import std.algorithm;
import std.array;
import std.conv;
import std.container;
import std.stdio;
import std.string;

void main() {
    int t = readln.chomp.to!int;

while(t--) {
    int n = readln.chomp.to!int;
    int[] a = readln.split.map!(to!int).array;

    auto unique = redBlackTree(a);
    auto dups = redBlackTree!true(a);

    foreach(number; unique) {
        writef("%s ", number);
        dups.removeKey(number);
    }
    foreach(number; dups) {
        writef("%s ", number);
    }
    "".writeln;
}
}

