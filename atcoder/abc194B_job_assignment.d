// vicfred
// https://atcoder.jp/contests/abc194/tasks/abc194_b
// brute force
import std.algorithm;
import std.stdio;

void main() {
    int N;
    readf("%s\n", &N);

    int[] A = new int[N];
    int[] B = new int[N];

    for(int i = 0; i < N; ++i) {
        readf("%s %s\n", &A[i], &B[i]);
    }

    long minima = long.max;
    for(int i = 0; i < N; ++i) {
        for(int j = 0; j < N; ++j) {
            long time;
            if(i == j)
                time = A[i] + B[j];
            else
                time = max(A[i], B[j]);
            minima = min(minima, time);
        }
    }
    minima.writeln;
}
