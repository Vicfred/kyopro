// vicfred
// https://atcoder.jp/contests/abc052/tasks/abc052_a
// math
import std.stdio;

void main() {
    long a, b, c, d;

    readf("%s %s %s %s", &a, &b, &c, &d);

    if(a*b > c*d) {
        writefln("%s", a*b);
    } else {
        writefln("%s", c*d);
    }
}

