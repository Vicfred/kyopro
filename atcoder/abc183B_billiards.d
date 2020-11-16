// Vicfred
// https://atcoder.jp/contests/abc183/tasks/abc183_b
// math
import std.stdio;

void main() {
    real x1, x2, y1, y2;
    readf("%s %s %s %s\n", &x1, &y1, &x2, &y2);
    real ans = (x1*y2 + x2*y1)/(y1 + y2);
    writefln("%.9f", ans);
}

