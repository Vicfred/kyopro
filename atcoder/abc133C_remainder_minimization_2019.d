// Vicfred
// https://atcoder.jp/contests/abc133/tasks/abc133_c
// math
import std.algorithm;
import std.stdio;

void main() {
    long l, r;
    readf("%d %d\n", &l, &r);

    if(r - l >= 2018) {
        0.writeln;
        return;
    }

    long minima = int.max;
    for(long i = l; i < r; i++) {
        for(long j = i + 1; j <= r; j++) {
            minima = min(minima, i*j % 2019);
        }
    }

    minima.writeln;
}

