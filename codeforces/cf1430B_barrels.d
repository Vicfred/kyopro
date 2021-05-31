// Vicfred
// https://codeforces.com/contest/1430/problem/B
// greedy
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    int t = readln.chomp.to!int;

    while(t--) {
        int n, k;
        readf("%s %s\n", &n, &k);

        long[] a = readln.split.map!(to!long).array;

        a.sort;
        a.reverse;

        long ans = 0L;
        for(int i = 0; i <= k; ++i)
            ans += a[i];

        ans.writeln;
    }
}
