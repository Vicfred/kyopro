// vicfred
// https://codeforces.com/contest/1426/problem/C
// greedy
import std.algorithm;
import std.stdio;

void main() {
    long t;
    readf("%s\n", &t);

    long n;
    while(t--) {
        readf("%s\n", &n);
        long minima = long.max;
        for(long i = 1L; i * i <= n; ++i) {
            minima = min(minima, i + (n - i - 1L)/i);
        }
        minima.writeln;
    }
}

