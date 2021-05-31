// Vicfred
// https://atcoder.jp/contests/abc182/tasks/abc182_a
// math
import std.stdio;

void main() {
    int a, b;
    readf("%s %s\n", &a, &b);

    int total = 2*a+100;
    int ans = total - b;

    ans.writeln;
}

