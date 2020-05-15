// https://codeforces.com/problemset/problem/1307/B
// math
import std.algorithm;
import std.array;
import std.conv;
import std.math;
import std.stdio;
import std.string;

void main() {
    int t = readln.chomp.to!int;
    foreach(_; 0..t) {
        int n, x;
        readf("%s %s\n", &n, &x);

        int[] a = readln.split.map!(to!int).array;
        a.sort();

        if(a.count(x) > 0) {
            1.writeln;
            continue;
        }

        long ans = max(2, ceil(real(x)/a[$-1])).to!long;
        writefln("%s", ans);
    }
}

