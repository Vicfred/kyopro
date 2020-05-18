// Vicfred
// https://atcoder.jp/contests/abc167/tasks/abc167_c
// bitmasks
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    int n, m, x;
    readf("%s %s %s\n", &n, &m, &x);

    int[] c = new int[n];
    int[][] A = new int[][](n,m);

    for(int i = 0; i < n; ++i) {
        int[] line = readln.split.map!(to!int).array;
        c[i] = line[0];
        A[i] = line[1..$];
    }

    int minima = int.max;

    for(int mask = 0; mask <= (1<<n)-1; mask++) {
        int total = 0;
        int[] level = new int[m];

        for(int bit = 0; bit < n; bit++) {
            if(mask&(1<<bit)) {
                total += c[bit];
                for(int i = 0; i < m; i++) {
                    level[i] += A[bit][i];
                }
            }
        }

        auto gtx = (int a) => a >= x;

        if(all!gtx(level))
            minima = min(minima, total);
    }

    if(minima == int.max)
        minima = -1;

    minima.writeln;
}

