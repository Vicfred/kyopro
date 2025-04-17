// vicfred
// https://atcoder.jp/contests/abc148/tasks/abc148_c
// math
import std.stdio;

long gcd(long a, long b) {
    if(b == 0)
        return a;
    return gcd(b, a%b);
}

void main() {
    long a, b;
    readf("%s %s", &a, &b);
    readln;
    writefln("%d", a*b/gcd(a,b));
}

