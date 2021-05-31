// Vicfred
// https://codeforces.com/contest/1472/problem/A
// math, simulation
import std.algorithm;
import std.array;
import std.conv;
import std.math;
import std.stdio;
import std.string;

void main() {
    int t = readln.chomp.to!int;
while(t--) {
    long w, h, n;
    readf("%s %s %s\n", &w, &h, &n);

    int x = 1;
    while(w % 2 == 0) {
        w /= 2;
        x *= 2;
    }

    int y = 1;
    while(h % 2 == 0) {
        h /= 2;
        y *= 2;
    }

    if(x*y >= n)
        "Yes".writeln;
    else
        "No".writeln;
}
}

