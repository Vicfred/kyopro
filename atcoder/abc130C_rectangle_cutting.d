// Vicfred
// https://atcoder.jp/contests/abc130/tasks/abc130_c
// math
import std.stdio;

void main() {
    double w, h, x, y;
    readf("%s %s %s %s\n", &w, &h, &x, &y);
    writef("%.12s ", w*h/2.0);
    if(x + x == w && y + y == h)
        writefln("1");
    else
        writefln("0");
}

