// Vicfred
// https://atcoder.jp/contests/abc161/tasks/abc161_a
// simulation
import std.algorithm;
import std.stdio;

void main() {
    int a, b, c;
    readf("%s %s %s\n", &a, &b, &c);
    swap(a,b);
    swap(a,c);
    writefln("%s %s %s", a, b, c);
}

