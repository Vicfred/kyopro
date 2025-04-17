// vicfred
// https://atcoder.jp/contests/abc178/tasks/abc178_e
// math
import std.algorithm;
import std.stdio;

void main() {
    long n;
    readf("%s\n", &n);
    long[] x = new long[n];
    long[] y = new long[n];

    foreach(i; 0..n)
        readf("%s %s\n", &x[i], &y[i]);

    long[] plus = new long[n];
    long[] minus = new long[n];

    foreach(i; 0..n) {
        plus[i] = x[i] + y[i];
        minus[i] = x[i] - y[i];
    }

    plus.sort;
    minus.sort;

    long ans = max(plus[$-1] - plus[0],
                   minus[$-1] - minus[0]);

    ans.writeln;
}

