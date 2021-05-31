// Vicfred
// https://atcoder.jp/contests/abc181/tasks/abc181_b
// math, brute force
import std.stdio;

long gauss(long n) {
    return n*(n + 1L)/2L;
}

void main() {
    long n;
    readf("%s\n", &n);

    long a, b;
    long sum = 0L;
    foreach(_; 0..n) {
        readf("%s %s\n", &a, &b);
        sum += gauss(b) - gauss(a - 1);
    }
    sum.writeln;
}

