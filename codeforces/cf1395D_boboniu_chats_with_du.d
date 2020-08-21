// Vicfred
// https://codeforces.com/contest/1395/problem/D
// 
import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    long n, d, m;
    readf("%s %s %s", &n, &d, &m);
    readln;

    long[] a = readln.split.map!(to!long).array;

    a.sort;
    a.writeln;

    long ans = long.min;
    while(a.nextPermutation) {
        //a.writeln;
        int idx = 0;
        long fun = 0;
        while(idx < n) {
            fun += a[idx];
            if(a[idx] > m)
                idx += d;
            idx += 1;
        }
        ans = max(ans, fun);
    }

    ans.writeln;
}

