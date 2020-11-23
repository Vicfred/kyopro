// Vicfred
// https://atcoder.jp/contests/abc184/tasks/abc184_a
// implementation
import std.stdio;

void main() {
    int a, b, c, d;
    readf("%s %s\n%s %s\n", &a, &b, &c, &d);

    int ans = a*d - b*c;
    ans.writeln;
}

