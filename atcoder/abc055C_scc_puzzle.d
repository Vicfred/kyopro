// vicfred
// https://atcoder.jp/contests/abc055/tasks/arc069_a
// math
import std.algorithm;
import std.stdio;

void main() {
    long n, m;
    readf("%s %s\n", &n, &m);

    if(m < 2*n) {
        min(n, m/2).writeln;
        return;
    }

    ((2*n + m)/4).writeln;
}

