// Vicfred
// https://atcoder.jp/contests/arc109/tasks/arc109_a
// implementation
import std.algorithm;
import std.stdio;
import std.math;

void main() {
    int a, b, x, y;
    readf("%s %s %s %s\n", &a, &b, &x, &y);

    int w = min(2*x, y);

    a = 2*a;
    b = 2*b + 1;

    int d = abs(b - a);

    int ans = x*(d%2) + (d/2)*w;

    ans.writeln;
}

