// vicfred
// https://atcoder.jp/contests/abc186/tasks/abc186_d
// math
import std.algorithm;
import std.conv;
import std.stdio;
import std.string;

void main() {
    long n;
    readf("%s\n", &n);

    long[] a = new long[n + 1];
    a[0] = long.min;

    long[] cum = new long[n + 1];

    for(int i = 1; i <= n; ++i) {
        readf("%s ", &a[i]);
    }

    a.sort;

    for(int i = 1; i <= n; ++i) {
        cum[i] = a[i] + cum[i - 1];
    }

    long ans = 0L;
    for(long i = 1L; i <= n; ++i) {
        ans += cum[n] - cum[i] - (n - i) * a[i];
    }

    ans.writeln;
}

