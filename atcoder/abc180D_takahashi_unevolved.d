// vicfred
// https://atcoder.jp/contests/abc180/tasks/abc180_d
// greedy
import std.stdio;

void main() {
    long x, y, a, b;
    readf("%s %s %s %s\n", &x, &y, &a, &b);

    long ans = 0L;
    while(x < y/a && x < (x + b)/a) {
        x *= a;
        ans += 1L;
    }

    (ans + (y - x - 1L)/b).writeln;
}

