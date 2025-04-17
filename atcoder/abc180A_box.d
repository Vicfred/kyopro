// vicfred
// https://atcoder.jp/contests/abc180/tasks/abc180_a
// implementation
import std.stdio;

void main() {
    int n, a, b;
    readf("%s %s %s\n", &n, &a, &b);

    n -= a;

    if(n < 0)
        n = 0;

    n += b;

    n.writeln;
}

