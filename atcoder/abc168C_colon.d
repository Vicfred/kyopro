// vicfred
// https://atcoder.jp/contests/abc168/tasks/abc168_c
// math
import std.stdio;
import std.math;

void main() {
    real a, b, h, m;
    readf("%s %s %s %s", &a, &b, &h, &m);

    real x = PI/6;
    real y = PI/30;
    real z = x/60;

    real rad = abs(x*h + z*m - y*m);

    real c = sqrt(a*a+b*b-2.0*a*b*cos(rad));

    writefln("%.23f", c);
}

