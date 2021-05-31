// Vicfred
// https://atcoder.jp/contests/abc189/tasks/abc189_b
// math, simulation
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    long N, X;
    readf("%s %s\n", &N, &X);

    X *= 100;

    long[] V = new long[N + 1];
    long[] P = new long[N + 1];

    for(int i = 1; i <= N; ++i) {
        readf("%s %s\n", &V[i], &P[i]);
    }

    long cum = 0L;

    for(int i = 1; i <= N; ++i) {
        cum += V[i] * P[i];
        if(cum > X) {
            i.writeln;
            return;
        }
    }

    "-1".writeln;
}

