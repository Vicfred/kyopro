// Vicfred
// https://atcoder.jp/contests/abc159/tasks/abc159_a
// math
import std.stdio;

int gauss(int n) {
    return n*(n-1)/2;
}

void main() {
    int n, m;
    readf("%s %s\n", &n, &m);

    int ans = gauss(n) + gauss(m);

    ans.writeln;
}

