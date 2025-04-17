// vicfred
// https://atcoder.jp/contests/abc183/tasks/abc183_c
// permutations, brute force
import std.algorithm;
import std.array;
import std.conv;
import std.range;
import std.stdio;
import std.string;

void main() {
    long N, K;
    readf("%s %s\n", &N, &K);

    long[][] T;
    long[] dummy = new long[N+1];
    T ~= dummy;

    for(int i = 0; i < N; i++) {
        auto line = 0~readln.split.map!(to!long).array;
        T ~= line;
    }

    long[] path;
    foreach(x; iota(1, N + 1))
        path ~= x;

    long ans = 0;

    do {
        if(path[0] != 1) break;

        long cost = 0;

        for(int i = 0; i < N - 1; i++) {
            cost += T[path[i]][path[i+1]];
        }

        cost += T[path[N-1]][1];

        if(cost == K)
            ans += 1;
    } while(nextPermutation(path));

    ans.writeln;
}

