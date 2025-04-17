// vicfred
// https://atcoder.jp/contests/abc046/tasks/abc046_b
// math
import std.stdio;

void main() {
    long n, k;
    readf("%s %s\n", &n, &k);

    writefln("%s", k*(k-1)^^(n-1));
}

