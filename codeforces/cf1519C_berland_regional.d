// Vicfred
// https://codeforces.com/contest/1519/problem/C
// data structures, sorting
import std.algorithm;
import std.array;
import std.container;
import std.conv;
import std.stdio;
import std.string;

void main() {
    int t = readln.chomp.to!int;

while(t--) {
    int n = readln.chomp.to!int;
    long[] u = readln.split.map!(to!long).array;
    long[] s = readln.split.map!(to!long).array;

    long[][] universities = new long[][](n);

    for(int i = 0; i < n; ++i) {
        u[i] -= 1;
    }

    for(int i = 0; i < n; ++i) {
        universities[cast(uint)u[i]] ~= s[i];
    }

    for(int i = 0; i < n; ++i) {
        universities[i].sort;
        universities[i].reverse;
    }

    long[][] cumulative = new long[][](n + 1,1);

    for(int i = 0; i < n; i++) {
        foreach(x; universities[i]) {
            cumulative[i] ~= (cumulative[i][$- 1] + x);
        }
    }

    long[] ans = new long[n];
    for(int i = 0; i < n; ++i) {
        for(int k = 1; k <= universities[i].length; k++) {
            ans[k - 1] += cumulative[i][universities[i].length/k*k];
        }
    }
    for(int i = 0; i < n; ++i)
        writef("%s ", ans[i]);
    "".writeln;
}
}
