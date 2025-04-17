// vicfred
// https://atcoder.jp/contests/abc175/tasks/abc175_d
// math
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    long N, K;
    readf("%s %s", &N, &K);
    readln;

    long[] P = readln.split.map!(to!long).array;
    long[] C = readln.split.map!(to!long).array;

    for(int i = 0; i < N; i++)
        P[i] -= 1;

    long ans = long.min;

    for(long i = 0; i < N; i++) {
        long p = i;

        long sum = 0;
        long cycles = 0;

        while(true) {
            cycles += 1;
            sum += C[p];
            p = P[p];
            if(p == i) break;
        }

        long count = 0;
        long path = 0;
        while(true) {
            count += 1;
            path += C[p];

            if(count > K) break;
            long num = (K - count)/cycles;
            long score = path + max(0, sum)*num;
            ans = max(ans, score);

            p = P[p];
            if(p == i) break;
        }
    }

    ans.writeln;
}

