// Vicfred
// https://atcoder.jp/contests/abc193/tasks/abc193_b
// data structures, sorting, greedy
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    int N = readln.chomp.to!int;
    long minima = long.max;
    for(int i = 0; i < N; ++i) {
        long A, P, X;
        readf("%s %s %s\n", &A, &P, &X);
        if(X - A > 0) {
            minima = min(minima, P);
        }
    }
    if(minima == long.max) {
        minima = -1;
    }
    minima.writeln;
}

