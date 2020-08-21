// Vicfred
// https://codeforces.com/contest/1395/problem/C
// bit manipulation
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    int n, m;
    readf("%s %s", &n, &m);
    readln;

    int[] a = readln.split.map!(to!int).array;
    int[] b = readln.split.map!(to!int).array;

    int ans = 0;
    for(int i = 0; i < n; i++) {
        int maxima = 0;
        for(int j = 0; j < n; j++) {
            int inf = int.max;
            for(int k = 0; k < m; k++) {
                inf = min(inf, a[j] & b[k] & (~ans));
            }
            maxima = max(maxima, inf);
        }
        ans |= maxima;
    }

    ans.writeln;
}

