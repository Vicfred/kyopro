// vicfred
// https://atcoder.jp/contests/abc130/tasks/abc130_d
// two pointers, sliding window
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    long n, k;
    readf("%d %d", &n, &k);
    readln;
    long[] as = readln.split.map!(to!long).array;

    long ans = 0;
    long cum = 0;

    int r = 0;
    for(int l = 0; l < n; l++) {
        while(cum < k) {
            if(r == n) break;
            cum += as[r++];
        }
        if(cum < k) break;
        ans += n - r + 1;
        cum -= as[l];
    }

    ans.writeln;
}

