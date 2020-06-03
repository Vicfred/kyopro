// https://codeforces.com/problemset/problem/1/A 
// simple math
import std.stdio;
import std.math;

void main() {
    int n, m, a;
    readf("%d %d %d", &n, &m, &a);
    writefln("%d", cast(ulong)(ceil(double(n)/a)*ceil(double(m)/a)));
}

