// vicfred
// https://atcoder.jp/contests/abc185/tasks/abc185_a
// implementation
import std.algorithm;
import std.stdio;

void main() {
    int a, b, c, d;
    readf("%s %s %s %s\n", &a, &b, &c, &d);

    int ans = min(min(a,b),min(c,d));

    ans.writeln;
}

