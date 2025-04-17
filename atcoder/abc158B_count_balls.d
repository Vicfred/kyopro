// vicfred
// https://atcoder.jp/contests/abc158/tasks/abc158_b
// math
import std.algorithm;
import std.stdio;

void main() {
    long n, a, b;
    readf("%s %s %s", &n, &a, &b);

    long ans = n/(a+b)*a;
    ans += min(a, n%(a+b));
    ans.writeln;
}
